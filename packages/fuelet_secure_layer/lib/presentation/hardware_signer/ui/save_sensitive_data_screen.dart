part of 'package:fuelet_secure_layer/di/public/public_register.dart';

class SaveSensitiveDataScreen extends StatefulWidget {
  final AccountAddress accountAddress;
  final bool isBackedUp;
  final L10nSaveSensitiveDataScreen l10n;
  final VoidCallback onCopySuccess;
  final Widget cloudIconWidget;
  final Widget crossedCloudIconWidget;
  final VoidCallback onBackupPressed;
  final Widget checkIconWidget;
  final VoidCallback onContinuePressed;

  const SaveSensitiveDataScreen({
    super.key,
    required this.accountAddress,
    required this.isBackedUp,
    required this.l10n,
    required this.onCopySuccess,
    required this.cloudIconWidget,
    required this.crossedCloudIconWidget,
    required this.onBackupPressed,
    required this.checkIconWidget,
    required this.onContinuePressed,
  });

  @override
  State<SaveSensitiveDataScreen> createState() =>
      _SaveSensitiveDataScreenState();
}

class _SaveSensitiveDataScreenState extends State<SaveSensitiveDataScreen> {
  bool isAgree = false;

  @override
  Widget build(BuildContext context) {
    final theme = NFTTheme.of(context);

    final privateDataRepository =
        _privateSecureLayerLocator<IAccountsPrivateDataRepository>();

    final privateData =
        privateDataRepository.data[widget.accountAddress.bech32Address];

    final seedPhrase = privateData?.seedPhrase;
    final privateKey = privateData?.privateKey;
    SensitiveDataType dataType = SensitiveDataType.privateKey;
    if (seedPhrase != null) {
      dataType = SensitiveDataType.seedPhrase;
    }
    final data = seedPhrase ?? privateKey;
    final isPrivateKey = dataType == SensitiveDataType.privateKey;

    return FLTScaffold(
      backgroundColor: theme.colorScheme.backgroundColor,
      appBar: FLTAppBar(
        title: Text(
          isPrivateKey
              ? widget.l10n.exportPrivateKey
              : widget.l10n.showSeedPhrase,
          style: TextStyle(
            color: theme.colorScheme.mainTextColor,
          ),
        ),
      ),
      body: data == null
          ? const SizedBox.shrink()
          : Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: SensitiveDataWidget(
                      overlayText: isPrivateKey
                          ? '${widget.l10n.tapToRevealYour}\n ${widget.l10n.privateKey}'
                          : '${widget.l10n.tapToRevealYour}\n ${widget.l10n.secretPhrase}',
                      child: isPrivateKey
                          ? Container(
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: theme.colorScheme.backgroundColorAccent,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                data,
                                style: NFTTypography.body2SemiBold.copyWith(
                                  color: theme.colorScheme.mainTextColor,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            )
                          : SeedPhraseWidget(
                              phrase: data.split(' '),
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
                          data,
                          onSuccess: widget.onCopySuccess,
                        );
                      },
                      hasInfiniteWidth: false,
                      size: ButtonSize.small,
                      text: widget.l10n.copy,
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: widget.onBackupPressed,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: widget.isBackedUp
                            ? FLTColors.blue.withOpacity(0.1)
                            : theme.colorScheme.backgroundColorAccent,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          widget.isBackedUp
                              ? widget.cloudIconWidget
                              : widget.crossedCloudIconWidget,
                          const SizedBox(width: 6),
                          Text(
                            widget.isBackedUp
                                ? widget.l10n.cloudBackup
                                : widget.l10n.backupNow,
                            style: NFTTypography.body2SemiBold.copyWith(
                              color: widget.isBackedUp
                                  ? FLTColors.blue
                                  : FLTColors.grey6D,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  CheckTile(
                    text: widget.l10n.recoveryPhraseAgreement,
                    textStyle: NFTTypography.body1w500.copyWith(
                      color: theme.colorScheme.minorTextColor,
                    ),
                    onTap: () {
                      setState(() {
                        isAgree = !isAgree;
                      });
                    },
                    value: isAgree,
                    checkIconWidget: widget.checkIconWidget,
                  ),
                  const SizedBox(height: 16),
                  FLTMonocoloredPrimaryButton(
                    text: widget.l10n.continue_,
                    enabled: widget.isBackedUp || isAgree,
                    size: ButtonSize.large,
                    onPressed: widget.onContinuePressed,
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ),
    );
  }
}
