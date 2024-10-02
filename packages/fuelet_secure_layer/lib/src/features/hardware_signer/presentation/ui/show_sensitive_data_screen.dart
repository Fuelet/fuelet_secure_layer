part of 'package:fuelet_secure_layer/src/di/public/public_register.dart';

class ShowSensitiveDataScreen extends StatefulWidget {
  final SensitiveDataType dataType;
  final AccountAddress? accountAddress;
  final L10nShowSensitiveDataScreen l10n;
  final VoidCallback onSuccessPressed;
  final Function(bool isSensitiveDataShown)? sensitiveDataShownCallBack;
  final Widget backupWidget;

  const ShowSensitiveDataScreen({
    super.key,
    this.accountAddress,
    required this.dataType,
    required this.l10n,
    required this.onSuccessPressed,
    required this.backupWidget,
    this.sensitiveDataShownCallBack,
  });

  @override
  State<ShowSensitiveDataScreen> createState() =>
      _ShowSensitiveDataScreenState();
}

class _ShowSensitiveDataScreenState extends State<ShowSensitiveDataScreen> {
  late final Future<AccountPrivateData?> _privateData;

  @override
  void initState() {
    super.initState();

    final selectedAccount =
        secureLayerLocator<IAccountsLocalRepository>().selectedAccount;

    final address = widget.accountAddress?.bech32Address ?? selectedAccount;

    if (address == null) {
      _privateData = Future.value(
          AccountPrivateData(privateKey: 'n/a', seedPhrase: 'n/a'));
      return;
    }

    _privateData = _privateSecureLayerLocator<IAccountsPrivateDataRepository>()
        .getAccountPrivateData(address);
  }

  @override
  Widget build(BuildContext context) {
    final theme = NFTTheme.of(context);

    return FutureBuilder(
        future: _privateData,
        builder: (context, snapshot) {
          final data = snapshot.data;
          final seedPhrase = data?.seedPhrase;
          final privateKey = data?.privateKey;

          final isPrivateKey = widget.dataType == SensitiveDataType.privateKey;

          return FLTScaffold(
            backgroundColor: theme.colorScheme.backgroundColor,
            addSafeArea: true,
            body: data == null
                ? Center(
                    child: CircularProgressIndicator(
                      color: NFTTheme.of(context)
                          .colorScheme
                          .progressIndicatorColor,
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.only(left: 16, top: 8, right: 16),
                    child: Column(
                      children: [
                        BackNavigation(
                          title: isPrivateKey
                              ? widget.l10n.exportPrivateKey
                              : widget.l10n.showSeedPhrase,
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: SensitiveDataWidget(
                            sensitiveDataShownCallBack:
                                widget.sensitiveDataShownCallBack,
                            overlayText: isPrivateKey
                                ? '${widget.l10n.tapToRevealYour}\n ${widget.l10n.privateKey}'
                                : '${widget.l10n.tapToRevealYour}\n ${widget.l10n.secretPhrase}',
                            child: isPrivateKey
                                ? Container(
                                    padding: const EdgeInsets.all(16),
                                    decoration: BoxDecoration(
                                      color: theme
                                          .colorScheme.backgroundColorAccent,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Text(
                                      privateKey!,
                                      style:
                                          NFTTypography.body2SemiBold.copyWith(
                                        color: theme.colorScheme.mainTextColor,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  )
                                : SeedPhraseWidget(
                                    phrase: seedPhrase!.split(' '),
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
                                isPrivateKey ? privateKey! : seedPhrase!,
                                onSuccess: widget.onSuccessPressed,
                              );
                            },
                            hasInfiniteWidth: false,
                            size: ButtonSize.small,
                            text: widget.l10n.copy,
                          ),
                        ),
                        const Spacer(),
                        if (widget.accountAddress != null && !kIsWeb)
                          widget.backupWidget,
                        const SizedBox(height: 35),
                        Text(
                          isPrivateKey
                              ? '${widget.l10n.doNotShareYour} ${widget.l10n.privateKey}!'
                              : '${widget.l10n.doNotShareYour} ${widget.l10n.secretPhrase}!',
                          style: NFTTypography.body1w500
                              .copyWith(color: FLTColors.malina),
                        ),
                        const SizedBox(height: 65),
                      ],
                    ),
                  ),
          );
        });
  }
}
