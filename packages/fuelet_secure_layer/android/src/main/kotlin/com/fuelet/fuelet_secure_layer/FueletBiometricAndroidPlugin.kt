package com.fuelet.fuelet_secure_layer

import android.content.Context
import android.security.keystore.KeyGenParameterSpec
import android.security.keystore.KeyProperties
import androidx.annotation.NonNull
import androidx.biometric.BiometricPrompt
import androidx.core.content.ContextCompat
import androidx.fragment.app.FragmentActivity
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.PluginRegistry.Registrar
import java.security.KeyStore
import java.util.concurrent.Executor
import javax.crypto.Cipher
import javax.crypto.KeyGenerator
import javax.crypto.SecretKey
import javax.crypto.spec.GCMParameterSpec

class FueletBiometricAndroidPlugin : FlutterPlugin, MethodChannel.MethodCallHandler, ActivityAware {
    private lateinit var channel: MethodChannel
    private lateinit var context: Context
    private var activity: FragmentActivity? = null
    private lateinit var executor: Executor

    companion object {
        @JvmStatic
        fun registerWith(registrar: Registrar) {
            val plugin = FueletBiometricAndroidPlugin()
            plugin.context = registrar.context()
            plugin.executor = ContextCompat.getMainExecutor(registrar.context())
            plugin.channel = MethodChannel(registrar.messenger(), "biometric_keystore")
            plugin.channel.setMethodCallHandler(plugin)
        }
    }

    override fun onAttachedToEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
        context = binding.applicationContext
        channel = MethodChannel(binding.binaryMessenger, "biometric_keystore")
        channel.setMethodCallHandler(this)
        executor = ContextCompat.getMainExecutor(context)
    }

    override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
        channel.setMethodCallHandler(null)
    }

    override fun onAttachedToActivity(binding: ActivityPluginBinding) {
        activity = binding.activity as? FragmentActivity
    }

    override fun onDetachedFromActivity() {
        activity = null
    }

    override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
        activity = binding.activity as? FragmentActivity
    }

    override fun onDetachedFromActivityForConfigChanges() {
        activity = null
    }

    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
        val key = call.argument<String>("key") ?: return result.error("MISSING_KEY", null, null)

        when (call.method) {
            "encrypt" -> {
                val value = call.argument<String>("value") ?: return result.error("MISSING_VALUE", null, null)
                createKeyIfNeeded(key)
                encryptWithBiometry(key, value, result)
            }
            "decrypt" -> {
                val encryptedBase64 = call.argument<String>("encrypted") ?: return result.error("MISSING_DATA", null, null)
                val encrypted = encryptedBase64.decodeBase64()
                decryptWithBiometry(key, encrypted, result)
            }
            "exists" -> {
                result.success(hasKey(key))
            }
            "delete" -> {
                try {
                    deleteKey(key)
                    result.success(null)
                } catch (e: Exception) {
                    result.error("DELETE_EXCEPTION", e.toString(), null)
                }
            }
            else -> result.notImplemented()
        }
    }

    private fun createKeyIfNeeded(keyAlias: String) {
        val keyStore = KeyStore.getInstance("AndroidKeyStore").apply { load(null) }
        if (keyStore.containsAlias(keyAlias)) return

        val keyGen = KeyGenerator.getInstance(KeyProperties.KEY_ALGORITHM_AES, "AndroidKeyStore")
        val spec = KeyGenParameterSpec.Builder(
            keyAlias,
            KeyProperties.PURPOSE_ENCRYPT or KeyProperties.PURPOSE_DECRYPT
        )
            .setBlockModes(KeyProperties.BLOCK_MODE_GCM)
            .setEncryptionPaddings(KeyProperties.ENCRYPTION_PADDING_NONE)
            .setUserAuthenticationRequired(true)
            .setUserAuthenticationParameters(0, KeyProperties.AUTH_BIOMETRIC_STRONG)
            .setInvalidatedByBiometricEnrollment(false)
            .build()

        keyGen.init(spec)
        keyGen.generateKey()
    }

    private fun hasKey(keyAlias: String): Boolean {
        val keyStore = KeyStore.getInstance("AndroidKeyStore").apply { load(null) }
        return keyStore.containsAlias(keyAlias)
    }

    private fun deleteKey(keyAlias: String) {
        val keyStore = KeyStore.getInstance("AndroidKeyStore").apply { load(null) }
        if (keyStore.containsAlias(keyAlias)) {
            keyStore.deleteEntry(keyAlias)
        }
    }

    private fun encryptWithBiometry(keyAlias: String, plaintext: String, result: MethodChannel.Result) {
        val activity = activity ?: return result.error("NO_ACTIVITY", null, null)
        var resultHandled = false

        try {
            val cipher = Cipher.getInstance("AES/GCM/NoPadding")
            val keyStore = KeyStore.getInstance("AndroidKeyStore").apply { load(null) }
            val secretKey = keyStore.getKey(keyAlias, null) as SecretKey
            cipher.init(Cipher.ENCRYPT_MODE, secretKey)
            val iv = cipher.iv

            val prompt = BiometricPrompt(activity, executor, object : BiometricPrompt.AuthenticationCallback() {
                override fun onAuthenticationSucceeded(authResult: BiometricPrompt.AuthenticationResult) {
                    if (resultHandled) return
                    resultHandled = true

                    try {
                        val encrypted = authResult.cryptoObject?.cipher?.doFinal(plaintext.toByteArray(Charsets.UTF_8))
                        result.success((iv + encrypted!!).encodeBase64())
                    } catch (e: Exception) {
                        result.error("ENCRYPT_EXCEPTION", e.toString(), null)
                    }
                }

                override fun onAuthenticationError(errorCode: Int, errString: CharSequence) {
                    if (resultHandled) return
                    resultHandled = true
                    result.error(errorCode.toString(), errString.toString(), null)
                }
            })

            val info = BiometricPrompt.PromptInfo.Builder()
                .setTitle("Biometric Authentication")
                .setSubtitle("Authenticate to unlock")
                .setNegativeButtonText("Cancel")
                .build()

            prompt.authenticate(info, BiometricPrompt.CryptoObject(cipher))
        } catch (e: Exception) {
            result.error("CIPHER_INIT_FAILED", e.toString(), null)
        }
    }

    private fun decryptWithBiometry(keyAlias: String, encrypted: ByteArray, result: MethodChannel.Result) {
        val activity = activity ?: return result.error("NO_ACTIVITY", null, null)
        var resultHandled = false

        val iv = encrypted.copyOfRange(0, 12)
        val ciphertext = encrypted.copyOfRange(12, encrypted.size)

        try {
            val cipher = Cipher.getInstance("AES/GCM/NoPadding")
            val keyStore = KeyStore.getInstance("AndroidKeyStore").apply { load(null) }
            val secretKey = keyStore.getKey(keyAlias, null) as SecretKey
            cipher.init(Cipher.DECRYPT_MODE, secretKey, GCMParameterSpec(128, iv))

            val prompt = BiometricPrompt(activity, executor, object : BiometricPrompt.AuthenticationCallback() {
                override fun onAuthenticationSucceeded(authResult: BiometricPrompt.AuthenticationResult) {
                    if (resultHandled) return
                    resultHandled = true

                    try {
                        val decrypted = authResult.cryptoObject?.cipher?.doFinal(ciphertext)
                        result.success(decrypted?.toString(Charsets.UTF_8))
                    } catch (e: Exception) {
                        result.error("DECRYPT_EXCEPTION", e.toString(), null)
                    }
                }

                override fun onAuthenticationError(errorCode: Int, errString: CharSequence) {
                    if (resultHandled) return
                    resultHandled = true
                    result.error(errorCode.toString(), errString.toString(), null)
                }
            })

            val info = BiometricPrompt.PromptInfo.Builder()
                .setTitle("Biometric Authentication")
                .setSubtitle("Authenticate to unlock")
                .setNegativeButtonText("Cancel")
                .build()

            prompt.authenticate(info, BiometricPrompt.CryptoObject(cipher))
        } catch (e: Exception) {
            result.error("CIPHER_INIT_FAILED", e.toString(), null)
        }
    }

    private fun ByteArray.encodeBase64(): String =
        android.util.Base64.encodeToString(this, android.util.Base64.NO_WRAP)

    private fun String.decodeBase64(): ByteArray =
        android.util.Base64.decode(this, android.util.Base64.NO_WRAP)
}