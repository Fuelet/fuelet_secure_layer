// import 'package:flutter/material.dart';
// import 'package:fuelet_secure_layer/core/account/entity/address.dart';
// import 'package:uikit/uikit.dart';
//
// enum SensitiveDataType { privateKey, seedPhrase }
//
// class SaveSensitiveDataScreen extends StatefulWidget {
//   final AccountAddress accountAddress;
//
//   const SaveSensitiveDataScreen({
//     super.key,
//     required this.accountAddress,
//   });
//
//   @override
//   State<SaveSensitiveDataScreen> createState() =>
//       _SaveSensitiveDataScreenState();
// }
//
// class _SaveSensitiveDataScreenState extends State<SaveSensitiveDataScreen> {
//   bool isAgree = false;
//
//   @override
//   Widget build(BuildContext context) {
//     final theme = NFTTheme.of(context);
//
//     final account = context
//         .read<AccountsBloc>()
//         .state
//         .getAccountByAddress(widget.accountAddress.bech32Address);
//     final seedPhrase = account.seedPhrase;
//     final privateKey = account.privateKey;
//     SensitiveDataType dataType = SensitiveDataType.privateKey;
//     if (seedPhrase != null) {
//       dataType = SensitiveDataType.seedPhrase;
//     }
//     final data = seedPhrase ?? privateKey;
//     final isPrivateKey = dataType == SensitiveDataType.privateKey;
//     final address = account.fuelAddress;
//     final isBackedUp = context
//         .read<CloudBackupBloc>()
//         .state
//         .checkBackup(address.bech32Address);
//
//     return FLTScaffold(
//       backgroundColor: theme.colorScheme.backgroundColor,
//       appBar: FLTAppBar(
//         title: Text(
//           isPrivateKey
//               ? L10n.of(context).exportPrivateKey
//               : L10n.of(context).showSeedPhrase,
//           style: TextStyle(
//             color: theme.colorScheme.mainTextColor,
//           ),
//         ),
//       ),
//       body: data == null
//           ? const SizedBox.shrink()
//           : Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16),
//               child: Column(
//                 children: [
//                   Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     child: SensitiveDataWidget(
//                       overlayText: isPrivateKey
//                           ? '${L10n.of(context).tapToRevealYour}\n ${L10n.of(context).privateKey}'
//                           : '${L10n.of(context).tapToRevealYour}\n ${L10n.of(context).secretPhrase}',
//                       child: isPrivateKey
//                           ? Container(
//                               padding: const EdgeInsets.all(16),
//                               decoration: BoxDecoration(
//                                 color: theme.colorScheme.backgroundColorAccent,
//                                 borderRadius: BorderRadius.circular(8),
//                               ),
//                               child: Text(
//                                 data,
//                                 style: NFTTypography.body2SemiBold.copyWith(
//                                   color: theme.colorScheme.mainTextColor,
//                                 ),
//                                 textAlign: TextAlign.center,
//                               ),
//                             )
//                           : SeedPhraseWidget(
//                               phrase: data.split(' '),
//                             ),
//                     ),
//                   ),
//                   const SizedBox(height: 16),
//                   // TODO: fix size (width)
//                   SizedBox(
//                     width: 84,
//                     child: FLTMonocoloredSecondaryButton(
//                       onPressed: () {
//                         ClipboardManager.copyToBuffer(
//                           data,
//                           onSuccess: () => ToastManager.showToast(
//                             '${L10n.of(context).copied}!',
//                           ),
//                         );
//                       },
//                       hasInfiniteWidth: false,
//                       size: ButtonSize.small,
//                       text: L10n.of(context).copy,
//                     ),
//                   ),
//                   const Spacer(),
//                   GestureDetector(
//                     onTap: () => context.router
//                         .push(CloudBackupRoute(accountAddress: address)),
//                     child: Container(
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: 16,
//                         vertical: 10,
//                       ),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(20),
//                         color: isBackedUp
//                             ? FLTColors.blue.withOpacity(0.1)
//                             : theme.colorScheme.backgroundColorAccent,
//                       ),
//                       child: Row(
//                         mainAxisSize: MainAxisSize.min,
//                         children: [
//                           isBackedUp
//                               ? FLTSvgAsset(
//                                   Assets.icons.cloud,
//                                   color: FLTColors.blue,
//                                   width: 20,
//                                   height: 20,
//                                 )
//                               : FLTSvgAsset(
//                                   Assets.icons.crossedCloud,
//                                   color: FLTColors.grey6D,
//                                   width: 16,
//                                   height: 16,
//                                 ),
//                           const SizedBox(width: 6),
//                           Text(
//                             isBackedUp
//                                 ? L10n.of(context).cloudBackup
//                                 : L10n.of(context).backupNow,
//                             style: NFTTypography.body2SemiBold.copyWith(
//                               color: isBackedUp
//                                   ? FLTColors.blue
//                                   : FLTColors.grey6D,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 16),
//                   CheckTile(
//                     text: L10n.of(context).recoveryPhraseAgreement,
//                     textStyle: NFTTypography.body1w500.copyWith(
//                       color: theme.colorScheme.minorTextColor,
//                     ),
//                     onTap: () {
//                       setState(() {
//                         isAgree = !isAgree;
//                       });
//                     },
//                     value: isAgree,
//                   ),
//                   const SizedBox(height: 16),
//                   FLTMonocoloredPrimaryButton(
//                     text: L10n.of(context).continue_,
//                     enabled: isBackedUp || isAgree,
//                     size: ButtonSize.large,
//                     onPressed: () {
//                       context.router.push(
//                         HardwareSignerTransactionRoute(
//                           title: L10n.of(context).addHS,
//                           action: () {
//                             final existingAccounts =
//                                 context.read<AccountsBloc>().state.accounts;
//                             context
//                                 .read<CreateHardwareSignerBloc>()
//                                 .add(CreateHardwareSignerEvent.create(
//                                   existingAccounts,
//                                 ));
//                           },
//                           accountAddress: widget.accountAddress,
//                         ),
//                       );
//                     },
//                   ),
//                   const SizedBox(height: 50),
//                 ],
//               ),
//             ),
//     );
//   }
// }
