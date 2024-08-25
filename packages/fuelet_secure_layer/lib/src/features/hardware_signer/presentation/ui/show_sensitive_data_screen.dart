part of 'package:fuelet_secure_layer/src/di/public/public_register.dart';

class ShowSensitiveDataScreen extends StatelessWidget {
  final SensitiveDataType dataType;
  final AccountAddress? accountAddress;
  final L10nShowSensitiveDataScreen l10n;
  final VoidCallback onSuccessPressed;
  final Widget backupWidget;

  const ShowSensitiveDataScreen({
    super.key,
    this.accountAddress,
    required this.dataType,
    required this.l10n,
    required this.onSuccessPressed,
    required this.backupWidget,
  });

  @override
  Widget build(BuildContext context) {
    final theme = NFTTheme.of(context);

    final privateDataRepository =
        _privateSecureLayerLocator<IAccountsPrivateDataRepository>();

    final privateData =
        privateDataRepository.data[accountAddress?.bech32Address];

    final seedPhrase = privateData?.seedPhrase ?? 'n/a';
    final privateKey = privateData?.privateKey ?? 'n/a';

    final isPrivateKey = dataType == SensitiveDataType.privateKey;

    return FLTScaffold(
      backgroundColor: theme.colorScheme.backgroundColor,
      appBar: FLTAppBar(
        title: Text(
          isPrivateKey ? l10n.exportPrivateKey : l10n.showSeedPhrase,
          style: TextStyle(
            color: theme.colorScheme.mainTextColor,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: SensitiveDataWidget(
                overlayText: isPrivateKey
                    ? '${l10n.tapToRevealYour}\n ${l10n.privateKey}'
                    : '${l10n.tapToRevealYour}\n ${l10n.secretPhrase}',
                child: isPrivateKey
                    ? Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.backgroundColorAccent,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          privateKey,
                          style: NFTTypography.body2SemiBold.copyWith(
                            color: theme.colorScheme.mainTextColor,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      )
                    : SeedPhraseWidget(
                        phrase: seedPhrase.split(' '),
                      ),
              ),
            ),
            const SizedBox(height: 16),
            // TODO: fix size (width)
            SizedBox(
              width: 84,
              child: FLTMonocoloredSecondaryButton(
                onPressed: () {
                  ClipboardManager.copyToBuffer(
                    isPrivateKey ? privateKey : seedPhrase,
                    onSuccess: onSuccessPressed,
                  );
                },
                hasInfiniteWidth: false,
                size: ButtonSize.small,
                text: l10n.copy,
              ),
            ),
            const Spacer(),
            if (accountAddress != null && !kIsWeb) backupWidget,
            const SizedBox(height: 35),
            Text(
              isPrivateKey
                  ? '${l10n.doNotShareYour} ${l10n.privateKey}!'
                  : '${l10n.doNotShareYour} ${l10n.secretPhrase}!',
              style: NFTTypography.body1w500.copyWith(color: FLTColors.malina),
            ),
            const SizedBox(height: 65),
          ],
        ),
      ),
    );
  }
}
