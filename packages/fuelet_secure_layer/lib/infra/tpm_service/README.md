# TPMService

[What is TPM in Wiki](https://en.wikipedia.org/wiki/Trusted_Platform_Module)

### In our case, we use:

- IOS -> SecureEnclave
- Android -> No Implementation
- Web -> No Implementation

### Info:

- [isServiceAvailable](/lib/domain/tpm_service/tpm_service.dart) - used for determining
  availabilities service on current device
- [TPMException](/lib/domain/tpm_service/tpm_service_exceptions/tpm_service_exceptions.dart) -
  default error result
- All methods, which require tag in arguments,
  return [TPMException](/lib/domain/tpm_service/tpm_service_exceptions/tpm_service_exceptions.dart)
  if there is no generated key with that tag 