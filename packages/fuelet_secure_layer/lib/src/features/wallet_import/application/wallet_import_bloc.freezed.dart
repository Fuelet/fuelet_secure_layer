// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_import_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WalletImportEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String privateKey, List<Account> existingAccounts,
            bool creatingAfterSettingPasscode)
        importWalletByPrivateKey,
    required TResult Function(List<Account> accounts) readyToImport,
    required TResult Function(Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)
        loadMoreDerivative,
    required TResult Function(String seedPhrase, List<Account> existingAccounts)
        importWalletsFromSeed,
    required TResult Function(
            AccountAddress deriveFrom, List<Account> existingAccounts)
        deriveWalletsFromSameSeed,
    required TResult Function(List<String> values,
            List<Account> existingAccounts, bool creatingAfterSettingPasscode)
        importMultipleWallets,
    required TResult Function(String name, String address,
            WalletGroup walletGroup, List<Account> existingAccounts)
        watchWallet,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String privateKey, List<Account> existingAccounts,
            bool creatingAfterSettingPasscode)?
        importWalletByPrivateKey,
    TResult? Function(List<Account> accounts)? readyToImport,
    TResult? Function(Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        loadMoreDerivative,
    TResult? Function(String seedPhrase, List<Account> existingAccounts)?
        importWalletsFromSeed,
    TResult? Function(
            AccountAddress deriveFrom, List<Account> existingAccounts)?
        deriveWalletsFromSameSeed,
    TResult? Function(List<String> values, List<Account> existingAccounts,
            bool creatingAfterSettingPasscode)?
        importMultipleWallets,
    TResult? Function(String name, String address, WalletGroup walletGroup,
            List<Account> existingAccounts)?
        watchWallet,
    TResult? Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String privateKey, List<Account> existingAccounts,
            bool creatingAfterSettingPasscode)?
        importWalletByPrivateKey,
    TResult Function(List<Account> accounts)? readyToImport,
    TResult Function(Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        loadMoreDerivative,
    TResult Function(String seedPhrase, List<Account> existingAccounts)?
        importWalletsFromSeed,
    TResult Function(AccountAddress deriveFrom, List<Account> existingAccounts)?
        deriveWalletsFromSameSeed,
    TResult Function(List<String> values, List<Account> existingAccounts,
            bool creatingAfterSettingPasscode)?
        importMultipleWallets,
    TResult Function(String name, String address, WalletGroup walletGroup,
            List<Account> existingAccounts)?
        watchWallet,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ImportWallet value) importWalletByPrivateKey,
    required TResult Function(_SaveAccountsToImport value) readyToImport,
    required TResult Function(_LoadMoreDerivative value) loadMoreDerivative,
    required TResult Function(_ImportWalletsFromSeed value)
        importWalletsFromSeed,
    required TResult Function(_DeriveWalletsFromSameSeed value)
        deriveWalletsFromSameSeed,
    required TResult Function(_ImportMultipleWallets value)
        importMultipleWallets,
    required TResult Function(_WatchWallet value) watchWallet,
    required TResult Function(_Reset value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ImportWallet value)? importWalletByPrivateKey,
    TResult? Function(_SaveAccountsToImport value)? readyToImport,
    TResult? Function(_LoadMoreDerivative value)? loadMoreDerivative,
    TResult? Function(_ImportWalletsFromSeed value)? importWalletsFromSeed,
    TResult? Function(_DeriveWalletsFromSameSeed value)?
        deriveWalletsFromSameSeed,
    TResult? Function(_ImportMultipleWallets value)? importMultipleWallets,
    TResult? Function(_WatchWallet value)? watchWallet,
    TResult? Function(_Reset value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ImportWallet value)? importWalletByPrivateKey,
    TResult Function(_SaveAccountsToImport value)? readyToImport,
    TResult Function(_LoadMoreDerivative value)? loadMoreDerivative,
    TResult Function(_ImportWalletsFromSeed value)? importWalletsFromSeed,
    TResult Function(_DeriveWalletsFromSameSeed value)?
        deriveWalletsFromSameSeed,
    TResult Function(_ImportMultipleWallets value)? importMultipleWallets,
    TResult Function(_WatchWallet value)? watchWallet,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletImportEventCopyWith<$Res> {
  factory $WalletImportEventCopyWith(
          WalletImportEvent value, $Res Function(WalletImportEvent) then) =
      _$WalletImportEventCopyWithImpl<$Res, WalletImportEvent>;
}

/// @nodoc
class _$WalletImportEventCopyWithImpl<$Res, $Val extends WalletImportEvent>
    implements $WalletImportEventCopyWith<$Res> {
  _$WalletImportEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ImportWalletCopyWith<$Res> {
  factory _$$_ImportWalletCopyWith(
          _$_ImportWallet value, $Res Function(_$_ImportWallet) then) =
      __$$_ImportWalletCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String privateKey,
      List<Account> existingAccounts,
      bool creatingAfterSettingPasscode});
}

/// @nodoc
class __$$_ImportWalletCopyWithImpl<$Res>
    extends _$WalletImportEventCopyWithImpl<$Res, _$_ImportWallet>
    implements _$$_ImportWalletCopyWith<$Res> {
  __$$_ImportWalletCopyWithImpl(
      _$_ImportWallet _value, $Res Function(_$_ImportWallet) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privateKey = null,
    Object? existingAccounts = null,
    Object? creatingAfterSettingPasscode = null,
  }) {
    return _then(_$_ImportWallet(
      null == privateKey
          ? _value.privateKey
          : privateKey // ignore: cast_nullable_to_non_nullable
              as String,
      existingAccounts: null == existingAccounts
          ? _value._existingAccounts
          : existingAccounts // ignore: cast_nullable_to_non_nullable
              as List<Account>,
      creatingAfterSettingPasscode: null == creatingAfterSettingPasscode
          ? _value.creatingAfterSettingPasscode
          : creatingAfterSettingPasscode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ImportWallet implements _ImportWallet {
  const _$_ImportWallet(this.privateKey,
      {required final List<Account> existingAccounts,
      required this.creatingAfterSettingPasscode})
      : _existingAccounts = existingAccounts;

  @override
  final String privateKey;
  final List<Account> _existingAccounts;
  @override
  List<Account> get existingAccounts {
    if (_existingAccounts is EqualUnmodifiableListView)
      return _existingAccounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_existingAccounts);
  }

  @override
  final bool creatingAfterSettingPasscode;

  @override
  String toString() {
    return 'WalletImportEvent.importWalletByPrivateKey(privateKey: $privateKey, existingAccounts: $existingAccounts, creatingAfterSettingPasscode: $creatingAfterSettingPasscode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImportWallet &&
            (identical(other.privateKey, privateKey) ||
                other.privateKey == privateKey) &&
            const DeepCollectionEquality()
                .equals(other._existingAccounts, _existingAccounts) &&
            (identical(other.creatingAfterSettingPasscode,
                    creatingAfterSettingPasscode) ||
                other.creatingAfterSettingPasscode ==
                    creatingAfterSettingPasscode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      privateKey,
      const DeepCollectionEquality().hash(_existingAccounts),
      creatingAfterSettingPasscode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImportWalletCopyWith<_$_ImportWallet> get copyWith =>
      __$$_ImportWalletCopyWithImpl<_$_ImportWallet>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String privateKey, List<Account> existingAccounts,
            bool creatingAfterSettingPasscode)
        importWalletByPrivateKey,
    required TResult Function(List<Account> accounts) readyToImport,
    required TResult Function(Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)
        loadMoreDerivative,
    required TResult Function(String seedPhrase, List<Account> existingAccounts)
        importWalletsFromSeed,
    required TResult Function(
            AccountAddress deriveFrom, List<Account> existingAccounts)
        deriveWalletsFromSameSeed,
    required TResult Function(List<String> values,
            List<Account> existingAccounts, bool creatingAfterSettingPasscode)
        importMultipleWallets,
    required TResult Function(String name, String address,
            WalletGroup walletGroup, List<Account> existingAccounts)
        watchWallet,
    required TResult Function() reset,
  }) {
    return importWalletByPrivateKey(
        privateKey, existingAccounts, creatingAfterSettingPasscode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String privateKey, List<Account> existingAccounts,
            bool creatingAfterSettingPasscode)?
        importWalletByPrivateKey,
    TResult? Function(List<Account> accounts)? readyToImport,
    TResult? Function(Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        loadMoreDerivative,
    TResult? Function(String seedPhrase, List<Account> existingAccounts)?
        importWalletsFromSeed,
    TResult? Function(
            AccountAddress deriveFrom, List<Account> existingAccounts)?
        deriveWalletsFromSameSeed,
    TResult? Function(List<String> values, List<Account> existingAccounts,
            bool creatingAfterSettingPasscode)?
        importMultipleWallets,
    TResult? Function(String name, String address, WalletGroup walletGroup,
            List<Account> existingAccounts)?
        watchWallet,
    TResult? Function()? reset,
  }) {
    return importWalletByPrivateKey?.call(
        privateKey, existingAccounts, creatingAfterSettingPasscode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String privateKey, List<Account> existingAccounts,
            bool creatingAfterSettingPasscode)?
        importWalletByPrivateKey,
    TResult Function(List<Account> accounts)? readyToImport,
    TResult Function(Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        loadMoreDerivative,
    TResult Function(String seedPhrase, List<Account> existingAccounts)?
        importWalletsFromSeed,
    TResult Function(AccountAddress deriveFrom, List<Account> existingAccounts)?
        deriveWalletsFromSameSeed,
    TResult Function(List<String> values, List<Account> existingAccounts,
            bool creatingAfterSettingPasscode)?
        importMultipleWallets,
    TResult Function(String name, String address, WalletGroup walletGroup,
            List<Account> existingAccounts)?
        watchWallet,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (importWalletByPrivateKey != null) {
      return importWalletByPrivateKey(
          privateKey, existingAccounts, creatingAfterSettingPasscode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ImportWallet value) importWalletByPrivateKey,
    required TResult Function(_SaveAccountsToImport value) readyToImport,
    required TResult Function(_LoadMoreDerivative value) loadMoreDerivative,
    required TResult Function(_ImportWalletsFromSeed value)
        importWalletsFromSeed,
    required TResult Function(_DeriveWalletsFromSameSeed value)
        deriveWalletsFromSameSeed,
    required TResult Function(_ImportMultipleWallets value)
        importMultipleWallets,
    required TResult Function(_WatchWallet value) watchWallet,
    required TResult Function(_Reset value) reset,
  }) {
    return importWalletByPrivateKey(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ImportWallet value)? importWalletByPrivateKey,
    TResult? Function(_SaveAccountsToImport value)? readyToImport,
    TResult? Function(_LoadMoreDerivative value)? loadMoreDerivative,
    TResult? Function(_ImportWalletsFromSeed value)? importWalletsFromSeed,
    TResult? Function(_DeriveWalletsFromSameSeed value)?
        deriveWalletsFromSameSeed,
    TResult? Function(_ImportMultipleWallets value)? importMultipleWallets,
    TResult? Function(_WatchWallet value)? watchWallet,
    TResult? Function(_Reset value)? reset,
  }) {
    return importWalletByPrivateKey?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ImportWallet value)? importWalletByPrivateKey,
    TResult Function(_SaveAccountsToImport value)? readyToImport,
    TResult Function(_LoadMoreDerivative value)? loadMoreDerivative,
    TResult Function(_ImportWalletsFromSeed value)? importWalletsFromSeed,
    TResult Function(_DeriveWalletsFromSameSeed value)?
        deriveWalletsFromSameSeed,
    TResult Function(_ImportMultipleWallets value)? importMultipleWallets,
    TResult Function(_WatchWallet value)? watchWallet,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (importWalletByPrivateKey != null) {
      return importWalletByPrivateKey(this);
    }
    return orElse();
  }
}

abstract class _ImportWallet implements WalletImportEvent {
  const factory _ImportWallet(final String privateKey,
      {required final List<Account> existingAccounts,
      required final bool creatingAfterSettingPasscode}) = _$_ImportWallet;

  String get privateKey;
  List<Account> get existingAccounts;
  bool get creatingAfterSettingPasscode;
  @JsonKey(ignore: true)
  _$$_ImportWalletCopyWith<_$_ImportWallet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SaveAccountsToImportCopyWith<$Res> {
  factory _$$_SaveAccountsToImportCopyWith(_$_SaveAccountsToImport value,
          $Res Function(_$_SaveAccountsToImport) then) =
      __$$_SaveAccountsToImportCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Account> accounts});
}

/// @nodoc
class __$$_SaveAccountsToImportCopyWithImpl<$Res>
    extends _$WalletImportEventCopyWithImpl<$Res, _$_SaveAccountsToImport>
    implements _$$_SaveAccountsToImportCopyWith<$Res> {
  __$$_SaveAccountsToImportCopyWithImpl(_$_SaveAccountsToImport _value,
      $Res Function(_$_SaveAccountsToImport) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = null,
  }) {
    return _then(_$_SaveAccountsToImport(
      accounts: null == accounts
          ? _value._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<Account>,
    ));
  }
}

/// @nodoc

class _$_SaveAccountsToImport implements _SaveAccountsToImport {
  const _$_SaveAccountsToImport({required final List<Account> accounts})
      : _accounts = accounts;

  final List<Account> _accounts;
  @override
  List<Account> get accounts {
    if (_accounts is EqualUnmodifiableListView) return _accounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accounts);
  }

  @override
  String toString() {
    return 'WalletImportEvent.readyToImport(accounts: $accounts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaveAccountsToImport &&
            const DeepCollectionEquality().equals(other._accounts, _accounts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_accounts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SaveAccountsToImportCopyWith<_$_SaveAccountsToImport> get copyWith =>
      __$$_SaveAccountsToImportCopyWithImpl<_$_SaveAccountsToImport>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String privateKey, List<Account> existingAccounts,
            bool creatingAfterSettingPasscode)
        importWalletByPrivateKey,
    required TResult Function(List<Account> accounts) readyToImport,
    required TResult Function(Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)
        loadMoreDerivative,
    required TResult Function(String seedPhrase, List<Account> existingAccounts)
        importWalletsFromSeed,
    required TResult Function(
            AccountAddress deriveFrom, List<Account> existingAccounts)
        deriveWalletsFromSameSeed,
    required TResult Function(List<String> values,
            List<Account> existingAccounts, bool creatingAfterSettingPasscode)
        importMultipleWallets,
    required TResult Function(String name, String address,
            WalletGroup walletGroup, List<Account> existingAccounts)
        watchWallet,
    required TResult Function() reset,
  }) {
    return readyToImport(accounts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String privateKey, List<Account> existingAccounts,
            bool creatingAfterSettingPasscode)?
        importWalletByPrivateKey,
    TResult? Function(List<Account> accounts)? readyToImport,
    TResult? Function(Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        loadMoreDerivative,
    TResult? Function(String seedPhrase, List<Account> existingAccounts)?
        importWalletsFromSeed,
    TResult? Function(
            AccountAddress deriveFrom, List<Account> existingAccounts)?
        deriveWalletsFromSameSeed,
    TResult? Function(List<String> values, List<Account> existingAccounts,
            bool creatingAfterSettingPasscode)?
        importMultipleWallets,
    TResult? Function(String name, String address, WalletGroup walletGroup,
            List<Account> existingAccounts)?
        watchWallet,
    TResult? Function()? reset,
  }) {
    return readyToImport?.call(accounts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String privateKey, List<Account> existingAccounts,
            bool creatingAfterSettingPasscode)?
        importWalletByPrivateKey,
    TResult Function(List<Account> accounts)? readyToImport,
    TResult Function(Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        loadMoreDerivative,
    TResult Function(String seedPhrase, List<Account> existingAccounts)?
        importWalletsFromSeed,
    TResult Function(AccountAddress deriveFrom, List<Account> existingAccounts)?
        deriveWalletsFromSameSeed,
    TResult Function(List<String> values, List<Account> existingAccounts,
            bool creatingAfterSettingPasscode)?
        importMultipleWallets,
    TResult Function(String name, String address, WalletGroup walletGroup,
            List<Account> existingAccounts)?
        watchWallet,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (readyToImport != null) {
      return readyToImport(accounts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ImportWallet value) importWalletByPrivateKey,
    required TResult Function(_SaveAccountsToImport value) readyToImport,
    required TResult Function(_LoadMoreDerivative value) loadMoreDerivative,
    required TResult Function(_ImportWalletsFromSeed value)
        importWalletsFromSeed,
    required TResult Function(_DeriveWalletsFromSameSeed value)
        deriveWalletsFromSameSeed,
    required TResult Function(_ImportMultipleWallets value)
        importMultipleWallets,
    required TResult Function(_WatchWallet value) watchWallet,
    required TResult Function(_Reset value) reset,
  }) {
    return readyToImport(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ImportWallet value)? importWalletByPrivateKey,
    TResult? Function(_SaveAccountsToImport value)? readyToImport,
    TResult? Function(_LoadMoreDerivative value)? loadMoreDerivative,
    TResult? Function(_ImportWalletsFromSeed value)? importWalletsFromSeed,
    TResult? Function(_DeriveWalletsFromSameSeed value)?
        deriveWalletsFromSameSeed,
    TResult? Function(_ImportMultipleWallets value)? importMultipleWallets,
    TResult? Function(_WatchWallet value)? watchWallet,
    TResult? Function(_Reset value)? reset,
  }) {
    return readyToImport?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ImportWallet value)? importWalletByPrivateKey,
    TResult Function(_SaveAccountsToImport value)? readyToImport,
    TResult Function(_LoadMoreDerivative value)? loadMoreDerivative,
    TResult Function(_ImportWalletsFromSeed value)? importWalletsFromSeed,
    TResult Function(_DeriveWalletsFromSameSeed value)?
        deriveWalletsFromSameSeed,
    TResult Function(_ImportMultipleWallets value)? importMultipleWallets,
    TResult Function(_WatchWallet value)? watchWallet,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (readyToImport != null) {
      return readyToImport(this);
    }
    return orElse();
  }
}

abstract class _SaveAccountsToImport implements WalletImportEvent {
  const factory _SaveAccountsToImport({required final List<Account> accounts}) =
      _$_SaveAccountsToImport;

  List<Account> get accounts;
  @JsonKey(ignore: true)
  _$$_SaveAccountsToImportCopyWith<_$_SaveAccountsToImport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadMoreDerivativeCopyWith<$Res> {
  factory _$$_LoadMoreDerivativeCopyWith(_$_LoadMoreDerivative value,
          $Res Function(_$_LoadMoreDerivative) then) =
      __$$_LoadMoreDerivativeCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Set<int> selected,
      Map<String, List<TokenBalance>> balances,
      String seedPhrase});
}

/// @nodoc
class __$$_LoadMoreDerivativeCopyWithImpl<$Res>
    extends _$WalletImportEventCopyWithImpl<$Res, _$_LoadMoreDerivative>
    implements _$$_LoadMoreDerivativeCopyWith<$Res> {
  __$$_LoadMoreDerivativeCopyWithImpl(
      _$_LoadMoreDerivative _value, $Res Function(_$_LoadMoreDerivative) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selected = null,
    Object? balances = null,
    Object? seedPhrase = null,
  }) {
    return _then(_$_LoadMoreDerivative(
      selected: null == selected
          ? _value._selected
          : selected // ignore: cast_nullable_to_non_nullable
              as Set<int>,
      balances: null == balances
          ? _value._balances
          : balances // ignore: cast_nullable_to_non_nullable
              as Map<String, List<TokenBalance>>,
      seedPhrase: null == seedPhrase
          ? _value.seedPhrase
          : seedPhrase // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoadMoreDerivative implements _LoadMoreDerivative {
  const _$_LoadMoreDerivative(
      {required final Set<int> selected,
      required final Map<String, List<TokenBalance>> balances,
      required this.seedPhrase})
      : _selected = selected,
        _balances = balances;

  final Set<int> _selected;
  @override
  Set<int> get selected {
    if (_selected is EqualUnmodifiableSetView) return _selected;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_selected);
  }

  final Map<String, List<TokenBalance>> _balances;
  @override
  Map<String, List<TokenBalance>> get balances {
    if (_balances is EqualUnmodifiableMapView) return _balances;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_balances);
  }

  @override
  final String seedPhrase;

  @override
  String toString() {
    return 'WalletImportEvent.loadMoreDerivative(selected: $selected, balances: $balances, seedPhrase: $seedPhrase)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadMoreDerivative &&
            const DeepCollectionEquality().equals(other._selected, _selected) &&
            const DeepCollectionEquality().equals(other._balances, _balances) &&
            (identical(other.seedPhrase, seedPhrase) ||
                other.seedPhrase == seedPhrase));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_selected),
      const DeepCollectionEquality().hash(_balances),
      seedPhrase);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadMoreDerivativeCopyWith<_$_LoadMoreDerivative> get copyWith =>
      __$$_LoadMoreDerivativeCopyWithImpl<_$_LoadMoreDerivative>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String privateKey, List<Account> existingAccounts,
            bool creatingAfterSettingPasscode)
        importWalletByPrivateKey,
    required TResult Function(List<Account> accounts) readyToImport,
    required TResult Function(Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)
        loadMoreDerivative,
    required TResult Function(String seedPhrase, List<Account> existingAccounts)
        importWalletsFromSeed,
    required TResult Function(
            AccountAddress deriveFrom, List<Account> existingAccounts)
        deriveWalletsFromSameSeed,
    required TResult Function(List<String> values,
            List<Account> existingAccounts, bool creatingAfterSettingPasscode)
        importMultipleWallets,
    required TResult Function(String name, String address,
            WalletGroup walletGroup, List<Account> existingAccounts)
        watchWallet,
    required TResult Function() reset,
  }) {
    return loadMoreDerivative(selected, balances, seedPhrase);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String privateKey, List<Account> existingAccounts,
            bool creatingAfterSettingPasscode)?
        importWalletByPrivateKey,
    TResult? Function(List<Account> accounts)? readyToImport,
    TResult? Function(Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        loadMoreDerivative,
    TResult? Function(String seedPhrase, List<Account> existingAccounts)?
        importWalletsFromSeed,
    TResult? Function(
            AccountAddress deriveFrom, List<Account> existingAccounts)?
        deriveWalletsFromSameSeed,
    TResult? Function(List<String> values, List<Account> existingAccounts,
            bool creatingAfterSettingPasscode)?
        importMultipleWallets,
    TResult? Function(String name, String address, WalletGroup walletGroup,
            List<Account> existingAccounts)?
        watchWallet,
    TResult? Function()? reset,
  }) {
    return loadMoreDerivative?.call(selected, balances, seedPhrase);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String privateKey, List<Account> existingAccounts,
            bool creatingAfterSettingPasscode)?
        importWalletByPrivateKey,
    TResult Function(List<Account> accounts)? readyToImport,
    TResult Function(Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        loadMoreDerivative,
    TResult Function(String seedPhrase, List<Account> existingAccounts)?
        importWalletsFromSeed,
    TResult Function(AccountAddress deriveFrom, List<Account> existingAccounts)?
        deriveWalletsFromSameSeed,
    TResult Function(List<String> values, List<Account> existingAccounts,
            bool creatingAfterSettingPasscode)?
        importMultipleWallets,
    TResult Function(String name, String address, WalletGroup walletGroup,
            List<Account> existingAccounts)?
        watchWallet,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (loadMoreDerivative != null) {
      return loadMoreDerivative(selected, balances, seedPhrase);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ImportWallet value) importWalletByPrivateKey,
    required TResult Function(_SaveAccountsToImport value) readyToImport,
    required TResult Function(_LoadMoreDerivative value) loadMoreDerivative,
    required TResult Function(_ImportWalletsFromSeed value)
        importWalletsFromSeed,
    required TResult Function(_DeriveWalletsFromSameSeed value)
        deriveWalletsFromSameSeed,
    required TResult Function(_ImportMultipleWallets value)
        importMultipleWallets,
    required TResult Function(_WatchWallet value) watchWallet,
    required TResult Function(_Reset value) reset,
  }) {
    return loadMoreDerivative(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ImportWallet value)? importWalletByPrivateKey,
    TResult? Function(_SaveAccountsToImport value)? readyToImport,
    TResult? Function(_LoadMoreDerivative value)? loadMoreDerivative,
    TResult? Function(_ImportWalletsFromSeed value)? importWalletsFromSeed,
    TResult? Function(_DeriveWalletsFromSameSeed value)?
        deriveWalletsFromSameSeed,
    TResult? Function(_ImportMultipleWallets value)? importMultipleWallets,
    TResult? Function(_WatchWallet value)? watchWallet,
    TResult? Function(_Reset value)? reset,
  }) {
    return loadMoreDerivative?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ImportWallet value)? importWalletByPrivateKey,
    TResult Function(_SaveAccountsToImport value)? readyToImport,
    TResult Function(_LoadMoreDerivative value)? loadMoreDerivative,
    TResult Function(_ImportWalletsFromSeed value)? importWalletsFromSeed,
    TResult Function(_DeriveWalletsFromSameSeed value)?
        deriveWalletsFromSameSeed,
    TResult Function(_ImportMultipleWallets value)? importMultipleWallets,
    TResult Function(_WatchWallet value)? watchWallet,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (loadMoreDerivative != null) {
      return loadMoreDerivative(this);
    }
    return orElse();
  }
}

abstract class _LoadMoreDerivative implements WalletImportEvent {
  const factory _LoadMoreDerivative(
      {required final Set<int> selected,
      required final Map<String, List<TokenBalance>> balances,
      required final String seedPhrase}) = _$_LoadMoreDerivative;

  Set<int> get selected;
  Map<String, List<TokenBalance>> get balances;
  String get seedPhrase;
  @JsonKey(ignore: true)
  _$$_LoadMoreDerivativeCopyWith<_$_LoadMoreDerivative> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ImportWalletsFromSeedCopyWith<$Res> {
  factory _$$_ImportWalletsFromSeedCopyWith(_$_ImportWalletsFromSeed value,
          $Res Function(_$_ImportWalletsFromSeed) then) =
      __$$_ImportWalletsFromSeedCopyWithImpl<$Res>;
  @useResult
  $Res call({String seedPhrase, List<Account> existingAccounts});
}

/// @nodoc
class __$$_ImportWalletsFromSeedCopyWithImpl<$Res>
    extends _$WalletImportEventCopyWithImpl<$Res, _$_ImportWalletsFromSeed>
    implements _$$_ImportWalletsFromSeedCopyWith<$Res> {
  __$$_ImportWalletsFromSeedCopyWithImpl(_$_ImportWalletsFromSeed _value,
      $Res Function(_$_ImportWalletsFromSeed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seedPhrase = null,
    Object? existingAccounts = null,
  }) {
    return _then(_$_ImportWalletsFromSeed(
      null == seedPhrase
          ? _value.seedPhrase
          : seedPhrase // ignore: cast_nullable_to_non_nullable
              as String,
      existingAccounts: null == existingAccounts
          ? _value._existingAccounts
          : existingAccounts // ignore: cast_nullable_to_non_nullable
              as List<Account>,
    ));
  }
}

/// @nodoc

class _$_ImportWalletsFromSeed implements _ImportWalletsFromSeed {
  const _$_ImportWalletsFromSeed(this.seedPhrase,
      {required final List<Account> existingAccounts})
      : _existingAccounts = existingAccounts;

  @override
  final String seedPhrase;
  final List<Account> _existingAccounts;
  @override
  List<Account> get existingAccounts {
    if (_existingAccounts is EqualUnmodifiableListView)
      return _existingAccounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_existingAccounts);
  }

  @override
  String toString() {
    return 'WalletImportEvent.importWalletsFromSeed(seedPhrase: $seedPhrase, existingAccounts: $existingAccounts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImportWalletsFromSeed &&
            (identical(other.seedPhrase, seedPhrase) ||
                other.seedPhrase == seedPhrase) &&
            const DeepCollectionEquality()
                .equals(other._existingAccounts, _existingAccounts));
  }

  @override
  int get hashCode => Object.hash(runtimeType, seedPhrase,
      const DeepCollectionEquality().hash(_existingAccounts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImportWalletsFromSeedCopyWith<_$_ImportWalletsFromSeed> get copyWith =>
      __$$_ImportWalletsFromSeedCopyWithImpl<_$_ImportWalletsFromSeed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String privateKey, List<Account> existingAccounts,
            bool creatingAfterSettingPasscode)
        importWalletByPrivateKey,
    required TResult Function(List<Account> accounts) readyToImport,
    required TResult Function(Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)
        loadMoreDerivative,
    required TResult Function(String seedPhrase, List<Account> existingAccounts)
        importWalletsFromSeed,
    required TResult Function(
            AccountAddress deriveFrom, List<Account> existingAccounts)
        deriveWalletsFromSameSeed,
    required TResult Function(List<String> values,
            List<Account> existingAccounts, bool creatingAfterSettingPasscode)
        importMultipleWallets,
    required TResult Function(String name, String address,
            WalletGroup walletGroup, List<Account> existingAccounts)
        watchWallet,
    required TResult Function() reset,
  }) {
    return importWalletsFromSeed(seedPhrase, existingAccounts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String privateKey, List<Account> existingAccounts,
            bool creatingAfterSettingPasscode)?
        importWalletByPrivateKey,
    TResult? Function(List<Account> accounts)? readyToImport,
    TResult? Function(Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        loadMoreDerivative,
    TResult? Function(String seedPhrase, List<Account> existingAccounts)?
        importWalletsFromSeed,
    TResult? Function(
            AccountAddress deriveFrom, List<Account> existingAccounts)?
        deriveWalletsFromSameSeed,
    TResult? Function(List<String> values, List<Account> existingAccounts,
            bool creatingAfterSettingPasscode)?
        importMultipleWallets,
    TResult? Function(String name, String address, WalletGroup walletGroup,
            List<Account> existingAccounts)?
        watchWallet,
    TResult? Function()? reset,
  }) {
    return importWalletsFromSeed?.call(seedPhrase, existingAccounts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String privateKey, List<Account> existingAccounts,
            bool creatingAfterSettingPasscode)?
        importWalletByPrivateKey,
    TResult Function(List<Account> accounts)? readyToImport,
    TResult Function(Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        loadMoreDerivative,
    TResult Function(String seedPhrase, List<Account> existingAccounts)?
        importWalletsFromSeed,
    TResult Function(AccountAddress deriveFrom, List<Account> existingAccounts)?
        deriveWalletsFromSameSeed,
    TResult Function(List<String> values, List<Account> existingAccounts,
            bool creatingAfterSettingPasscode)?
        importMultipleWallets,
    TResult Function(String name, String address, WalletGroup walletGroup,
            List<Account> existingAccounts)?
        watchWallet,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (importWalletsFromSeed != null) {
      return importWalletsFromSeed(seedPhrase, existingAccounts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ImportWallet value) importWalletByPrivateKey,
    required TResult Function(_SaveAccountsToImport value) readyToImport,
    required TResult Function(_LoadMoreDerivative value) loadMoreDerivative,
    required TResult Function(_ImportWalletsFromSeed value)
        importWalletsFromSeed,
    required TResult Function(_DeriveWalletsFromSameSeed value)
        deriveWalletsFromSameSeed,
    required TResult Function(_ImportMultipleWallets value)
        importMultipleWallets,
    required TResult Function(_WatchWallet value) watchWallet,
    required TResult Function(_Reset value) reset,
  }) {
    return importWalletsFromSeed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ImportWallet value)? importWalletByPrivateKey,
    TResult? Function(_SaveAccountsToImport value)? readyToImport,
    TResult? Function(_LoadMoreDerivative value)? loadMoreDerivative,
    TResult? Function(_ImportWalletsFromSeed value)? importWalletsFromSeed,
    TResult? Function(_DeriveWalletsFromSameSeed value)?
        deriveWalletsFromSameSeed,
    TResult? Function(_ImportMultipleWallets value)? importMultipleWallets,
    TResult? Function(_WatchWallet value)? watchWallet,
    TResult? Function(_Reset value)? reset,
  }) {
    return importWalletsFromSeed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ImportWallet value)? importWalletByPrivateKey,
    TResult Function(_SaveAccountsToImport value)? readyToImport,
    TResult Function(_LoadMoreDerivative value)? loadMoreDerivative,
    TResult Function(_ImportWalletsFromSeed value)? importWalletsFromSeed,
    TResult Function(_DeriveWalletsFromSameSeed value)?
        deriveWalletsFromSameSeed,
    TResult Function(_ImportMultipleWallets value)? importMultipleWallets,
    TResult Function(_WatchWallet value)? watchWallet,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (importWalletsFromSeed != null) {
      return importWalletsFromSeed(this);
    }
    return orElse();
  }
}

abstract class _ImportWalletsFromSeed implements WalletImportEvent {
  const factory _ImportWalletsFromSeed(final String seedPhrase,
          {required final List<Account> existingAccounts}) =
      _$_ImportWalletsFromSeed;

  String get seedPhrase;
  List<Account> get existingAccounts;
  @JsonKey(ignore: true)
  _$$_ImportWalletsFromSeedCopyWith<_$_ImportWalletsFromSeed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeriveWalletsFromSameSeedCopyWith<$Res> {
  factory _$$_DeriveWalletsFromSameSeedCopyWith(
          _$_DeriveWalletsFromSameSeed value,
          $Res Function(_$_DeriveWalletsFromSameSeed) then) =
      __$$_DeriveWalletsFromSameSeedCopyWithImpl<$Res>;
  @useResult
  $Res call({AccountAddress deriveFrom, List<Account> existingAccounts});
}

/// @nodoc
class __$$_DeriveWalletsFromSameSeedCopyWithImpl<$Res>
    extends _$WalletImportEventCopyWithImpl<$Res, _$_DeriveWalletsFromSameSeed>
    implements _$$_DeriveWalletsFromSameSeedCopyWith<$Res> {
  __$$_DeriveWalletsFromSameSeedCopyWithImpl(
      _$_DeriveWalletsFromSameSeed _value,
      $Res Function(_$_DeriveWalletsFromSameSeed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deriveFrom = null,
    Object? existingAccounts = null,
  }) {
    return _then(_$_DeriveWalletsFromSameSeed(
      deriveFrom: null == deriveFrom
          ? _value.deriveFrom
          : deriveFrom // ignore: cast_nullable_to_non_nullable
              as AccountAddress,
      existingAccounts: null == existingAccounts
          ? _value._existingAccounts
          : existingAccounts // ignore: cast_nullable_to_non_nullable
              as List<Account>,
    ));
  }
}

/// @nodoc

class _$_DeriveWalletsFromSameSeed implements _DeriveWalletsFromSameSeed {
  const _$_DeriveWalletsFromSameSeed(
      {required this.deriveFrom, required final List<Account> existingAccounts})
      : _existingAccounts = existingAccounts;

  @override
  final AccountAddress deriveFrom;
  final List<Account> _existingAccounts;
  @override
  List<Account> get existingAccounts {
    if (_existingAccounts is EqualUnmodifiableListView)
      return _existingAccounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_existingAccounts);
  }

  @override
  String toString() {
    return 'WalletImportEvent.deriveWalletsFromSameSeed(deriveFrom: $deriveFrom, existingAccounts: $existingAccounts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeriveWalletsFromSameSeed &&
            (identical(other.deriveFrom, deriveFrom) ||
                other.deriveFrom == deriveFrom) &&
            const DeepCollectionEquality()
                .equals(other._existingAccounts, _existingAccounts));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deriveFrom,
      const DeepCollectionEquality().hash(_existingAccounts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeriveWalletsFromSameSeedCopyWith<_$_DeriveWalletsFromSameSeed>
      get copyWith => __$$_DeriveWalletsFromSameSeedCopyWithImpl<
          _$_DeriveWalletsFromSameSeed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String privateKey, List<Account> existingAccounts,
            bool creatingAfterSettingPasscode)
        importWalletByPrivateKey,
    required TResult Function(List<Account> accounts) readyToImport,
    required TResult Function(Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)
        loadMoreDerivative,
    required TResult Function(String seedPhrase, List<Account> existingAccounts)
        importWalletsFromSeed,
    required TResult Function(
            AccountAddress deriveFrom, List<Account> existingAccounts)
        deriveWalletsFromSameSeed,
    required TResult Function(List<String> values,
            List<Account> existingAccounts, bool creatingAfterSettingPasscode)
        importMultipleWallets,
    required TResult Function(String name, String address,
            WalletGroup walletGroup, List<Account> existingAccounts)
        watchWallet,
    required TResult Function() reset,
  }) {
    return deriveWalletsFromSameSeed(deriveFrom, existingAccounts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String privateKey, List<Account> existingAccounts,
            bool creatingAfterSettingPasscode)?
        importWalletByPrivateKey,
    TResult? Function(List<Account> accounts)? readyToImport,
    TResult? Function(Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        loadMoreDerivative,
    TResult? Function(String seedPhrase, List<Account> existingAccounts)?
        importWalletsFromSeed,
    TResult? Function(
            AccountAddress deriveFrom, List<Account> existingAccounts)?
        deriveWalletsFromSameSeed,
    TResult? Function(List<String> values, List<Account> existingAccounts,
            bool creatingAfterSettingPasscode)?
        importMultipleWallets,
    TResult? Function(String name, String address, WalletGroup walletGroup,
            List<Account> existingAccounts)?
        watchWallet,
    TResult? Function()? reset,
  }) {
    return deriveWalletsFromSameSeed?.call(deriveFrom, existingAccounts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String privateKey, List<Account> existingAccounts,
            bool creatingAfterSettingPasscode)?
        importWalletByPrivateKey,
    TResult Function(List<Account> accounts)? readyToImport,
    TResult Function(Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        loadMoreDerivative,
    TResult Function(String seedPhrase, List<Account> existingAccounts)?
        importWalletsFromSeed,
    TResult Function(AccountAddress deriveFrom, List<Account> existingAccounts)?
        deriveWalletsFromSameSeed,
    TResult Function(List<String> values, List<Account> existingAccounts,
            bool creatingAfterSettingPasscode)?
        importMultipleWallets,
    TResult Function(String name, String address, WalletGroup walletGroup,
            List<Account> existingAccounts)?
        watchWallet,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (deriveWalletsFromSameSeed != null) {
      return deriveWalletsFromSameSeed(deriveFrom, existingAccounts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ImportWallet value) importWalletByPrivateKey,
    required TResult Function(_SaveAccountsToImport value) readyToImport,
    required TResult Function(_LoadMoreDerivative value) loadMoreDerivative,
    required TResult Function(_ImportWalletsFromSeed value)
        importWalletsFromSeed,
    required TResult Function(_DeriveWalletsFromSameSeed value)
        deriveWalletsFromSameSeed,
    required TResult Function(_ImportMultipleWallets value)
        importMultipleWallets,
    required TResult Function(_WatchWallet value) watchWallet,
    required TResult Function(_Reset value) reset,
  }) {
    return deriveWalletsFromSameSeed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ImportWallet value)? importWalletByPrivateKey,
    TResult? Function(_SaveAccountsToImport value)? readyToImport,
    TResult? Function(_LoadMoreDerivative value)? loadMoreDerivative,
    TResult? Function(_ImportWalletsFromSeed value)? importWalletsFromSeed,
    TResult? Function(_DeriveWalletsFromSameSeed value)?
        deriveWalletsFromSameSeed,
    TResult? Function(_ImportMultipleWallets value)? importMultipleWallets,
    TResult? Function(_WatchWallet value)? watchWallet,
    TResult? Function(_Reset value)? reset,
  }) {
    return deriveWalletsFromSameSeed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ImportWallet value)? importWalletByPrivateKey,
    TResult Function(_SaveAccountsToImport value)? readyToImport,
    TResult Function(_LoadMoreDerivative value)? loadMoreDerivative,
    TResult Function(_ImportWalletsFromSeed value)? importWalletsFromSeed,
    TResult Function(_DeriveWalletsFromSameSeed value)?
        deriveWalletsFromSameSeed,
    TResult Function(_ImportMultipleWallets value)? importMultipleWallets,
    TResult Function(_WatchWallet value)? watchWallet,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (deriveWalletsFromSameSeed != null) {
      return deriveWalletsFromSameSeed(this);
    }
    return orElse();
  }
}

abstract class _DeriveWalletsFromSameSeed implements WalletImportEvent {
  const factory _DeriveWalletsFromSameSeed(
          {required final AccountAddress deriveFrom,
          required final List<Account> existingAccounts}) =
      _$_DeriveWalletsFromSameSeed;

  AccountAddress get deriveFrom;
  List<Account> get existingAccounts;
  @JsonKey(ignore: true)
  _$$_DeriveWalletsFromSameSeedCopyWith<_$_DeriveWalletsFromSameSeed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ImportMultipleWalletsCopyWith<$Res> {
  factory _$$_ImportMultipleWalletsCopyWith(_$_ImportMultipleWallets value,
          $Res Function(_$_ImportMultipleWallets) then) =
      __$$_ImportMultipleWalletsCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<String> values,
      List<Account> existingAccounts,
      bool creatingAfterSettingPasscode});
}

/// @nodoc
class __$$_ImportMultipleWalletsCopyWithImpl<$Res>
    extends _$WalletImportEventCopyWithImpl<$Res, _$_ImportMultipleWallets>
    implements _$$_ImportMultipleWalletsCopyWith<$Res> {
  __$$_ImportMultipleWalletsCopyWithImpl(_$_ImportMultipleWallets _value,
      $Res Function(_$_ImportMultipleWallets) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? values = null,
    Object? existingAccounts = null,
    Object? creatingAfterSettingPasscode = null,
  }) {
    return _then(_$_ImportMultipleWallets(
      null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<String>,
      existingAccounts: null == existingAccounts
          ? _value._existingAccounts
          : existingAccounts // ignore: cast_nullable_to_non_nullable
              as List<Account>,
      creatingAfterSettingPasscode: null == creatingAfterSettingPasscode
          ? _value.creatingAfterSettingPasscode
          : creatingAfterSettingPasscode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ImportMultipleWallets implements _ImportMultipleWallets {
  const _$_ImportMultipleWallets(final List<String> values,
      {required final List<Account> existingAccounts,
      required this.creatingAfterSettingPasscode})
      : _values = values,
        _existingAccounts = existingAccounts;

  final List<String> _values;
  @override
  List<String> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  final List<Account> _existingAccounts;
  @override
  List<Account> get existingAccounts {
    if (_existingAccounts is EqualUnmodifiableListView)
      return _existingAccounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_existingAccounts);
  }

  @override
  final bool creatingAfterSettingPasscode;

  @override
  String toString() {
    return 'WalletImportEvent.importMultipleWallets(values: $values, existingAccounts: $existingAccounts, creatingAfterSettingPasscode: $creatingAfterSettingPasscode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImportMultipleWallets &&
            const DeepCollectionEquality().equals(other._values, _values) &&
            const DeepCollectionEquality()
                .equals(other._existingAccounts, _existingAccounts) &&
            (identical(other.creatingAfterSettingPasscode,
                    creatingAfterSettingPasscode) ||
                other.creatingAfterSettingPasscode ==
                    creatingAfterSettingPasscode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_values),
      const DeepCollectionEquality().hash(_existingAccounts),
      creatingAfterSettingPasscode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImportMultipleWalletsCopyWith<_$_ImportMultipleWallets> get copyWith =>
      __$$_ImportMultipleWalletsCopyWithImpl<_$_ImportMultipleWallets>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String privateKey, List<Account> existingAccounts,
            bool creatingAfterSettingPasscode)
        importWalletByPrivateKey,
    required TResult Function(List<Account> accounts) readyToImport,
    required TResult Function(Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)
        loadMoreDerivative,
    required TResult Function(String seedPhrase, List<Account> existingAccounts)
        importWalletsFromSeed,
    required TResult Function(
            AccountAddress deriveFrom, List<Account> existingAccounts)
        deriveWalletsFromSameSeed,
    required TResult Function(List<String> values,
            List<Account> existingAccounts, bool creatingAfterSettingPasscode)
        importMultipleWallets,
    required TResult Function(String name, String address,
            WalletGroup walletGroup, List<Account> existingAccounts)
        watchWallet,
    required TResult Function() reset,
  }) {
    return importMultipleWallets(
        values, existingAccounts, creatingAfterSettingPasscode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String privateKey, List<Account> existingAccounts,
            bool creatingAfterSettingPasscode)?
        importWalletByPrivateKey,
    TResult? Function(List<Account> accounts)? readyToImport,
    TResult? Function(Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        loadMoreDerivative,
    TResult? Function(String seedPhrase, List<Account> existingAccounts)?
        importWalletsFromSeed,
    TResult? Function(
            AccountAddress deriveFrom, List<Account> existingAccounts)?
        deriveWalletsFromSameSeed,
    TResult? Function(List<String> values, List<Account> existingAccounts,
            bool creatingAfterSettingPasscode)?
        importMultipleWallets,
    TResult? Function(String name, String address, WalletGroup walletGroup,
            List<Account> existingAccounts)?
        watchWallet,
    TResult? Function()? reset,
  }) {
    return importMultipleWallets?.call(
        values, existingAccounts, creatingAfterSettingPasscode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String privateKey, List<Account> existingAccounts,
            bool creatingAfterSettingPasscode)?
        importWalletByPrivateKey,
    TResult Function(List<Account> accounts)? readyToImport,
    TResult Function(Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        loadMoreDerivative,
    TResult Function(String seedPhrase, List<Account> existingAccounts)?
        importWalletsFromSeed,
    TResult Function(AccountAddress deriveFrom, List<Account> existingAccounts)?
        deriveWalletsFromSameSeed,
    TResult Function(List<String> values, List<Account> existingAccounts,
            bool creatingAfterSettingPasscode)?
        importMultipleWallets,
    TResult Function(String name, String address, WalletGroup walletGroup,
            List<Account> existingAccounts)?
        watchWallet,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (importMultipleWallets != null) {
      return importMultipleWallets(
          values, existingAccounts, creatingAfterSettingPasscode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ImportWallet value) importWalletByPrivateKey,
    required TResult Function(_SaveAccountsToImport value) readyToImport,
    required TResult Function(_LoadMoreDerivative value) loadMoreDerivative,
    required TResult Function(_ImportWalletsFromSeed value)
        importWalletsFromSeed,
    required TResult Function(_DeriveWalletsFromSameSeed value)
        deriveWalletsFromSameSeed,
    required TResult Function(_ImportMultipleWallets value)
        importMultipleWallets,
    required TResult Function(_WatchWallet value) watchWallet,
    required TResult Function(_Reset value) reset,
  }) {
    return importMultipleWallets(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ImportWallet value)? importWalletByPrivateKey,
    TResult? Function(_SaveAccountsToImport value)? readyToImport,
    TResult? Function(_LoadMoreDerivative value)? loadMoreDerivative,
    TResult? Function(_ImportWalletsFromSeed value)? importWalletsFromSeed,
    TResult? Function(_DeriveWalletsFromSameSeed value)?
        deriveWalletsFromSameSeed,
    TResult? Function(_ImportMultipleWallets value)? importMultipleWallets,
    TResult? Function(_WatchWallet value)? watchWallet,
    TResult? Function(_Reset value)? reset,
  }) {
    return importMultipleWallets?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ImportWallet value)? importWalletByPrivateKey,
    TResult Function(_SaveAccountsToImport value)? readyToImport,
    TResult Function(_LoadMoreDerivative value)? loadMoreDerivative,
    TResult Function(_ImportWalletsFromSeed value)? importWalletsFromSeed,
    TResult Function(_DeriveWalletsFromSameSeed value)?
        deriveWalletsFromSameSeed,
    TResult Function(_ImportMultipleWallets value)? importMultipleWallets,
    TResult Function(_WatchWallet value)? watchWallet,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (importMultipleWallets != null) {
      return importMultipleWallets(this);
    }
    return orElse();
  }
}

abstract class _ImportMultipleWallets implements WalletImportEvent {
  const factory _ImportMultipleWallets(final List<String> values,
          {required final List<Account> existingAccounts,
          required final bool creatingAfterSettingPasscode}) =
      _$_ImportMultipleWallets;

  List<String> get values;
  List<Account> get existingAccounts;
  bool get creatingAfterSettingPasscode;
  @JsonKey(ignore: true)
  _$$_ImportMultipleWalletsCopyWith<_$_ImportMultipleWallets> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WatchWalletCopyWith<$Res> {
  factory _$$_WatchWalletCopyWith(
          _$_WatchWallet value, $Res Function(_$_WatchWallet) then) =
      __$$_WatchWalletCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String name,
      String address,
      WalletGroup walletGroup,
      List<Account> existingAccounts});
}

/// @nodoc
class __$$_WatchWalletCopyWithImpl<$Res>
    extends _$WalletImportEventCopyWithImpl<$Res, _$_WatchWallet>
    implements _$$_WatchWalletCopyWith<$Res> {
  __$$_WatchWalletCopyWithImpl(
      _$_WatchWallet _value, $Res Function(_$_WatchWallet) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? address = null,
    Object? walletGroup = null,
    Object? existingAccounts = null,
  }) {
    return _then(_$_WatchWallet(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      walletGroup: null == walletGroup
          ? _value.walletGroup
          : walletGroup // ignore: cast_nullable_to_non_nullable
              as WalletGroup,
      existingAccounts: null == existingAccounts
          ? _value._existingAccounts
          : existingAccounts // ignore: cast_nullable_to_non_nullable
              as List<Account>,
    ));
  }
}

/// @nodoc

class _$_WatchWallet implements _WatchWallet {
  const _$_WatchWallet(
      {required this.name,
      required this.address,
      required this.walletGroup,
      required final List<Account> existingAccounts})
      : _existingAccounts = existingAccounts;

  @override
  final String name;
  @override
  final String address;
  @override
  final WalletGroup walletGroup;
  final List<Account> _existingAccounts;
  @override
  List<Account> get existingAccounts {
    if (_existingAccounts is EqualUnmodifiableListView)
      return _existingAccounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_existingAccounts);
  }

  @override
  String toString() {
    return 'WalletImportEvent.watchWallet(name: $name, address: $address, walletGroup: $walletGroup, existingAccounts: $existingAccounts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WatchWallet &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.walletGroup, walletGroup) ||
                other.walletGroup == walletGroup) &&
            const DeepCollectionEquality()
                .equals(other._existingAccounts, _existingAccounts));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, address, walletGroup,
      const DeepCollectionEquality().hash(_existingAccounts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WatchWalletCopyWith<_$_WatchWallet> get copyWith =>
      __$$_WatchWalletCopyWithImpl<_$_WatchWallet>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String privateKey, List<Account> existingAccounts,
            bool creatingAfterSettingPasscode)
        importWalletByPrivateKey,
    required TResult Function(List<Account> accounts) readyToImport,
    required TResult Function(Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)
        loadMoreDerivative,
    required TResult Function(String seedPhrase, List<Account> existingAccounts)
        importWalletsFromSeed,
    required TResult Function(
            AccountAddress deriveFrom, List<Account> existingAccounts)
        deriveWalletsFromSameSeed,
    required TResult Function(List<String> values,
            List<Account> existingAccounts, bool creatingAfterSettingPasscode)
        importMultipleWallets,
    required TResult Function(String name, String address,
            WalletGroup walletGroup, List<Account> existingAccounts)
        watchWallet,
    required TResult Function() reset,
  }) {
    return watchWallet(name, address, walletGroup, existingAccounts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String privateKey, List<Account> existingAccounts,
            bool creatingAfterSettingPasscode)?
        importWalletByPrivateKey,
    TResult? Function(List<Account> accounts)? readyToImport,
    TResult? Function(Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        loadMoreDerivative,
    TResult? Function(String seedPhrase, List<Account> existingAccounts)?
        importWalletsFromSeed,
    TResult? Function(
            AccountAddress deriveFrom, List<Account> existingAccounts)?
        deriveWalletsFromSameSeed,
    TResult? Function(List<String> values, List<Account> existingAccounts,
            bool creatingAfterSettingPasscode)?
        importMultipleWallets,
    TResult? Function(String name, String address, WalletGroup walletGroup,
            List<Account> existingAccounts)?
        watchWallet,
    TResult? Function()? reset,
  }) {
    return watchWallet?.call(name, address, walletGroup, existingAccounts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String privateKey, List<Account> existingAccounts,
            bool creatingAfterSettingPasscode)?
        importWalletByPrivateKey,
    TResult Function(List<Account> accounts)? readyToImport,
    TResult Function(Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        loadMoreDerivative,
    TResult Function(String seedPhrase, List<Account> existingAccounts)?
        importWalletsFromSeed,
    TResult Function(AccountAddress deriveFrom, List<Account> existingAccounts)?
        deriveWalletsFromSameSeed,
    TResult Function(List<String> values, List<Account> existingAccounts,
            bool creatingAfterSettingPasscode)?
        importMultipleWallets,
    TResult Function(String name, String address, WalletGroup walletGroup,
            List<Account> existingAccounts)?
        watchWallet,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (watchWallet != null) {
      return watchWallet(name, address, walletGroup, existingAccounts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ImportWallet value) importWalletByPrivateKey,
    required TResult Function(_SaveAccountsToImport value) readyToImport,
    required TResult Function(_LoadMoreDerivative value) loadMoreDerivative,
    required TResult Function(_ImportWalletsFromSeed value)
        importWalletsFromSeed,
    required TResult Function(_DeriveWalletsFromSameSeed value)
        deriveWalletsFromSameSeed,
    required TResult Function(_ImportMultipleWallets value)
        importMultipleWallets,
    required TResult Function(_WatchWallet value) watchWallet,
    required TResult Function(_Reset value) reset,
  }) {
    return watchWallet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ImportWallet value)? importWalletByPrivateKey,
    TResult? Function(_SaveAccountsToImport value)? readyToImport,
    TResult? Function(_LoadMoreDerivative value)? loadMoreDerivative,
    TResult? Function(_ImportWalletsFromSeed value)? importWalletsFromSeed,
    TResult? Function(_DeriveWalletsFromSameSeed value)?
        deriveWalletsFromSameSeed,
    TResult? Function(_ImportMultipleWallets value)? importMultipleWallets,
    TResult? Function(_WatchWallet value)? watchWallet,
    TResult? Function(_Reset value)? reset,
  }) {
    return watchWallet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ImportWallet value)? importWalletByPrivateKey,
    TResult Function(_SaveAccountsToImport value)? readyToImport,
    TResult Function(_LoadMoreDerivative value)? loadMoreDerivative,
    TResult Function(_ImportWalletsFromSeed value)? importWalletsFromSeed,
    TResult Function(_DeriveWalletsFromSameSeed value)?
        deriveWalletsFromSameSeed,
    TResult Function(_ImportMultipleWallets value)? importMultipleWallets,
    TResult Function(_WatchWallet value)? watchWallet,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (watchWallet != null) {
      return watchWallet(this);
    }
    return orElse();
  }
}

abstract class _WatchWallet implements WalletImportEvent {
  const factory _WatchWallet(
      {required final String name,
      required final String address,
      required final WalletGroup walletGroup,
      required final List<Account> existingAccounts}) = _$_WatchWallet;

  String get name;
  String get address;
  WalletGroup get walletGroup;
  List<Account> get existingAccounts;
  @JsonKey(ignore: true)
  _$$_WatchWalletCopyWith<_$_WatchWallet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResetCopyWith<$Res> {
  factory _$$_ResetCopyWith(_$_Reset value, $Res Function(_$_Reset) then) =
      __$$_ResetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResetCopyWithImpl<$Res>
    extends _$WalletImportEventCopyWithImpl<$Res, _$_Reset>
    implements _$$_ResetCopyWith<$Res> {
  __$$_ResetCopyWithImpl(_$_Reset _value, $Res Function(_$_Reset) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Reset implements _Reset {
  const _$_Reset();

  @override
  String toString() {
    return 'WalletImportEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Reset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String privateKey, List<Account> existingAccounts,
            bool creatingAfterSettingPasscode)
        importWalletByPrivateKey,
    required TResult Function(List<Account> accounts) readyToImport,
    required TResult Function(Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)
        loadMoreDerivative,
    required TResult Function(String seedPhrase, List<Account> existingAccounts)
        importWalletsFromSeed,
    required TResult Function(
            AccountAddress deriveFrom, List<Account> existingAccounts)
        deriveWalletsFromSameSeed,
    required TResult Function(List<String> values,
            List<Account> existingAccounts, bool creatingAfterSettingPasscode)
        importMultipleWallets,
    required TResult Function(String name, String address,
            WalletGroup walletGroup, List<Account> existingAccounts)
        watchWallet,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String privateKey, List<Account> existingAccounts,
            bool creatingAfterSettingPasscode)?
        importWalletByPrivateKey,
    TResult? Function(List<Account> accounts)? readyToImport,
    TResult? Function(Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        loadMoreDerivative,
    TResult? Function(String seedPhrase, List<Account> existingAccounts)?
        importWalletsFromSeed,
    TResult? Function(
            AccountAddress deriveFrom, List<Account> existingAccounts)?
        deriveWalletsFromSameSeed,
    TResult? Function(List<String> values, List<Account> existingAccounts,
            bool creatingAfterSettingPasscode)?
        importMultipleWallets,
    TResult? Function(String name, String address, WalletGroup walletGroup,
            List<Account> existingAccounts)?
        watchWallet,
    TResult? Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String privateKey, List<Account> existingAccounts,
            bool creatingAfterSettingPasscode)?
        importWalletByPrivateKey,
    TResult Function(List<Account> accounts)? readyToImport,
    TResult Function(Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        loadMoreDerivative,
    TResult Function(String seedPhrase, List<Account> existingAccounts)?
        importWalletsFromSeed,
    TResult Function(AccountAddress deriveFrom, List<Account> existingAccounts)?
        deriveWalletsFromSameSeed,
    TResult Function(List<String> values, List<Account> existingAccounts,
            bool creatingAfterSettingPasscode)?
        importMultipleWallets,
    TResult Function(String name, String address, WalletGroup walletGroup,
            List<Account> existingAccounts)?
        watchWallet,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ImportWallet value) importWalletByPrivateKey,
    required TResult Function(_SaveAccountsToImport value) readyToImport,
    required TResult Function(_LoadMoreDerivative value) loadMoreDerivative,
    required TResult Function(_ImportWalletsFromSeed value)
        importWalletsFromSeed,
    required TResult Function(_DeriveWalletsFromSameSeed value)
        deriveWalletsFromSameSeed,
    required TResult Function(_ImportMultipleWallets value)
        importMultipleWallets,
    required TResult Function(_WatchWallet value) watchWallet,
    required TResult Function(_Reset value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ImportWallet value)? importWalletByPrivateKey,
    TResult? Function(_SaveAccountsToImport value)? readyToImport,
    TResult? Function(_LoadMoreDerivative value)? loadMoreDerivative,
    TResult? Function(_ImportWalletsFromSeed value)? importWalletsFromSeed,
    TResult? Function(_DeriveWalletsFromSameSeed value)?
        deriveWalletsFromSameSeed,
    TResult? Function(_ImportMultipleWallets value)? importMultipleWallets,
    TResult? Function(_WatchWallet value)? watchWallet,
    TResult? Function(_Reset value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ImportWallet value)? importWalletByPrivateKey,
    TResult Function(_SaveAccountsToImport value)? readyToImport,
    TResult Function(_LoadMoreDerivative value)? loadMoreDerivative,
    TResult Function(_ImportWalletsFromSeed value)? importWalletsFromSeed,
    TResult Function(_DeriveWalletsFromSameSeed value)?
        deriveWalletsFromSameSeed,
    TResult Function(_ImportMultipleWallets value)? importMultipleWallets,
    TResult Function(_WatchWallet value)? watchWallet,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements WalletImportEvent {
  const factory _Reset() = _$_Reset;
}

/// @nodoc
mixin _$WalletImportState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Account> accounts) accountsToImport,
    required TResult Function(List<Account> accounts) readyToImport,
    required TResult Function() inProcess,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)
        inDAImportProcess,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)
        loadedMore,
    required TResult Function(Account account) imported,
    required TResult Function(List<Account> accounts) importedMultipleWallets,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)
        importedMultipleDerivativeWallets,
    required TResult Function(List<Account> accounts)
        importedMultipleWalletsWithSetPasscode,
    required TResult Function(Account account) importedWithSetPasscode,
    required TResult Function(Account account) needsToDeleteTrackAccount,
    required TResult Function(WalletImportFailure failure) importingFailed,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)
        importingDAFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Account> accounts)? accountsToImport,
    TResult? Function(List<Account> accounts)? readyToImport,
    TResult? Function()? inProcess,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        inDAImportProcess,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        loadedMore,
    TResult? Function(Account account)? imported,
    TResult? Function(List<Account> accounts)? importedMultipleWallets,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        importedMultipleDerivativeWallets,
    TResult? Function(List<Account> accounts)?
        importedMultipleWalletsWithSetPasscode,
    TResult? Function(Account account)? importedWithSetPasscode,
    TResult? Function(Account account)? needsToDeleteTrackAccount,
    TResult? Function(WalletImportFailure failure)? importingFailed,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        importingDAFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Account> accounts)? accountsToImport,
    TResult Function(List<Account> accounts)? readyToImport,
    TResult Function()? inProcess,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        inDAImportProcess,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        loadedMore,
    TResult Function(Account account)? imported,
    TResult Function(List<Account> accounts)? importedMultipleWallets,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        importedMultipleDerivativeWallets,
    TResult Function(List<Account> accounts)?
        importedMultipleWalletsWithSetPasscode,
    TResult Function(Account account)? importedWithSetPasscode,
    TResult Function(Account account)? needsToDeleteTrackAccount,
    TResult Function(WalletImportFailure failure)? importingFailed,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        importingDAFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AccountsToImport value) accountsToImport,
    required TResult Function(_ReadyToImport value) readyToImport,
    required TResult Function(_InProcess value) inProcess,
    required TResult Function(_InDAImportProcess value) inDAImportProcess,
    required TResult Function(_InLoadMoreProcess value) loadedMore,
    required TResult Function(_Imported value) imported,
    required TResult Function(_ImportedMultipleWallets value)
        importedMultipleWallets,
    required TResult Function(_ImportedMultipleDerivativeWallets value)
        importedMultipleDerivativeWallets,
    required TResult Function(_ImportedMultipleWalletsWithSetPasscode value)
        importedMultipleWalletsWithSetPasscode,
    required TResult Function(_ImportedWithSetPasscode value)
        importedWithSetPasscode,
    required TResult Function(_NeedsToDeleteWatchAccount value)
        needsToDeleteTrackAccount,
    required TResult Function(ImportingFailed value) importingFailed,
    required TResult Function(_ImportingDAFailed value) importingDAFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AccountsToImport value)? accountsToImport,
    TResult? Function(_ReadyToImport value)? readyToImport,
    TResult? Function(_InProcess value)? inProcess,
    TResult? Function(_InDAImportProcess value)? inDAImportProcess,
    TResult? Function(_InLoadMoreProcess value)? loadedMore,
    TResult? Function(_Imported value)? imported,
    TResult? Function(_ImportedMultipleWallets value)? importedMultipleWallets,
    TResult? Function(_ImportedMultipleDerivativeWallets value)?
        importedMultipleDerivativeWallets,
    TResult? Function(_ImportedMultipleWalletsWithSetPasscode value)?
        importedMultipleWalletsWithSetPasscode,
    TResult? Function(_ImportedWithSetPasscode value)? importedWithSetPasscode,
    TResult? Function(_NeedsToDeleteWatchAccount value)?
        needsToDeleteTrackAccount,
    TResult? Function(ImportingFailed value)? importingFailed,
    TResult? Function(_ImportingDAFailed value)? importingDAFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AccountsToImport value)? accountsToImport,
    TResult Function(_ReadyToImport value)? readyToImport,
    TResult Function(_InProcess value)? inProcess,
    TResult Function(_InDAImportProcess value)? inDAImportProcess,
    TResult Function(_InLoadMoreProcess value)? loadedMore,
    TResult Function(_Imported value)? imported,
    TResult Function(_ImportedMultipleWallets value)? importedMultipleWallets,
    TResult Function(_ImportedMultipleDerivativeWallets value)?
        importedMultipleDerivativeWallets,
    TResult Function(_ImportedMultipleWalletsWithSetPasscode value)?
        importedMultipleWalletsWithSetPasscode,
    TResult Function(_ImportedWithSetPasscode value)? importedWithSetPasscode,
    TResult Function(_NeedsToDeleteWatchAccount value)?
        needsToDeleteTrackAccount,
    TResult Function(ImportingFailed value)? importingFailed,
    TResult Function(_ImportingDAFailed value)? importingDAFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletImportStateCopyWith<$Res> {
  factory $WalletImportStateCopyWith(
          WalletImportState value, $Res Function(WalletImportState) then) =
      _$WalletImportStateCopyWithImpl<$Res, WalletImportState>;
}

/// @nodoc
class _$WalletImportStateCopyWithImpl<$Res, $Val extends WalletImportState>
    implements $WalletImportStateCopyWith<$Res> {
  _$WalletImportStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$WalletImportStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial() : super._();

  @override
  String toString() {
    return 'WalletImportState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Account> accounts) accountsToImport,
    required TResult Function(List<Account> accounts) readyToImport,
    required TResult Function() inProcess,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)
        inDAImportProcess,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)
        loadedMore,
    required TResult Function(Account account) imported,
    required TResult Function(List<Account> accounts) importedMultipleWallets,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)
        importedMultipleDerivativeWallets,
    required TResult Function(List<Account> accounts)
        importedMultipleWalletsWithSetPasscode,
    required TResult Function(Account account) importedWithSetPasscode,
    required TResult Function(Account account) needsToDeleteTrackAccount,
    required TResult Function(WalletImportFailure failure) importingFailed,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)
        importingDAFailed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Account> accounts)? accountsToImport,
    TResult? Function(List<Account> accounts)? readyToImport,
    TResult? Function()? inProcess,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        inDAImportProcess,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        loadedMore,
    TResult? Function(Account account)? imported,
    TResult? Function(List<Account> accounts)? importedMultipleWallets,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        importedMultipleDerivativeWallets,
    TResult? Function(List<Account> accounts)?
        importedMultipleWalletsWithSetPasscode,
    TResult? Function(Account account)? importedWithSetPasscode,
    TResult? Function(Account account)? needsToDeleteTrackAccount,
    TResult? Function(WalletImportFailure failure)? importingFailed,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        importingDAFailed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Account> accounts)? accountsToImport,
    TResult Function(List<Account> accounts)? readyToImport,
    TResult Function()? inProcess,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        inDAImportProcess,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        loadedMore,
    TResult Function(Account account)? imported,
    TResult Function(List<Account> accounts)? importedMultipleWallets,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        importedMultipleDerivativeWallets,
    TResult Function(List<Account> accounts)?
        importedMultipleWalletsWithSetPasscode,
    TResult Function(Account account)? importedWithSetPasscode,
    TResult Function(Account account)? needsToDeleteTrackAccount,
    TResult Function(WalletImportFailure failure)? importingFailed,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        importingDAFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AccountsToImport value) accountsToImport,
    required TResult Function(_ReadyToImport value) readyToImport,
    required TResult Function(_InProcess value) inProcess,
    required TResult Function(_InDAImportProcess value) inDAImportProcess,
    required TResult Function(_InLoadMoreProcess value) loadedMore,
    required TResult Function(_Imported value) imported,
    required TResult Function(_ImportedMultipleWallets value)
        importedMultipleWallets,
    required TResult Function(_ImportedMultipleDerivativeWallets value)
        importedMultipleDerivativeWallets,
    required TResult Function(_ImportedMultipleWalletsWithSetPasscode value)
        importedMultipleWalletsWithSetPasscode,
    required TResult Function(_ImportedWithSetPasscode value)
        importedWithSetPasscode,
    required TResult Function(_NeedsToDeleteWatchAccount value)
        needsToDeleteTrackAccount,
    required TResult Function(ImportingFailed value) importingFailed,
    required TResult Function(_ImportingDAFailed value) importingDAFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AccountsToImport value)? accountsToImport,
    TResult? Function(_ReadyToImport value)? readyToImport,
    TResult? Function(_InProcess value)? inProcess,
    TResult? Function(_InDAImportProcess value)? inDAImportProcess,
    TResult? Function(_InLoadMoreProcess value)? loadedMore,
    TResult? Function(_Imported value)? imported,
    TResult? Function(_ImportedMultipleWallets value)? importedMultipleWallets,
    TResult? Function(_ImportedMultipleDerivativeWallets value)?
        importedMultipleDerivativeWallets,
    TResult? Function(_ImportedMultipleWalletsWithSetPasscode value)?
        importedMultipleWalletsWithSetPasscode,
    TResult? Function(_ImportedWithSetPasscode value)? importedWithSetPasscode,
    TResult? Function(_NeedsToDeleteWatchAccount value)?
        needsToDeleteTrackAccount,
    TResult? Function(ImportingFailed value)? importingFailed,
    TResult? Function(_ImportingDAFailed value)? importingDAFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AccountsToImport value)? accountsToImport,
    TResult Function(_ReadyToImport value)? readyToImport,
    TResult Function(_InProcess value)? inProcess,
    TResult Function(_InDAImportProcess value)? inDAImportProcess,
    TResult Function(_InLoadMoreProcess value)? loadedMore,
    TResult Function(_Imported value)? imported,
    TResult Function(_ImportedMultipleWallets value)? importedMultipleWallets,
    TResult Function(_ImportedMultipleDerivativeWallets value)?
        importedMultipleDerivativeWallets,
    TResult Function(_ImportedMultipleWalletsWithSetPasscode value)?
        importedMultipleWalletsWithSetPasscode,
    TResult Function(_ImportedWithSetPasscode value)? importedWithSetPasscode,
    TResult Function(_NeedsToDeleteWatchAccount value)?
        needsToDeleteTrackAccount,
    TResult Function(ImportingFailed value)? importingFailed,
    TResult Function(_ImportingDAFailed value)? importingDAFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends WalletImportState {
  const factory _Initial() = _$_Initial;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$$_AccountsToImportCopyWith<$Res> {
  factory _$$_AccountsToImportCopyWith(
          _$_AccountsToImport value, $Res Function(_$_AccountsToImport) then) =
      __$$_AccountsToImportCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Account> accounts});
}

/// @nodoc
class __$$_AccountsToImportCopyWithImpl<$Res>
    extends _$WalletImportStateCopyWithImpl<$Res, _$_AccountsToImport>
    implements _$$_AccountsToImportCopyWith<$Res> {
  __$$_AccountsToImportCopyWithImpl(
      _$_AccountsToImport _value, $Res Function(_$_AccountsToImport) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = null,
  }) {
    return _then(_$_AccountsToImport(
      null == accounts
          ? _value._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<Account>,
    ));
  }
}

/// @nodoc

class _$_AccountsToImport extends _AccountsToImport {
  const _$_AccountsToImport(final List<Account> accounts)
      : _accounts = accounts,
        super._();

  final List<Account> _accounts;
  @override
  List<Account> get accounts {
    if (_accounts is EqualUnmodifiableListView) return _accounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accounts);
  }

  @override
  String toString() {
    return 'WalletImportState.accountsToImport(accounts: $accounts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountsToImport &&
            const DeepCollectionEquality().equals(other._accounts, _accounts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_accounts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountsToImportCopyWith<_$_AccountsToImport> get copyWith =>
      __$$_AccountsToImportCopyWithImpl<_$_AccountsToImport>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Account> accounts) accountsToImport,
    required TResult Function(List<Account> accounts) readyToImport,
    required TResult Function() inProcess,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)
        inDAImportProcess,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)
        loadedMore,
    required TResult Function(Account account) imported,
    required TResult Function(List<Account> accounts) importedMultipleWallets,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)
        importedMultipleDerivativeWallets,
    required TResult Function(List<Account> accounts)
        importedMultipleWalletsWithSetPasscode,
    required TResult Function(Account account) importedWithSetPasscode,
    required TResult Function(Account account) needsToDeleteTrackAccount,
    required TResult Function(WalletImportFailure failure) importingFailed,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)
        importingDAFailed,
  }) {
    return accountsToImport(accounts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Account> accounts)? accountsToImport,
    TResult? Function(List<Account> accounts)? readyToImport,
    TResult? Function()? inProcess,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        inDAImportProcess,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        loadedMore,
    TResult? Function(Account account)? imported,
    TResult? Function(List<Account> accounts)? importedMultipleWallets,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        importedMultipleDerivativeWallets,
    TResult? Function(List<Account> accounts)?
        importedMultipleWalletsWithSetPasscode,
    TResult? Function(Account account)? importedWithSetPasscode,
    TResult? Function(Account account)? needsToDeleteTrackAccount,
    TResult? Function(WalletImportFailure failure)? importingFailed,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        importingDAFailed,
  }) {
    return accountsToImport?.call(accounts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Account> accounts)? accountsToImport,
    TResult Function(List<Account> accounts)? readyToImport,
    TResult Function()? inProcess,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        inDAImportProcess,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        loadedMore,
    TResult Function(Account account)? imported,
    TResult Function(List<Account> accounts)? importedMultipleWallets,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        importedMultipleDerivativeWallets,
    TResult Function(List<Account> accounts)?
        importedMultipleWalletsWithSetPasscode,
    TResult Function(Account account)? importedWithSetPasscode,
    TResult Function(Account account)? needsToDeleteTrackAccount,
    TResult Function(WalletImportFailure failure)? importingFailed,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        importingDAFailed,
    required TResult orElse(),
  }) {
    if (accountsToImport != null) {
      return accountsToImport(accounts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AccountsToImport value) accountsToImport,
    required TResult Function(_ReadyToImport value) readyToImport,
    required TResult Function(_InProcess value) inProcess,
    required TResult Function(_InDAImportProcess value) inDAImportProcess,
    required TResult Function(_InLoadMoreProcess value) loadedMore,
    required TResult Function(_Imported value) imported,
    required TResult Function(_ImportedMultipleWallets value)
        importedMultipleWallets,
    required TResult Function(_ImportedMultipleDerivativeWallets value)
        importedMultipleDerivativeWallets,
    required TResult Function(_ImportedMultipleWalletsWithSetPasscode value)
        importedMultipleWalletsWithSetPasscode,
    required TResult Function(_ImportedWithSetPasscode value)
        importedWithSetPasscode,
    required TResult Function(_NeedsToDeleteWatchAccount value)
        needsToDeleteTrackAccount,
    required TResult Function(ImportingFailed value) importingFailed,
    required TResult Function(_ImportingDAFailed value) importingDAFailed,
  }) {
    return accountsToImport(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AccountsToImport value)? accountsToImport,
    TResult? Function(_ReadyToImport value)? readyToImport,
    TResult? Function(_InProcess value)? inProcess,
    TResult? Function(_InDAImportProcess value)? inDAImportProcess,
    TResult? Function(_InLoadMoreProcess value)? loadedMore,
    TResult? Function(_Imported value)? imported,
    TResult? Function(_ImportedMultipleWallets value)? importedMultipleWallets,
    TResult? Function(_ImportedMultipleDerivativeWallets value)?
        importedMultipleDerivativeWallets,
    TResult? Function(_ImportedMultipleWalletsWithSetPasscode value)?
        importedMultipleWalletsWithSetPasscode,
    TResult? Function(_ImportedWithSetPasscode value)? importedWithSetPasscode,
    TResult? Function(_NeedsToDeleteWatchAccount value)?
        needsToDeleteTrackAccount,
    TResult? Function(ImportingFailed value)? importingFailed,
    TResult? Function(_ImportingDAFailed value)? importingDAFailed,
  }) {
    return accountsToImport?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AccountsToImport value)? accountsToImport,
    TResult Function(_ReadyToImport value)? readyToImport,
    TResult Function(_InProcess value)? inProcess,
    TResult Function(_InDAImportProcess value)? inDAImportProcess,
    TResult Function(_InLoadMoreProcess value)? loadedMore,
    TResult Function(_Imported value)? imported,
    TResult Function(_ImportedMultipleWallets value)? importedMultipleWallets,
    TResult Function(_ImportedMultipleDerivativeWallets value)?
        importedMultipleDerivativeWallets,
    TResult Function(_ImportedMultipleWalletsWithSetPasscode value)?
        importedMultipleWalletsWithSetPasscode,
    TResult Function(_ImportedWithSetPasscode value)? importedWithSetPasscode,
    TResult Function(_NeedsToDeleteWatchAccount value)?
        needsToDeleteTrackAccount,
    TResult Function(ImportingFailed value)? importingFailed,
    TResult Function(_ImportingDAFailed value)? importingDAFailed,
    required TResult orElse(),
  }) {
    if (accountsToImport != null) {
      return accountsToImport(this);
    }
    return orElse();
  }
}

abstract class _AccountsToImport extends WalletImportState {
  const factory _AccountsToImport(final List<Account> accounts) =
      _$_AccountsToImport;
  const _AccountsToImport._() : super._();

  List<Account> get accounts;
  @JsonKey(ignore: true)
  _$$_AccountsToImportCopyWith<_$_AccountsToImport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReadyToImportCopyWith<$Res> {
  factory _$$_ReadyToImportCopyWith(
          _$_ReadyToImport value, $Res Function(_$_ReadyToImport) then) =
      __$$_ReadyToImportCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Account> accounts});
}

/// @nodoc
class __$$_ReadyToImportCopyWithImpl<$Res>
    extends _$WalletImportStateCopyWithImpl<$Res, _$_ReadyToImport>
    implements _$$_ReadyToImportCopyWith<$Res> {
  __$$_ReadyToImportCopyWithImpl(
      _$_ReadyToImport _value, $Res Function(_$_ReadyToImport) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = null,
  }) {
    return _then(_$_ReadyToImport(
      null == accounts
          ? _value._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<Account>,
    ));
  }
}

/// @nodoc

class _$_ReadyToImport extends _ReadyToImport {
  const _$_ReadyToImport(final List<Account> accounts)
      : _accounts = accounts,
        super._();

  final List<Account> _accounts;
  @override
  List<Account> get accounts {
    if (_accounts is EqualUnmodifiableListView) return _accounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accounts);
  }

  @override
  String toString() {
    return 'WalletImportState.readyToImport(accounts: $accounts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReadyToImport &&
            const DeepCollectionEquality().equals(other._accounts, _accounts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_accounts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReadyToImportCopyWith<_$_ReadyToImport> get copyWith =>
      __$$_ReadyToImportCopyWithImpl<_$_ReadyToImport>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Account> accounts) accountsToImport,
    required TResult Function(List<Account> accounts) readyToImport,
    required TResult Function() inProcess,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)
        inDAImportProcess,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)
        loadedMore,
    required TResult Function(Account account) imported,
    required TResult Function(List<Account> accounts) importedMultipleWallets,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)
        importedMultipleDerivativeWallets,
    required TResult Function(List<Account> accounts)
        importedMultipleWalletsWithSetPasscode,
    required TResult Function(Account account) importedWithSetPasscode,
    required TResult Function(Account account) needsToDeleteTrackAccount,
    required TResult Function(WalletImportFailure failure) importingFailed,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)
        importingDAFailed,
  }) {
    return readyToImport(accounts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Account> accounts)? accountsToImport,
    TResult? Function(List<Account> accounts)? readyToImport,
    TResult? Function()? inProcess,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        inDAImportProcess,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        loadedMore,
    TResult? Function(Account account)? imported,
    TResult? Function(List<Account> accounts)? importedMultipleWallets,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        importedMultipleDerivativeWallets,
    TResult? Function(List<Account> accounts)?
        importedMultipleWalletsWithSetPasscode,
    TResult? Function(Account account)? importedWithSetPasscode,
    TResult? Function(Account account)? needsToDeleteTrackAccount,
    TResult? Function(WalletImportFailure failure)? importingFailed,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        importingDAFailed,
  }) {
    return readyToImport?.call(accounts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Account> accounts)? accountsToImport,
    TResult Function(List<Account> accounts)? readyToImport,
    TResult Function()? inProcess,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        inDAImportProcess,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        loadedMore,
    TResult Function(Account account)? imported,
    TResult Function(List<Account> accounts)? importedMultipleWallets,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        importedMultipleDerivativeWallets,
    TResult Function(List<Account> accounts)?
        importedMultipleWalletsWithSetPasscode,
    TResult Function(Account account)? importedWithSetPasscode,
    TResult Function(Account account)? needsToDeleteTrackAccount,
    TResult Function(WalletImportFailure failure)? importingFailed,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        importingDAFailed,
    required TResult orElse(),
  }) {
    if (readyToImport != null) {
      return readyToImport(accounts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AccountsToImport value) accountsToImport,
    required TResult Function(_ReadyToImport value) readyToImport,
    required TResult Function(_InProcess value) inProcess,
    required TResult Function(_InDAImportProcess value) inDAImportProcess,
    required TResult Function(_InLoadMoreProcess value) loadedMore,
    required TResult Function(_Imported value) imported,
    required TResult Function(_ImportedMultipleWallets value)
        importedMultipleWallets,
    required TResult Function(_ImportedMultipleDerivativeWallets value)
        importedMultipleDerivativeWallets,
    required TResult Function(_ImportedMultipleWalletsWithSetPasscode value)
        importedMultipleWalletsWithSetPasscode,
    required TResult Function(_ImportedWithSetPasscode value)
        importedWithSetPasscode,
    required TResult Function(_NeedsToDeleteWatchAccount value)
        needsToDeleteTrackAccount,
    required TResult Function(ImportingFailed value) importingFailed,
    required TResult Function(_ImportingDAFailed value) importingDAFailed,
  }) {
    return readyToImport(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AccountsToImport value)? accountsToImport,
    TResult? Function(_ReadyToImport value)? readyToImport,
    TResult? Function(_InProcess value)? inProcess,
    TResult? Function(_InDAImportProcess value)? inDAImportProcess,
    TResult? Function(_InLoadMoreProcess value)? loadedMore,
    TResult? Function(_Imported value)? imported,
    TResult? Function(_ImportedMultipleWallets value)? importedMultipleWallets,
    TResult? Function(_ImportedMultipleDerivativeWallets value)?
        importedMultipleDerivativeWallets,
    TResult? Function(_ImportedMultipleWalletsWithSetPasscode value)?
        importedMultipleWalletsWithSetPasscode,
    TResult? Function(_ImportedWithSetPasscode value)? importedWithSetPasscode,
    TResult? Function(_NeedsToDeleteWatchAccount value)?
        needsToDeleteTrackAccount,
    TResult? Function(ImportingFailed value)? importingFailed,
    TResult? Function(_ImportingDAFailed value)? importingDAFailed,
  }) {
    return readyToImport?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AccountsToImport value)? accountsToImport,
    TResult Function(_ReadyToImport value)? readyToImport,
    TResult Function(_InProcess value)? inProcess,
    TResult Function(_InDAImportProcess value)? inDAImportProcess,
    TResult Function(_InLoadMoreProcess value)? loadedMore,
    TResult Function(_Imported value)? imported,
    TResult Function(_ImportedMultipleWallets value)? importedMultipleWallets,
    TResult Function(_ImportedMultipleDerivativeWallets value)?
        importedMultipleDerivativeWallets,
    TResult Function(_ImportedMultipleWalletsWithSetPasscode value)?
        importedMultipleWalletsWithSetPasscode,
    TResult Function(_ImportedWithSetPasscode value)? importedWithSetPasscode,
    TResult Function(_NeedsToDeleteWatchAccount value)?
        needsToDeleteTrackAccount,
    TResult Function(ImportingFailed value)? importingFailed,
    TResult Function(_ImportingDAFailed value)? importingDAFailed,
    required TResult orElse(),
  }) {
    if (readyToImport != null) {
      return readyToImport(this);
    }
    return orElse();
  }
}

abstract class _ReadyToImport extends WalletImportState {
  const factory _ReadyToImport(final List<Account> accounts) = _$_ReadyToImport;
  const _ReadyToImport._() : super._();

  List<Account> get accounts;
  @JsonKey(ignore: true)
  _$$_ReadyToImportCopyWith<_$_ReadyToImport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InProcessCopyWith<$Res> {
  factory _$$_InProcessCopyWith(
          _$_InProcess value, $Res Function(_$_InProcess) then) =
      __$$_InProcessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InProcessCopyWithImpl<$Res>
    extends _$WalletImportStateCopyWithImpl<$Res, _$_InProcess>
    implements _$$_InProcessCopyWith<$Res> {
  __$$_InProcessCopyWithImpl(
      _$_InProcess _value, $Res Function(_$_InProcess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InProcess extends _InProcess {
  const _$_InProcess() : super._();

  @override
  String toString() {
    return 'WalletImportState.inProcess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InProcess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Account> accounts) accountsToImport,
    required TResult Function(List<Account> accounts) readyToImport,
    required TResult Function() inProcess,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)
        inDAImportProcess,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)
        loadedMore,
    required TResult Function(Account account) imported,
    required TResult Function(List<Account> accounts) importedMultipleWallets,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)
        importedMultipleDerivativeWallets,
    required TResult Function(List<Account> accounts)
        importedMultipleWalletsWithSetPasscode,
    required TResult Function(Account account) importedWithSetPasscode,
    required TResult Function(Account account) needsToDeleteTrackAccount,
    required TResult Function(WalletImportFailure failure) importingFailed,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)
        importingDAFailed,
  }) {
    return inProcess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Account> accounts)? accountsToImport,
    TResult? Function(List<Account> accounts)? readyToImport,
    TResult? Function()? inProcess,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        inDAImportProcess,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        loadedMore,
    TResult? Function(Account account)? imported,
    TResult? Function(List<Account> accounts)? importedMultipleWallets,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        importedMultipleDerivativeWallets,
    TResult? Function(List<Account> accounts)?
        importedMultipleWalletsWithSetPasscode,
    TResult? Function(Account account)? importedWithSetPasscode,
    TResult? Function(Account account)? needsToDeleteTrackAccount,
    TResult? Function(WalletImportFailure failure)? importingFailed,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        importingDAFailed,
  }) {
    return inProcess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Account> accounts)? accountsToImport,
    TResult Function(List<Account> accounts)? readyToImport,
    TResult Function()? inProcess,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        inDAImportProcess,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        loadedMore,
    TResult Function(Account account)? imported,
    TResult Function(List<Account> accounts)? importedMultipleWallets,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        importedMultipleDerivativeWallets,
    TResult Function(List<Account> accounts)?
        importedMultipleWalletsWithSetPasscode,
    TResult Function(Account account)? importedWithSetPasscode,
    TResult Function(Account account)? needsToDeleteTrackAccount,
    TResult Function(WalletImportFailure failure)? importingFailed,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        importingDAFailed,
    required TResult orElse(),
  }) {
    if (inProcess != null) {
      return inProcess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AccountsToImport value) accountsToImport,
    required TResult Function(_ReadyToImport value) readyToImport,
    required TResult Function(_InProcess value) inProcess,
    required TResult Function(_InDAImportProcess value) inDAImportProcess,
    required TResult Function(_InLoadMoreProcess value) loadedMore,
    required TResult Function(_Imported value) imported,
    required TResult Function(_ImportedMultipleWallets value)
        importedMultipleWallets,
    required TResult Function(_ImportedMultipleDerivativeWallets value)
        importedMultipleDerivativeWallets,
    required TResult Function(_ImportedMultipleWalletsWithSetPasscode value)
        importedMultipleWalletsWithSetPasscode,
    required TResult Function(_ImportedWithSetPasscode value)
        importedWithSetPasscode,
    required TResult Function(_NeedsToDeleteWatchAccount value)
        needsToDeleteTrackAccount,
    required TResult Function(ImportingFailed value) importingFailed,
    required TResult Function(_ImportingDAFailed value) importingDAFailed,
  }) {
    return inProcess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AccountsToImport value)? accountsToImport,
    TResult? Function(_ReadyToImport value)? readyToImport,
    TResult? Function(_InProcess value)? inProcess,
    TResult? Function(_InDAImportProcess value)? inDAImportProcess,
    TResult? Function(_InLoadMoreProcess value)? loadedMore,
    TResult? Function(_Imported value)? imported,
    TResult? Function(_ImportedMultipleWallets value)? importedMultipleWallets,
    TResult? Function(_ImportedMultipleDerivativeWallets value)?
        importedMultipleDerivativeWallets,
    TResult? Function(_ImportedMultipleWalletsWithSetPasscode value)?
        importedMultipleWalletsWithSetPasscode,
    TResult? Function(_ImportedWithSetPasscode value)? importedWithSetPasscode,
    TResult? Function(_NeedsToDeleteWatchAccount value)?
        needsToDeleteTrackAccount,
    TResult? Function(ImportingFailed value)? importingFailed,
    TResult? Function(_ImportingDAFailed value)? importingDAFailed,
  }) {
    return inProcess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AccountsToImport value)? accountsToImport,
    TResult Function(_ReadyToImport value)? readyToImport,
    TResult Function(_InProcess value)? inProcess,
    TResult Function(_InDAImportProcess value)? inDAImportProcess,
    TResult Function(_InLoadMoreProcess value)? loadedMore,
    TResult Function(_Imported value)? imported,
    TResult Function(_ImportedMultipleWallets value)? importedMultipleWallets,
    TResult Function(_ImportedMultipleDerivativeWallets value)?
        importedMultipleDerivativeWallets,
    TResult Function(_ImportedMultipleWalletsWithSetPasscode value)?
        importedMultipleWalletsWithSetPasscode,
    TResult Function(_ImportedWithSetPasscode value)? importedWithSetPasscode,
    TResult Function(_NeedsToDeleteWatchAccount value)?
        needsToDeleteTrackAccount,
    TResult Function(ImportingFailed value)? importingFailed,
    TResult Function(_ImportingDAFailed value)? importingDAFailed,
    required TResult orElse(),
  }) {
    if (inProcess != null) {
      return inProcess(this);
    }
    return orElse();
  }
}

abstract class _InProcess extends WalletImportState {
  const factory _InProcess() = _$_InProcess;
  const _InProcess._() : super._();
}

/// @nodoc
abstract class _$$_InDAImportProcessCopyWith<$Res> {
  factory _$$_InDAImportProcessCopyWith(_$_InDAImportProcess value,
          $Res Function(_$_InDAImportProcess) then) =
      __$$_InDAImportProcessCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Account> accounts,
      Set<int> selected,
      Map<String, List<TokenBalance>> balances});
}

/// @nodoc
class __$$_InDAImportProcessCopyWithImpl<$Res>
    extends _$WalletImportStateCopyWithImpl<$Res, _$_InDAImportProcess>
    implements _$$_InDAImportProcessCopyWith<$Res> {
  __$$_InDAImportProcessCopyWithImpl(
      _$_InDAImportProcess _value, $Res Function(_$_InDAImportProcess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = null,
    Object? selected = null,
    Object? balances = null,
  }) {
    return _then(_$_InDAImportProcess(
      null == accounts
          ? _value._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<Account>,
      null == selected
          ? _value._selected
          : selected // ignore: cast_nullable_to_non_nullable
              as Set<int>,
      null == balances
          ? _value._balances
          : balances // ignore: cast_nullable_to_non_nullable
              as Map<String, List<TokenBalance>>,
    ));
  }
}

/// @nodoc

class _$_InDAImportProcess extends _InDAImportProcess {
  const _$_InDAImportProcess(final List<Account> accounts,
      final Set<int> selected, final Map<String, List<TokenBalance>> balances)
      : _accounts = accounts,
        _selected = selected,
        _balances = balances,
        super._();

  final List<Account> _accounts;
  @override
  List<Account> get accounts {
    if (_accounts is EqualUnmodifiableListView) return _accounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accounts);
  }

  final Set<int> _selected;
  @override
  Set<int> get selected {
    if (_selected is EqualUnmodifiableSetView) return _selected;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_selected);
  }

  final Map<String, List<TokenBalance>> _balances;
  @override
  Map<String, List<TokenBalance>> get balances {
    if (_balances is EqualUnmodifiableMapView) return _balances;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_balances);
  }

  @override
  String toString() {
    return 'WalletImportState.inDAImportProcess(accounts: $accounts, selected: $selected, balances: $balances)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InDAImportProcess &&
            const DeepCollectionEquality().equals(other._accounts, _accounts) &&
            const DeepCollectionEquality().equals(other._selected, _selected) &&
            const DeepCollectionEquality().equals(other._balances, _balances));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_accounts),
      const DeepCollectionEquality().hash(_selected),
      const DeepCollectionEquality().hash(_balances));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InDAImportProcessCopyWith<_$_InDAImportProcess> get copyWith =>
      __$$_InDAImportProcessCopyWithImpl<_$_InDAImportProcess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Account> accounts) accountsToImport,
    required TResult Function(List<Account> accounts) readyToImport,
    required TResult Function() inProcess,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)
        inDAImportProcess,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)
        loadedMore,
    required TResult Function(Account account) imported,
    required TResult Function(List<Account> accounts) importedMultipleWallets,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)
        importedMultipleDerivativeWallets,
    required TResult Function(List<Account> accounts)
        importedMultipleWalletsWithSetPasscode,
    required TResult Function(Account account) importedWithSetPasscode,
    required TResult Function(Account account) needsToDeleteTrackAccount,
    required TResult Function(WalletImportFailure failure) importingFailed,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)
        importingDAFailed,
  }) {
    return inDAImportProcess(accounts, selected, balances);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Account> accounts)? accountsToImport,
    TResult? Function(List<Account> accounts)? readyToImport,
    TResult? Function()? inProcess,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        inDAImportProcess,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        loadedMore,
    TResult? Function(Account account)? imported,
    TResult? Function(List<Account> accounts)? importedMultipleWallets,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        importedMultipleDerivativeWallets,
    TResult? Function(List<Account> accounts)?
        importedMultipleWalletsWithSetPasscode,
    TResult? Function(Account account)? importedWithSetPasscode,
    TResult? Function(Account account)? needsToDeleteTrackAccount,
    TResult? Function(WalletImportFailure failure)? importingFailed,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        importingDAFailed,
  }) {
    return inDAImportProcess?.call(accounts, selected, balances);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Account> accounts)? accountsToImport,
    TResult Function(List<Account> accounts)? readyToImport,
    TResult Function()? inProcess,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        inDAImportProcess,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        loadedMore,
    TResult Function(Account account)? imported,
    TResult Function(List<Account> accounts)? importedMultipleWallets,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        importedMultipleDerivativeWallets,
    TResult Function(List<Account> accounts)?
        importedMultipleWalletsWithSetPasscode,
    TResult Function(Account account)? importedWithSetPasscode,
    TResult Function(Account account)? needsToDeleteTrackAccount,
    TResult Function(WalletImportFailure failure)? importingFailed,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        importingDAFailed,
    required TResult orElse(),
  }) {
    if (inDAImportProcess != null) {
      return inDAImportProcess(accounts, selected, balances);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AccountsToImport value) accountsToImport,
    required TResult Function(_ReadyToImport value) readyToImport,
    required TResult Function(_InProcess value) inProcess,
    required TResult Function(_InDAImportProcess value) inDAImportProcess,
    required TResult Function(_InLoadMoreProcess value) loadedMore,
    required TResult Function(_Imported value) imported,
    required TResult Function(_ImportedMultipleWallets value)
        importedMultipleWallets,
    required TResult Function(_ImportedMultipleDerivativeWallets value)
        importedMultipleDerivativeWallets,
    required TResult Function(_ImportedMultipleWalletsWithSetPasscode value)
        importedMultipleWalletsWithSetPasscode,
    required TResult Function(_ImportedWithSetPasscode value)
        importedWithSetPasscode,
    required TResult Function(_NeedsToDeleteWatchAccount value)
        needsToDeleteTrackAccount,
    required TResult Function(ImportingFailed value) importingFailed,
    required TResult Function(_ImportingDAFailed value) importingDAFailed,
  }) {
    return inDAImportProcess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AccountsToImport value)? accountsToImport,
    TResult? Function(_ReadyToImport value)? readyToImport,
    TResult? Function(_InProcess value)? inProcess,
    TResult? Function(_InDAImportProcess value)? inDAImportProcess,
    TResult? Function(_InLoadMoreProcess value)? loadedMore,
    TResult? Function(_Imported value)? imported,
    TResult? Function(_ImportedMultipleWallets value)? importedMultipleWallets,
    TResult? Function(_ImportedMultipleDerivativeWallets value)?
        importedMultipleDerivativeWallets,
    TResult? Function(_ImportedMultipleWalletsWithSetPasscode value)?
        importedMultipleWalletsWithSetPasscode,
    TResult? Function(_ImportedWithSetPasscode value)? importedWithSetPasscode,
    TResult? Function(_NeedsToDeleteWatchAccount value)?
        needsToDeleteTrackAccount,
    TResult? Function(ImportingFailed value)? importingFailed,
    TResult? Function(_ImportingDAFailed value)? importingDAFailed,
  }) {
    return inDAImportProcess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AccountsToImport value)? accountsToImport,
    TResult Function(_ReadyToImport value)? readyToImport,
    TResult Function(_InProcess value)? inProcess,
    TResult Function(_InDAImportProcess value)? inDAImportProcess,
    TResult Function(_InLoadMoreProcess value)? loadedMore,
    TResult Function(_Imported value)? imported,
    TResult Function(_ImportedMultipleWallets value)? importedMultipleWallets,
    TResult Function(_ImportedMultipleDerivativeWallets value)?
        importedMultipleDerivativeWallets,
    TResult Function(_ImportedMultipleWalletsWithSetPasscode value)?
        importedMultipleWalletsWithSetPasscode,
    TResult Function(_ImportedWithSetPasscode value)? importedWithSetPasscode,
    TResult Function(_NeedsToDeleteWatchAccount value)?
        needsToDeleteTrackAccount,
    TResult Function(ImportingFailed value)? importingFailed,
    TResult Function(_ImportingDAFailed value)? importingDAFailed,
    required TResult orElse(),
  }) {
    if (inDAImportProcess != null) {
      return inDAImportProcess(this);
    }
    return orElse();
  }
}

abstract class _InDAImportProcess extends WalletImportState {
  const factory _InDAImportProcess(
      final List<Account> accounts,
      final Set<int> selected,
      final Map<String, List<TokenBalance>> balances) = _$_InDAImportProcess;
  const _InDAImportProcess._() : super._();

  List<Account> get accounts;
  Set<int> get selected;
  Map<String, List<TokenBalance>> get balances;
  @JsonKey(ignore: true)
  _$$_InDAImportProcessCopyWith<_$_InDAImportProcess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InLoadMoreProcessCopyWith<$Res> {
  factory _$$_InLoadMoreProcessCopyWith(_$_InLoadMoreProcess value,
          $Res Function(_$_InLoadMoreProcess) then) =
      __$$_InLoadMoreProcessCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Account> accounts,
      Set<int> selected,
      Map<String, List<TokenBalance>> balances,
      String seedPhrase});
}

/// @nodoc
class __$$_InLoadMoreProcessCopyWithImpl<$Res>
    extends _$WalletImportStateCopyWithImpl<$Res, _$_InLoadMoreProcess>
    implements _$$_InLoadMoreProcessCopyWith<$Res> {
  __$$_InLoadMoreProcessCopyWithImpl(
      _$_InLoadMoreProcess _value, $Res Function(_$_InLoadMoreProcess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = null,
    Object? selected = null,
    Object? balances = null,
    Object? seedPhrase = null,
  }) {
    return _then(_$_InLoadMoreProcess(
      null == accounts
          ? _value._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<Account>,
      null == selected
          ? _value._selected
          : selected // ignore: cast_nullable_to_non_nullable
              as Set<int>,
      null == balances
          ? _value._balances
          : balances // ignore: cast_nullable_to_non_nullable
              as Map<String, List<TokenBalance>>,
      null == seedPhrase
          ? _value.seedPhrase
          : seedPhrase // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InLoadMoreProcess extends _InLoadMoreProcess {
  const _$_InLoadMoreProcess(
      final List<Account> accounts,
      final Set<int> selected,
      final Map<String, List<TokenBalance>> balances,
      this.seedPhrase)
      : _accounts = accounts,
        _selected = selected,
        _balances = balances,
        super._();

  final List<Account> _accounts;
  @override
  List<Account> get accounts {
    if (_accounts is EqualUnmodifiableListView) return _accounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accounts);
  }

  final Set<int> _selected;
  @override
  Set<int> get selected {
    if (_selected is EqualUnmodifiableSetView) return _selected;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_selected);
  }

  final Map<String, List<TokenBalance>> _balances;
  @override
  Map<String, List<TokenBalance>> get balances {
    if (_balances is EqualUnmodifiableMapView) return _balances;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_balances);
  }

  @override
  final String seedPhrase;

  @override
  String toString() {
    return 'WalletImportState.loadedMore(accounts: $accounts, selected: $selected, balances: $balances, seedPhrase: $seedPhrase)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InLoadMoreProcess &&
            const DeepCollectionEquality().equals(other._accounts, _accounts) &&
            const DeepCollectionEquality().equals(other._selected, _selected) &&
            const DeepCollectionEquality().equals(other._balances, _balances) &&
            (identical(other.seedPhrase, seedPhrase) ||
                other.seedPhrase == seedPhrase));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_accounts),
      const DeepCollectionEquality().hash(_selected),
      const DeepCollectionEquality().hash(_balances),
      seedPhrase);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InLoadMoreProcessCopyWith<_$_InLoadMoreProcess> get copyWith =>
      __$$_InLoadMoreProcessCopyWithImpl<_$_InLoadMoreProcess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Account> accounts) accountsToImport,
    required TResult Function(List<Account> accounts) readyToImport,
    required TResult Function() inProcess,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)
        inDAImportProcess,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)
        loadedMore,
    required TResult Function(Account account) imported,
    required TResult Function(List<Account> accounts) importedMultipleWallets,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)
        importedMultipleDerivativeWallets,
    required TResult Function(List<Account> accounts)
        importedMultipleWalletsWithSetPasscode,
    required TResult Function(Account account) importedWithSetPasscode,
    required TResult Function(Account account) needsToDeleteTrackAccount,
    required TResult Function(WalletImportFailure failure) importingFailed,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)
        importingDAFailed,
  }) {
    return loadedMore(accounts, selected, balances, seedPhrase);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Account> accounts)? accountsToImport,
    TResult? Function(List<Account> accounts)? readyToImport,
    TResult? Function()? inProcess,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        inDAImportProcess,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        loadedMore,
    TResult? Function(Account account)? imported,
    TResult? Function(List<Account> accounts)? importedMultipleWallets,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        importedMultipleDerivativeWallets,
    TResult? Function(List<Account> accounts)?
        importedMultipleWalletsWithSetPasscode,
    TResult? Function(Account account)? importedWithSetPasscode,
    TResult? Function(Account account)? needsToDeleteTrackAccount,
    TResult? Function(WalletImportFailure failure)? importingFailed,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        importingDAFailed,
  }) {
    return loadedMore?.call(accounts, selected, balances, seedPhrase);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Account> accounts)? accountsToImport,
    TResult Function(List<Account> accounts)? readyToImport,
    TResult Function()? inProcess,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        inDAImportProcess,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        loadedMore,
    TResult Function(Account account)? imported,
    TResult Function(List<Account> accounts)? importedMultipleWallets,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        importedMultipleDerivativeWallets,
    TResult Function(List<Account> accounts)?
        importedMultipleWalletsWithSetPasscode,
    TResult Function(Account account)? importedWithSetPasscode,
    TResult Function(Account account)? needsToDeleteTrackAccount,
    TResult Function(WalletImportFailure failure)? importingFailed,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        importingDAFailed,
    required TResult orElse(),
  }) {
    if (loadedMore != null) {
      return loadedMore(accounts, selected, balances, seedPhrase);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AccountsToImport value) accountsToImport,
    required TResult Function(_ReadyToImport value) readyToImport,
    required TResult Function(_InProcess value) inProcess,
    required TResult Function(_InDAImportProcess value) inDAImportProcess,
    required TResult Function(_InLoadMoreProcess value) loadedMore,
    required TResult Function(_Imported value) imported,
    required TResult Function(_ImportedMultipleWallets value)
        importedMultipleWallets,
    required TResult Function(_ImportedMultipleDerivativeWallets value)
        importedMultipleDerivativeWallets,
    required TResult Function(_ImportedMultipleWalletsWithSetPasscode value)
        importedMultipleWalletsWithSetPasscode,
    required TResult Function(_ImportedWithSetPasscode value)
        importedWithSetPasscode,
    required TResult Function(_NeedsToDeleteWatchAccount value)
        needsToDeleteTrackAccount,
    required TResult Function(ImportingFailed value) importingFailed,
    required TResult Function(_ImportingDAFailed value) importingDAFailed,
  }) {
    return loadedMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AccountsToImport value)? accountsToImport,
    TResult? Function(_ReadyToImport value)? readyToImport,
    TResult? Function(_InProcess value)? inProcess,
    TResult? Function(_InDAImportProcess value)? inDAImportProcess,
    TResult? Function(_InLoadMoreProcess value)? loadedMore,
    TResult? Function(_Imported value)? imported,
    TResult? Function(_ImportedMultipleWallets value)? importedMultipleWallets,
    TResult? Function(_ImportedMultipleDerivativeWallets value)?
        importedMultipleDerivativeWallets,
    TResult? Function(_ImportedMultipleWalletsWithSetPasscode value)?
        importedMultipleWalletsWithSetPasscode,
    TResult? Function(_ImportedWithSetPasscode value)? importedWithSetPasscode,
    TResult? Function(_NeedsToDeleteWatchAccount value)?
        needsToDeleteTrackAccount,
    TResult? Function(ImportingFailed value)? importingFailed,
    TResult? Function(_ImportingDAFailed value)? importingDAFailed,
  }) {
    return loadedMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AccountsToImport value)? accountsToImport,
    TResult Function(_ReadyToImport value)? readyToImport,
    TResult Function(_InProcess value)? inProcess,
    TResult Function(_InDAImportProcess value)? inDAImportProcess,
    TResult Function(_InLoadMoreProcess value)? loadedMore,
    TResult Function(_Imported value)? imported,
    TResult Function(_ImportedMultipleWallets value)? importedMultipleWallets,
    TResult Function(_ImportedMultipleDerivativeWallets value)?
        importedMultipleDerivativeWallets,
    TResult Function(_ImportedMultipleWalletsWithSetPasscode value)?
        importedMultipleWalletsWithSetPasscode,
    TResult Function(_ImportedWithSetPasscode value)? importedWithSetPasscode,
    TResult Function(_NeedsToDeleteWatchAccount value)?
        needsToDeleteTrackAccount,
    TResult Function(ImportingFailed value)? importingFailed,
    TResult Function(_ImportingDAFailed value)? importingDAFailed,
    required TResult orElse(),
  }) {
    if (loadedMore != null) {
      return loadedMore(this);
    }
    return orElse();
  }
}

abstract class _InLoadMoreProcess extends WalletImportState {
  const factory _InLoadMoreProcess(
      final List<Account> accounts,
      final Set<int> selected,
      final Map<String, List<TokenBalance>> balances,
      final String seedPhrase) = _$_InLoadMoreProcess;
  const _InLoadMoreProcess._() : super._();

  List<Account> get accounts;
  Set<int> get selected;
  Map<String, List<TokenBalance>> get balances;
  String get seedPhrase;
  @JsonKey(ignore: true)
  _$$_InLoadMoreProcessCopyWith<_$_InLoadMoreProcess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ImportedCopyWith<$Res> {
  factory _$$_ImportedCopyWith(
          _$_Imported value, $Res Function(_$_Imported) then) =
      __$$_ImportedCopyWithImpl<$Res>;
  @useResult
  $Res call({Account account});
}

/// @nodoc
class __$$_ImportedCopyWithImpl<$Res>
    extends _$WalletImportStateCopyWithImpl<$Res, _$_Imported>
    implements _$$_ImportedCopyWith<$Res> {
  __$$_ImportedCopyWithImpl(
      _$_Imported _value, $Res Function(_$_Imported) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
  }) {
    return _then(_$_Imported(
      null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
    ));
  }
}

/// @nodoc

class _$_Imported extends _Imported {
  const _$_Imported(this.account) : super._();

  @override
  final Account account;

  @override
  String toString() {
    return 'WalletImportState.imported(account: $account)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Imported &&
            (identical(other.account, account) || other.account == account));
  }

  @override
  int get hashCode => Object.hash(runtimeType, account);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImportedCopyWith<_$_Imported> get copyWith =>
      __$$_ImportedCopyWithImpl<_$_Imported>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Account> accounts) accountsToImport,
    required TResult Function(List<Account> accounts) readyToImport,
    required TResult Function() inProcess,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)
        inDAImportProcess,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)
        loadedMore,
    required TResult Function(Account account) imported,
    required TResult Function(List<Account> accounts) importedMultipleWallets,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)
        importedMultipleDerivativeWallets,
    required TResult Function(List<Account> accounts)
        importedMultipleWalletsWithSetPasscode,
    required TResult Function(Account account) importedWithSetPasscode,
    required TResult Function(Account account) needsToDeleteTrackAccount,
    required TResult Function(WalletImportFailure failure) importingFailed,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)
        importingDAFailed,
  }) {
    return imported(account);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Account> accounts)? accountsToImport,
    TResult? Function(List<Account> accounts)? readyToImport,
    TResult? Function()? inProcess,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        inDAImportProcess,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        loadedMore,
    TResult? Function(Account account)? imported,
    TResult? Function(List<Account> accounts)? importedMultipleWallets,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        importedMultipleDerivativeWallets,
    TResult? Function(List<Account> accounts)?
        importedMultipleWalletsWithSetPasscode,
    TResult? Function(Account account)? importedWithSetPasscode,
    TResult? Function(Account account)? needsToDeleteTrackAccount,
    TResult? Function(WalletImportFailure failure)? importingFailed,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        importingDAFailed,
  }) {
    return imported?.call(account);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Account> accounts)? accountsToImport,
    TResult Function(List<Account> accounts)? readyToImport,
    TResult Function()? inProcess,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        inDAImportProcess,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        loadedMore,
    TResult Function(Account account)? imported,
    TResult Function(List<Account> accounts)? importedMultipleWallets,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        importedMultipleDerivativeWallets,
    TResult Function(List<Account> accounts)?
        importedMultipleWalletsWithSetPasscode,
    TResult Function(Account account)? importedWithSetPasscode,
    TResult Function(Account account)? needsToDeleteTrackAccount,
    TResult Function(WalletImportFailure failure)? importingFailed,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        importingDAFailed,
    required TResult orElse(),
  }) {
    if (imported != null) {
      return imported(account);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AccountsToImport value) accountsToImport,
    required TResult Function(_ReadyToImport value) readyToImport,
    required TResult Function(_InProcess value) inProcess,
    required TResult Function(_InDAImportProcess value) inDAImportProcess,
    required TResult Function(_InLoadMoreProcess value) loadedMore,
    required TResult Function(_Imported value) imported,
    required TResult Function(_ImportedMultipleWallets value)
        importedMultipleWallets,
    required TResult Function(_ImportedMultipleDerivativeWallets value)
        importedMultipleDerivativeWallets,
    required TResult Function(_ImportedMultipleWalletsWithSetPasscode value)
        importedMultipleWalletsWithSetPasscode,
    required TResult Function(_ImportedWithSetPasscode value)
        importedWithSetPasscode,
    required TResult Function(_NeedsToDeleteWatchAccount value)
        needsToDeleteTrackAccount,
    required TResult Function(ImportingFailed value) importingFailed,
    required TResult Function(_ImportingDAFailed value) importingDAFailed,
  }) {
    return imported(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AccountsToImport value)? accountsToImport,
    TResult? Function(_ReadyToImport value)? readyToImport,
    TResult? Function(_InProcess value)? inProcess,
    TResult? Function(_InDAImportProcess value)? inDAImportProcess,
    TResult? Function(_InLoadMoreProcess value)? loadedMore,
    TResult? Function(_Imported value)? imported,
    TResult? Function(_ImportedMultipleWallets value)? importedMultipleWallets,
    TResult? Function(_ImportedMultipleDerivativeWallets value)?
        importedMultipleDerivativeWallets,
    TResult? Function(_ImportedMultipleWalletsWithSetPasscode value)?
        importedMultipleWalletsWithSetPasscode,
    TResult? Function(_ImportedWithSetPasscode value)? importedWithSetPasscode,
    TResult? Function(_NeedsToDeleteWatchAccount value)?
        needsToDeleteTrackAccount,
    TResult? Function(ImportingFailed value)? importingFailed,
    TResult? Function(_ImportingDAFailed value)? importingDAFailed,
  }) {
    return imported?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AccountsToImport value)? accountsToImport,
    TResult Function(_ReadyToImport value)? readyToImport,
    TResult Function(_InProcess value)? inProcess,
    TResult Function(_InDAImportProcess value)? inDAImportProcess,
    TResult Function(_InLoadMoreProcess value)? loadedMore,
    TResult Function(_Imported value)? imported,
    TResult Function(_ImportedMultipleWallets value)? importedMultipleWallets,
    TResult Function(_ImportedMultipleDerivativeWallets value)?
        importedMultipleDerivativeWallets,
    TResult Function(_ImportedMultipleWalletsWithSetPasscode value)?
        importedMultipleWalletsWithSetPasscode,
    TResult Function(_ImportedWithSetPasscode value)? importedWithSetPasscode,
    TResult Function(_NeedsToDeleteWatchAccount value)?
        needsToDeleteTrackAccount,
    TResult Function(ImportingFailed value)? importingFailed,
    TResult Function(_ImportingDAFailed value)? importingDAFailed,
    required TResult orElse(),
  }) {
    if (imported != null) {
      return imported(this);
    }
    return orElse();
  }
}

abstract class _Imported extends WalletImportState {
  const factory _Imported(final Account account) = _$_Imported;
  const _Imported._() : super._();

  Account get account;
  @JsonKey(ignore: true)
  _$$_ImportedCopyWith<_$_Imported> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ImportedMultipleWalletsCopyWith<$Res> {
  factory _$$_ImportedMultipleWalletsCopyWith(_$_ImportedMultipleWallets value,
          $Res Function(_$_ImportedMultipleWallets) then) =
      __$$_ImportedMultipleWalletsCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Account> accounts});
}

/// @nodoc
class __$$_ImportedMultipleWalletsCopyWithImpl<$Res>
    extends _$WalletImportStateCopyWithImpl<$Res, _$_ImportedMultipleWallets>
    implements _$$_ImportedMultipleWalletsCopyWith<$Res> {
  __$$_ImportedMultipleWalletsCopyWithImpl(_$_ImportedMultipleWallets _value,
      $Res Function(_$_ImportedMultipleWallets) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = null,
  }) {
    return _then(_$_ImportedMultipleWallets(
      null == accounts
          ? _value._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<Account>,
    ));
  }
}

/// @nodoc

class _$_ImportedMultipleWallets extends _ImportedMultipleWallets {
  const _$_ImportedMultipleWallets(final List<Account> accounts)
      : _accounts = accounts,
        super._();

  final List<Account> _accounts;
  @override
  List<Account> get accounts {
    if (_accounts is EqualUnmodifiableListView) return _accounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accounts);
  }

  @override
  String toString() {
    return 'WalletImportState.importedMultipleWallets(accounts: $accounts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImportedMultipleWallets &&
            const DeepCollectionEquality().equals(other._accounts, _accounts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_accounts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImportedMultipleWalletsCopyWith<_$_ImportedMultipleWallets>
      get copyWith =>
          __$$_ImportedMultipleWalletsCopyWithImpl<_$_ImportedMultipleWallets>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Account> accounts) accountsToImport,
    required TResult Function(List<Account> accounts) readyToImport,
    required TResult Function() inProcess,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)
        inDAImportProcess,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)
        loadedMore,
    required TResult Function(Account account) imported,
    required TResult Function(List<Account> accounts) importedMultipleWallets,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)
        importedMultipleDerivativeWallets,
    required TResult Function(List<Account> accounts)
        importedMultipleWalletsWithSetPasscode,
    required TResult Function(Account account) importedWithSetPasscode,
    required TResult Function(Account account) needsToDeleteTrackAccount,
    required TResult Function(WalletImportFailure failure) importingFailed,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)
        importingDAFailed,
  }) {
    return importedMultipleWallets(accounts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Account> accounts)? accountsToImport,
    TResult? Function(List<Account> accounts)? readyToImport,
    TResult? Function()? inProcess,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        inDAImportProcess,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        loadedMore,
    TResult? Function(Account account)? imported,
    TResult? Function(List<Account> accounts)? importedMultipleWallets,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        importedMultipleDerivativeWallets,
    TResult? Function(List<Account> accounts)?
        importedMultipleWalletsWithSetPasscode,
    TResult? Function(Account account)? importedWithSetPasscode,
    TResult? Function(Account account)? needsToDeleteTrackAccount,
    TResult? Function(WalletImportFailure failure)? importingFailed,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        importingDAFailed,
  }) {
    return importedMultipleWallets?.call(accounts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Account> accounts)? accountsToImport,
    TResult Function(List<Account> accounts)? readyToImport,
    TResult Function()? inProcess,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        inDAImportProcess,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        loadedMore,
    TResult Function(Account account)? imported,
    TResult Function(List<Account> accounts)? importedMultipleWallets,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        importedMultipleDerivativeWallets,
    TResult Function(List<Account> accounts)?
        importedMultipleWalletsWithSetPasscode,
    TResult Function(Account account)? importedWithSetPasscode,
    TResult Function(Account account)? needsToDeleteTrackAccount,
    TResult Function(WalletImportFailure failure)? importingFailed,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        importingDAFailed,
    required TResult orElse(),
  }) {
    if (importedMultipleWallets != null) {
      return importedMultipleWallets(accounts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AccountsToImport value) accountsToImport,
    required TResult Function(_ReadyToImport value) readyToImport,
    required TResult Function(_InProcess value) inProcess,
    required TResult Function(_InDAImportProcess value) inDAImportProcess,
    required TResult Function(_InLoadMoreProcess value) loadedMore,
    required TResult Function(_Imported value) imported,
    required TResult Function(_ImportedMultipleWallets value)
        importedMultipleWallets,
    required TResult Function(_ImportedMultipleDerivativeWallets value)
        importedMultipleDerivativeWallets,
    required TResult Function(_ImportedMultipleWalletsWithSetPasscode value)
        importedMultipleWalletsWithSetPasscode,
    required TResult Function(_ImportedWithSetPasscode value)
        importedWithSetPasscode,
    required TResult Function(_NeedsToDeleteWatchAccount value)
        needsToDeleteTrackAccount,
    required TResult Function(ImportingFailed value) importingFailed,
    required TResult Function(_ImportingDAFailed value) importingDAFailed,
  }) {
    return importedMultipleWallets(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AccountsToImport value)? accountsToImport,
    TResult? Function(_ReadyToImport value)? readyToImport,
    TResult? Function(_InProcess value)? inProcess,
    TResult? Function(_InDAImportProcess value)? inDAImportProcess,
    TResult? Function(_InLoadMoreProcess value)? loadedMore,
    TResult? Function(_Imported value)? imported,
    TResult? Function(_ImportedMultipleWallets value)? importedMultipleWallets,
    TResult? Function(_ImportedMultipleDerivativeWallets value)?
        importedMultipleDerivativeWallets,
    TResult? Function(_ImportedMultipleWalletsWithSetPasscode value)?
        importedMultipleWalletsWithSetPasscode,
    TResult? Function(_ImportedWithSetPasscode value)? importedWithSetPasscode,
    TResult? Function(_NeedsToDeleteWatchAccount value)?
        needsToDeleteTrackAccount,
    TResult? Function(ImportingFailed value)? importingFailed,
    TResult? Function(_ImportingDAFailed value)? importingDAFailed,
  }) {
    return importedMultipleWallets?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AccountsToImport value)? accountsToImport,
    TResult Function(_ReadyToImport value)? readyToImport,
    TResult Function(_InProcess value)? inProcess,
    TResult Function(_InDAImportProcess value)? inDAImportProcess,
    TResult Function(_InLoadMoreProcess value)? loadedMore,
    TResult Function(_Imported value)? imported,
    TResult Function(_ImportedMultipleWallets value)? importedMultipleWallets,
    TResult Function(_ImportedMultipleDerivativeWallets value)?
        importedMultipleDerivativeWallets,
    TResult Function(_ImportedMultipleWalletsWithSetPasscode value)?
        importedMultipleWalletsWithSetPasscode,
    TResult Function(_ImportedWithSetPasscode value)? importedWithSetPasscode,
    TResult Function(_NeedsToDeleteWatchAccount value)?
        needsToDeleteTrackAccount,
    TResult Function(ImportingFailed value)? importingFailed,
    TResult Function(_ImportingDAFailed value)? importingDAFailed,
    required TResult orElse(),
  }) {
    if (importedMultipleWallets != null) {
      return importedMultipleWallets(this);
    }
    return orElse();
  }
}

abstract class _ImportedMultipleWallets extends WalletImportState {
  const factory _ImportedMultipleWallets(final List<Account> accounts) =
      _$_ImportedMultipleWallets;
  const _ImportedMultipleWallets._() : super._();

  List<Account> get accounts;
  @JsonKey(ignore: true)
  _$$_ImportedMultipleWalletsCopyWith<_$_ImportedMultipleWallets>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ImportedMultipleDerivativeWalletsCopyWith<$Res> {
  factory _$$_ImportedMultipleDerivativeWalletsCopyWith(
          _$_ImportedMultipleDerivativeWallets value,
          $Res Function(_$_ImportedMultipleDerivativeWallets) then) =
      __$$_ImportedMultipleDerivativeWalletsCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Account> accounts,
      Set<int> selected,
      Map<String, List<TokenBalance>> balances,
      String seedPhrase});
}

/// @nodoc
class __$$_ImportedMultipleDerivativeWalletsCopyWithImpl<$Res>
    extends _$WalletImportStateCopyWithImpl<$Res,
        _$_ImportedMultipleDerivativeWallets>
    implements _$$_ImportedMultipleDerivativeWalletsCopyWith<$Res> {
  __$$_ImportedMultipleDerivativeWalletsCopyWithImpl(
      _$_ImportedMultipleDerivativeWallets _value,
      $Res Function(_$_ImportedMultipleDerivativeWallets) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = null,
    Object? selected = null,
    Object? balances = null,
    Object? seedPhrase = null,
  }) {
    return _then(_$_ImportedMultipleDerivativeWallets(
      null == accounts
          ? _value._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<Account>,
      null == selected
          ? _value._selected
          : selected // ignore: cast_nullable_to_non_nullable
              as Set<int>,
      null == balances
          ? _value._balances
          : balances // ignore: cast_nullable_to_non_nullable
              as Map<String, List<TokenBalance>>,
      null == seedPhrase
          ? _value.seedPhrase
          : seedPhrase // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ImportedMultipleDerivativeWallets
    extends _ImportedMultipleDerivativeWallets {
  const _$_ImportedMultipleDerivativeWallets(
      final List<Account> accounts,
      final Set<int> selected,
      final Map<String, List<TokenBalance>> balances,
      this.seedPhrase)
      : _accounts = accounts,
        _selected = selected,
        _balances = balances,
        super._();

  final List<Account> _accounts;
  @override
  List<Account> get accounts {
    if (_accounts is EqualUnmodifiableListView) return _accounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accounts);
  }

  final Set<int> _selected;
  @override
  Set<int> get selected {
    if (_selected is EqualUnmodifiableSetView) return _selected;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_selected);
  }

  final Map<String, List<TokenBalance>> _balances;
  @override
  Map<String, List<TokenBalance>> get balances {
    if (_balances is EqualUnmodifiableMapView) return _balances;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_balances);
  }

  @override
  final String seedPhrase;

  @override
  String toString() {
    return 'WalletImportState.importedMultipleDerivativeWallets(accounts: $accounts, selected: $selected, balances: $balances, seedPhrase: $seedPhrase)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImportedMultipleDerivativeWallets &&
            const DeepCollectionEquality().equals(other._accounts, _accounts) &&
            const DeepCollectionEquality().equals(other._selected, _selected) &&
            const DeepCollectionEquality().equals(other._balances, _balances) &&
            (identical(other.seedPhrase, seedPhrase) ||
                other.seedPhrase == seedPhrase));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_accounts),
      const DeepCollectionEquality().hash(_selected),
      const DeepCollectionEquality().hash(_balances),
      seedPhrase);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImportedMultipleDerivativeWalletsCopyWith<
          _$_ImportedMultipleDerivativeWallets>
      get copyWith => __$$_ImportedMultipleDerivativeWalletsCopyWithImpl<
          _$_ImportedMultipleDerivativeWallets>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Account> accounts) accountsToImport,
    required TResult Function(List<Account> accounts) readyToImport,
    required TResult Function() inProcess,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)
        inDAImportProcess,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)
        loadedMore,
    required TResult Function(Account account) imported,
    required TResult Function(List<Account> accounts) importedMultipleWallets,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)
        importedMultipleDerivativeWallets,
    required TResult Function(List<Account> accounts)
        importedMultipleWalletsWithSetPasscode,
    required TResult Function(Account account) importedWithSetPasscode,
    required TResult Function(Account account) needsToDeleteTrackAccount,
    required TResult Function(WalletImportFailure failure) importingFailed,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)
        importingDAFailed,
  }) {
    return importedMultipleDerivativeWallets(
        accounts, selected, balances, seedPhrase);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Account> accounts)? accountsToImport,
    TResult? Function(List<Account> accounts)? readyToImport,
    TResult? Function()? inProcess,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        inDAImportProcess,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        loadedMore,
    TResult? Function(Account account)? imported,
    TResult? Function(List<Account> accounts)? importedMultipleWallets,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        importedMultipleDerivativeWallets,
    TResult? Function(List<Account> accounts)?
        importedMultipleWalletsWithSetPasscode,
    TResult? Function(Account account)? importedWithSetPasscode,
    TResult? Function(Account account)? needsToDeleteTrackAccount,
    TResult? Function(WalletImportFailure failure)? importingFailed,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        importingDAFailed,
  }) {
    return importedMultipleDerivativeWallets?.call(
        accounts, selected, balances, seedPhrase);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Account> accounts)? accountsToImport,
    TResult Function(List<Account> accounts)? readyToImport,
    TResult Function()? inProcess,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        inDAImportProcess,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        loadedMore,
    TResult Function(Account account)? imported,
    TResult Function(List<Account> accounts)? importedMultipleWallets,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        importedMultipleDerivativeWallets,
    TResult Function(List<Account> accounts)?
        importedMultipleWalletsWithSetPasscode,
    TResult Function(Account account)? importedWithSetPasscode,
    TResult Function(Account account)? needsToDeleteTrackAccount,
    TResult Function(WalletImportFailure failure)? importingFailed,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        importingDAFailed,
    required TResult orElse(),
  }) {
    if (importedMultipleDerivativeWallets != null) {
      return importedMultipleDerivativeWallets(
          accounts, selected, balances, seedPhrase);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AccountsToImport value) accountsToImport,
    required TResult Function(_ReadyToImport value) readyToImport,
    required TResult Function(_InProcess value) inProcess,
    required TResult Function(_InDAImportProcess value) inDAImportProcess,
    required TResult Function(_InLoadMoreProcess value) loadedMore,
    required TResult Function(_Imported value) imported,
    required TResult Function(_ImportedMultipleWallets value)
        importedMultipleWallets,
    required TResult Function(_ImportedMultipleDerivativeWallets value)
        importedMultipleDerivativeWallets,
    required TResult Function(_ImportedMultipleWalletsWithSetPasscode value)
        importedMultipleWalletsWithSetPasscode,
    required TResult Function(_ImportedWithSetPasscode value)
        importedWithSetPasscode,
    required TResult Function(_NeedsToDeleteWatchAccount value)
        needsToDeleteTrackAccount,
    required TResult Function(ImportingFailed value) importingFailed,
    required TResult Function(_ImportingDAFailed value) importingDAFailed,
  }) {
    return importedMultipleDerivativeWallets(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AccountsToImport value)? accountsToImport,
    TResult? Function(_ReadyToImport value)? readyToImport,
    TResult? Function(_InProcess value)? inProcess,
    TResult? Function(_InDAImportProcess value)? inDAImportProcess,
    TResult? Function(_InLoadMoreProcess value)? loadedMore,
    TResult? Function(_Imported value)? imported,
    TResult? Function(_ImportedMultipleWallets value)? importedMultipleWallets,
    TResult? Function(_ImportedMultipleDerivativeWallets value)?
        importedMultipleDerivativeWallets,
    TResult? Function(_ImportedMultipleWalletsWithSetPasscode value)?
        importedMultipleWalletsWithSetPasscode,
    TResult? Function(_ImportedWithSetPasscode value)? importedWithSetPasscode,
    TResult? Function(_NeedsToDeleteWatchAccount value)?
        needsToDeleteTrackAccount,
    TResult? Function(ImportingFailed value)? importingFailed,
    TResult? Function(_ImportingDAFailed value)? importingDAFailed,
  }) {
    return importedMultipleDerivativeWallets?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AccountsToImport value)? accountsToImport,
    TResult Function(_ReadyToImport value)? readyToImport,
    TResult Function(_InProcess value)? inProcess,
    TResult Function(_InDAImportProcess value)? inDAImportProcess,
    TResult Function(_InLoadMoreProcess value)? loadedMore,
    TResult Function(_Imported value)? imported,
    TResult Function(_ImportedMultipleWallets value)? importedMultipleWallets,
    TResult Function(_ImportedMultipleDerivativeWallets value)?
        importedMultipleDerivativeWallets,
    TResult Function(_ImportedMultipleWalletsWithSetPasscode value)?
        importedMultipleWalletsWithSetPasscode,
    TResult Function(_ImportedWithSetPasscode value)? importedWithSetPasscode,
    TResult Function(_NeedsToDeleteWatchAccount value)?
        needsToDeleteTrackAccount,
    TResult Function(ImportingFailed value)? importingFailed,
    TResult Function(_ImportingDAFailed value)? importingDAFailed,
    required TResult orElse(),
  }) {
    if (importedMultipleDerivativeWallets != null) {
      return importedMultipleDerivativeWallets(this);
    }
    return orElse();
  }
}

abstract class _ImportedMultipleDerivativeWallets extends WalletImportState {
  const factory _ImportedMultipleDerivativeWallets(
      final List<Account> accounts,
      final Set<int> selected,
      final Map<String, List<TokenBalance>> balances,
      final String seedPhrase) = _$_ImportedMultipleDerivativeWallets;
  const _ImportedMultipleDerivativeWallets._() : super._();

  List<Account> get accounts;
  Set<int> get selected;
  Map<String, List<TokenBalance>> get balances;
  String get seedPhrase;
  @JsonKey(ignore: true)
  _$$_ImportedMultipleDerivativeWalletsCopyWith<
          _$_ImportedMultipleDerivativeWallets>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ImportedMultipleWalletsWithSetPasscodeCopyWith<$Res> {
  factory _$$_ImportedMultipleWalletsWithSetPasscodeCopyWith(
          _$_ImportedMultipleWalletsWithSetPasscode value,
          $Res Function(_$_ImportedMultipleWalletsWithSetPasscode) then) =
      __$$_ImportedMultipleWalletsWithSetPasscodeCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Account> accounts});
}

/// @nodoc
class __$$_ImportedMultipleWalletsWithSetPasscodeCopyWithImpl<$Res>
    extends _$WalletImportStateCopyWithImpl<$Res,
        _$_ImportedMultipleWalletsWithSetPasscode>
    implements _$$_ImportedMultipleWalletsWithSetPasscodeCopyWith<$Res> {
  __$$_ImportedMultipleWalletsWithSetPasscodeCopyWithImpl(
      _$_ImportedMultipleWalletsWithSetPasscode _value,
      $Res Function(_$_ImportedMultipleWalletsWithSetPasscode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = null,
  }) {
    return _then(_$_ImportedMultipleWalletsWithSetPasscode(
      null == accounts
          ? _value._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<Account>,
    ));
  }
}

/// @nodoc

class _$_ImportedMultipleWalletsWithSetPasscode
    extends _ImportedMultipleWalletsWithSetPasscode {
  const _$_ImportedMultipleWalletsWithSetPasscode(final List<Account> accounts)
      : _accounts = accounts,
        super._();

  final List<Account> _accounts;
  @override
  List<Account> get accounts {
    if (_accounts is EqualUnmodifiableListView) return _accounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accounts);
  }

  @override
  String toString() {
    return 'WalletImportState.importedMultipleWalletsWithSetPasscode(accounts: $accounts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImportedMultipleWalletsWithSetPasscode &&
            const DeepCollectionEquality().equals(other._accounts, _accounts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_accounts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImportedMultipleWalletsWithSetPasscodeCopyWith<
          _$_ImportedMultipleWalletsWithSetPasscode>
      get copyWith => __$$_ImportedMultipleWalletsWithSetPasscodeCopyWithImpl<
          _$_ImportedMultipleWalletsWithSetPasscode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Account> accounts) accountsToImport,
    required TResult Function(List<Account> accounts) readyToImport,
    required TResult Function() inProcess,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)
        inDAImportProcess,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)
        loadedMore,
    required TResult Function(Account account) imported,
    required TResult Function(List<Account> accounts) importedMultipleWallets,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)
        importedMultipleDerivativeWallets,
    required TResult Function(List<Account> accounts)
        importedMultipleWalletsWithSetPasscode,
    required TResult Function(Account account) importedWithSetPasscode,
    required TResult Function(Account account) needsToDeleteTrackAccount,
    required TResult Function(WalletImportFailure failure) importingFailed,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)
        importingDAFailed,
  }) {
    return importedMultipleWalletsWithSetPasscode(accounts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Account> accounts)? accountsToImport,
    TResult? Function(List<Account> accounts)? readyToImport,
    TResult? Function()? inProcess,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        inDAImportProcess,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        loadedMore,
    TResult? Function(Account account)? imported,
    TResult? Function(List<Account> accounts)? importedMultipleWallets,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        importedMultipleDerivativeWallets,
    TResult? Function(List<Account> accounts)?
        importedMultipleWalletsWithSetPasscode,
    TResult? Function(Account account)? importedWithSetPasscode,
    TResult? Function(Account account)? needsToDeleteTrackAccount,
    TResult? Function(WalletImportFailure failure)? importingFailed,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        importingDAFailed,
  }) {
    return importedMultipleWalletsWithSetPasscode?.call(accounts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Account> accounts)? accountsToImport,
    TResult Function(List<Account> accounts)? readyToImport,
    TResult Function()? inProcess,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        inDAImportProcess,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        loadedMore,
    TResult Function(Account account)? imported,
    TResult Function(List<Account> accounts)? importedMultipleWallets,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        importedMultipleDerivativeWallets,
    TResult Function(List<Account> accounts)?
        importedMultipleWalletsWithSetPasscode,
    TResult Function(Account account)? importedWithSetPasscode,
    TResult Function(Account account)? needsToDeleteTrackAccount,
    TResult Function(WalletImportFailure failure)? importingFailed,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        importingDAFailed,
    required TResult orElse(),
  }) {
    if (importedMultipleWalletsWithSetPasscode != null) {
      return importedMultipleWalletsWithSetPasscode(accounts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AccountsToImport value) accountsToImport,
    required TResult Function(_ReadyToImport value) readyToImport,
    required TResult Function(_InProcess value) inProcess,
    required TResult Function(_InDAImportProcess value) inDAImportProcess,
    required TResult Function(_InLoadMoreProcess value) loadedMore,
    required TResult Function(_Imported value) imported,
    required TResult Function(_ImportedMultipleWallets value)
        importedMultipleWallets,
    required TResult Function(_ImportedMultipleDerivativeWallets value)
        importedMultipleDerivativeWallets,
    required TResult Function(_ImportedMultipleWalletsWithSetPasscode value)
        importedMultipleWalletsWithSetPasscode,
    required TResult Function(_ImportedWithSetPasscode value)
        importedWithSetPasscode,
    required TResult Function(_NeedsToDeleteWatchAccount value)
        needsToDeleteTrackAccount,
    required TResult Function(ImportingFailed value) importingFailed,
    required TResult Function(_ImportingDAFailed value) importingDAFailed,
  }) {
    return importedMultipleWalletsWithSetPasscode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AccountsToImport value)? accountsToImport,
    TResult? Function(_ReadyToImport value)? readyToImport,
    TResult? Function(_InProcess value)? inProcess,
    TResult? Function(_InDAImportProcess value)? inDAImportProcess,
    TResult? Function(_InLoadMoreProcess value)? loadedMore,
    TResult? Function(_Imported value)? imported,
    TResult? Function(_ImportedMultipleWallets value)? importedMultipleWallets,
    TResult? Function(_ImportedMultipleDerivativeWallets value)?
        importedMultipleDerivativeWallets,
    TResult? Function(_ImportedMultipleWalletsWithSetPasscode value)?
        importedMultipleWalletsWithSetPasscode,
    TResult? Function(_ImportedWithSetPasscode value)? importedWithSetPasscode,
    TResult? Function(_NeedsToDeleteWatchAccount value)?
        needsToDeleteTrackAccount,
    TResult? Function(ImportingFailed value)? importingFailed,
    TResult? Function(_ImportingDAFailed value)? importingDAFailed,
  }) {
    return importedMultipleWalletsWithSetPasscode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AccountsToImport value)? accountsToImport,
    TResult Function(_ReadyToImport value)? readyToImport,
    TResult Function(_InProcess value)? inProcess,
    TResult Function(_InDAImportProcess value)? inDAImportProcess,
    TResult Function(_InLoadMoreProcess value)? loadedMore,
    TResult Function(_Imported value)? imported,
    TResult Function(_ImportedMultipleWallets value)? importedMultipleWallets,
    TResult Function(_ImportedMultipleDerivativeWallets value)?
        importedMultipleDerivativeWallets,
    TResult Function(_ImportedMultipleWalletsWithSetPasscode value)?
        importedMultipleWalletsWithSetPasscode,
    TResult Function(_ImportedWithSetPasscode value)? importedWithSetPasscode,
    TResult Function(_NeedsToDeleteWatchAccount value)?
        needsToDeleteTrackAccount,
    TResult Function(ImportingFailed value)? importingFailed,
    TResult Function(_ImportingDAFailed value)? importingDAFailed,
    required TResult orElse(),
  }) {
    if (importedMultipleWalletsWithSetPasscode != null) {
      return importedMultipleWalletsWithSetPasscode(this);
    }
    return orElse();
  }
}

abstract class _ImportedMultipleWalletsWithSetPasscode
    extends WalletImportState {
  const factory _ImportedMultipleWalletsWithSetPasscode(
      final List<Account> accounts) = _$_ImportedMultipleWalletsWithSetPasscode;
  const _ImportedMultipleWalletsWithSetPasscode._() : super._();

  List<Account> get accounts;
  @JsonKey(ignore: true)
  _$$_ImportedMultipleWalletsWithSetPasscodeCopyWith<
          _$_ImportedMultipleWalletsWithSetPasscode>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ImportedWithSetPasscodeCopyWith<$Res> {
  factory _$$_ImportedWithSetPasscodeCopyWith(_$_ImportedWithSetPasscode value,
          $Res Function(_$_ImportedWithSetPasscode) then) =
      __$$_ImportedWithSetPasscodeCopyWithImpl<$Res>;
  @useResult
  $Res call({Account account});
}

/// @nodoc
class __$$_ImportedWithSetPasscodeCopyWithImpl<$Res>
    extends _$WalletImportStateCopyWithImpl<$Res, _$_ImportedWithSetPasscode>
    implements _$$_ImportedWithSetPasscodeCopyWith<$Res> {
  __$$_ImportedWithSetPasscodeCopyWithImpl(_$_ImportedWithSetPasscode _value,
      $Res Function(_$_ImportedWithSetPasscode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
  }) {
    return _then(_$_ImportedWithSetPasscode(
      null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
    ));
  }
}

/// @nodoc

class _$_ImportedWithSetPasscode extends _ImportedWithSetPasscode {
  const _$_ImportedWithSetPasscode(this.account) : super._();

  @override
  final Account account;

  @override
  String toString() {
    return 'WalletImportState.importedWithSetPasscode(account: $account)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImportedWithSetPasscode &&
            (identical(other.account, account) || other.account == account));
  }

  @override
  int get hashCode => Object.hash(runtimeType, account);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImportedWithSetPasscodeCopyWith<_$_ImportedWithSetPasscode>
      get copyWith =>
          __$$_ImportedWithSetPasscodeCopyWithImpl<_$_ImportedWithSetPasscode>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Account> accounts) accountsToImport,
    required TResult Function(List<Account> accounts) readyToImport,
    required TResult Function() inProcess,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)
        inDAImportProcess,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)
        loadedMore,
    required TResult Function(Account account) imported,
    required TResult Function(List<Account> accounts) importedMultipleWallets,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)
        importedMultipleDerivativeWallets,
    required TResult Function(List<Account> accounts)
        importedMultipleWalletsWithSetPasscode,
    required TResult Function(Account account) importedWithSetPasscode,
    required TResult Function(Account account) needsToDeleteTrackAccount,
    required TResult Function(WalletImportFailure failure) importingFailed,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)
        importingDAFailed,
  }) {
    return importedWithSetPasscode(account);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Account> accounts)? accountsToImport,
    TResult? Function(List<Account> accounts)? readyToImport,
    TResult? Function()? inProcess,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        inDAImportProcess,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        loadedMore,
    TResult? Function(Account account)? imported,
    TResult? Function(List<Account> accounts)? importedMultipleWallets,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        importedMultipleDerivativeWallets,
    TResult? Function(List<Account> accounts)?
        importedMultipleWalletsWithSetPasscode,
    TResult? Function(Account account)? importedWithSetPasscode,
    TResult? Function(Account account)? needsToDeleteTrackAccount,
    TResult? Function(WalletImportFailure failure)? importingFailed,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        importingDAFailed,
  }) {
    return importedWithSetPasscode?.call(account);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Account> accounts)? accountsToImport,
    TResult Function(List<Account> accounts)? readyToImport,
    TResult Function()? inProcess,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        inDAImportProcess,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        loadedMore,
    TResult Function(Account account)? imported,
    TResult Function(List<Account> accounts)? importedMultipleWallets,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        importedMultipleDerivativeWallets,
    TResult Function(List<Account> accounts)?
        importedMultipleWalletsWithSetPasscode,
    TResult Function(Account account)? importedWithSetPasscode,
    TResult Function(Account account)? needsToDeleteTrackAccount,
    TResult Function(WalletImportFailure failure)? importingFailed,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        importingDAFailed,
    required TResult orElse(),
  }) {
    if (importedWithSetPasscode != null) {
      return importedWithSetPasscode(account);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AccountsToImport value) accountsToImport,
    required TResult Function(_ReadyToImport value) readyToImport,
    required TResult Function(_InProcess value) inProcess,
    required TResult Function(_InDAImportProcess value) inDAImportProcess,
    required TResult Function(_InLoadMoreProcess value) loadedMore,
    required TResult Function(_Imported value) imported,
    required TResult Function(_ImportedMultipleWallets value)
        importedMultipleWallets,
    required TResult Function(_ImportedMultipleDerivativeWallets value)
        importedMultipleDerivativeWallets,
    required TResult Function(_ImportedMultipleWalletsWithSetPasscode value)
        importedMultipleWalletsWithSetPasscode,
    required TResult Function(_ImportedWithSetPasscode value)
        importedWithSetPasscode,
    required TResult Function(_NeedsToDeleteWatchAccount value)
        needsToDeleteTrackAccount,
    required TResult Function(ImportingFailed value) importingFailed,
    required TResult Function(_ImportingDAFailed value) importingDAFailed,
  }) {
    return importedWithSetPasscode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AccountsToImport value)? accountsToImport,
    TResult? Function(_ReadyToImport value)? readyToImport,
    TResult? Function(_InProcess value)? inProcess,
    TResult? Function(_InDAImportProcess value)? inDAImportProcess,
    TResult? Function(_InLoadMoreProcess value)? loadedMore,
    TResult? Function(_Imported value)? imported,
    TResult? Function(_ImportedMultipleWallets value)? importedMultipleWallets,
    TResult? Function(_ImportedMultipleDerivativeWallets value)?
        importedMultipleDerivativeWallets,
    TResult? Function(_ImportedMultipleWalletsWithSetPasscode value)?
        importedMultipleWalletsWithSetPasscode,
    TResult? Function(_ImportedWithSetPasscode value)? importedWithSetPasscode,
    TResult? Function(_NeedsToDeleteWatchAccount value)?
        needsToDeleteTrackAccount,
    TResult? Function(ImportingFailed value)? importingFailed,
    TResult? Function(_ImportingDAFailed value)? importingDAFailed,
  }) {
    return importedWithSetPasscode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AccountsToImport value)? accountsToImport,
    TResult Function(_ReadyToImport value)? readyToImport,
    TResult Function(_InProcess value)? inProcess,
    TResult Function(_InDAImportProcess value)? inDAImportProcess,
    TResult Function(_InLoadMoreProcess value)? loadedMore,
    TResult Function(_Imported value)? imported,
    TResult Function(_ImportedMultipleWallets value)? importedMultipleWallets,
    TResult Function(_ImportedMultipleDerivativeWallets value)?
        importedMultipleDerivativeWallets,
    TResult Function(_ImportedMultipleWalletsWithSetPasscode value)?
        importedMultipleWalletsWithSetPasscode,
    TResult Function(_ImportedWithSetPasscode value)? importedWithSetPasscode,
    TResult Function(_NeedsToDeleteWatchAccount value)?
        needsToDeleteTrackAccount,
    TResult Function(ImportingFailed value)? importingFailed,
    TResult Function(_ImportingDAFailed value)? importingDAFailed,
    required TResult orElse(),
  }) {
    if (importedWithSetPasscode != null) {
      return importedWithSetPasscode(this);
    }
    return orElse();
  }
}

abstract class _ImportedWithSetPasscode extends WalletImportState {
  const factory _ImportedWithSetPasscode(final Account account) =
      _$_ImportedWithSetPasscode;
  const _ImportedWithSetPasscode._() : super._();

  Account get account;
  @JsonKey(ignore: true)
  _$$_ImportedWithSetPasscodeCopyWith<_$_ImportedWithSetPasscode>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NeedsToDeleteWatchAccountCopyWith<$Res> {
  factory _$$_NeedsToDeleteWatchAccountCopyWith(
          _$_NeedsToDeleteWatchAccount value,
          $Res Function(_$_NeedsToDeleteWatchAccount) then) =
      __$$_NeedsToDeleteWatchAccountCopyWithImpl<$Res>;
  @useResult
  $Res call({Account account});
}

/// @nodoc
class __$$_NeedsToDeleteWatchAccountCopyWithImpl<$Res>
    extends _$WalletImportStateCopyWithImpl<$Res, _$_NeedsToDeleteWatchAccount>
    implements _$$_NeedsToDeleteWatchAccountCopyWith<$Res> {
  __$$_NeedsToDeleteWatchAccountCopyWithImpl(
      _$_NeedsToDeleteWatchAccount _value,
      $Res Function(_$_NeedsToDeleteWatchAccount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
  }) {
    return _then(_$_NeedsToDeleteWatchAccount(
      null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
    ));
  }
}

/// @nodoc

class _$_NeedsToDeleteWatchAccount extends _NeedsToDeleteWatchAccount {
  const _$_NeedsToDeleteWatchAccount(this.account) : super._();

  @override
  final Account account;

  @override
  String toString() {
    return 'WalletImportState.needsToDeleteTrackAccount(account: $account)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NeedsToDeleteWatchAccount &&
            (identical(other.account, account) || other.account == account));
  }

  @override
  int get hashCode => Object.hash(runtimeType, account);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NeedsToDeleteWatchAccountCopyWith<_$_NeedsToDeleteWatchAccount>
      get copyWith => __$$_NeedsToDeleteWatchAccountCopyWithImpl<
          _$_NeedsToDeleteWatchAccount>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Account> accounts) accountsToImport,
    required TResult Function(List<Account> accounts) readyToImport,
    required TResult Function() inProcess,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)
        inDAImportProcess,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)
        loadedMore,
    required TResult Function(Account account) imported,
    required TResult Function(List<Account> accounts) importedMultipleWallets,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)
        importedMultipleDerivativeWallets,
    required TResult Function(List<Account> accounts)
        importedMultipleWalletsWithSetPasscode,
    required TResult Function(Account account) importedWithSetPasscode,
    required TResult Function(Account account) needsToDeleteTrackAccount,
    required TResult Function(WalletImportFailure failure) importingFailed,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)
        importingDAFailed,
  }) {
    return needsToDeleteTrackAccount(account);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Account> accounts)? accountsToImport,
    TResult? Function(List<Account> accounts)? readyToImport,
    TResult? Function()? inProcess,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        inDAImportProcess,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        loadedMore,
    TResult? Function(Account account)? imported,
    TResult? Function(List<Account> accounts)? importedMultipleWallets,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        importedMultipleDerivativeWallets,
    TResult? Function(List<Account> accounts)?
        importedMultipleWalletsWithSetPasscode,
    TResult? Function(Account account)? importedWithSetPasscode,
    TResult? Function(Account account)? needsToDeleteTrackAccount,
    TResult? Function(WalletImportFailure failure)? importingFailed,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        importingDAFailed,
  }) {
    return needsToDeleteTrackAccount?.call(account);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Account> accounts)? accountsToImport,
    TResult Function(List<Account> accounts)? readyToImport,
    TResult Function()? inProcess,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        inDAImportProcess,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        loadedMore,
    TResult Function(Account account)? imported,
    TResult Function(List<Account> accounts)? importedMultipleWallets,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        importedMultipleDerivativeWallets,
    TResult Function(List<Account> accounts)?
        importedMultipleWalletsWithSetPasscode,
    TResult Function(Account account)? importedWithSetPasscode,
    TResult Function(Account account)? needsToDeleteTrackAccount,
    TResult Function(WalletImportFailure failure)? importingFailed,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        importingDAFailed,
    required TResult orElse(),
  }) {
    if (needsToDeleteTrackAccount != null) {
      return needsToDeleteTrackAccount(account);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AccountsToImport value) accountsToImport,
    required TResult Function(_ReadyToImport value) readyToImport,
    required TResult Function(_InProcess value) inProcess,
    required TResult Function(_InDAImportProcess value) inDAImportProcess,
    required TResult Function(_InLoadMoreProcess value) loadedMore,
    required TResult Function(_Imported value) imported,
    required TResult Function(_ImportedMultipleWallets value)
        importedMultipleWallets,
    required TResult Function(_ImportedMultipleDerivativeWallets value)
        importedMultipleDerivativeWallets,
    required TResult Function(_ImportedMultipleWalletsWithSetPasscode value)
        importedMultipleWalletsWithSetPasscode,
    required TResult Function(_ImportedWithSetPasscode value)
        importedWithSetPasscode,
    required TResult Function(_NeedsToDeleteWatchAccount value)
        needsToDeleteTrackAccount,
    required TResult Function(ImportingFailed value) importingFailed,
    required TResult Function(_ImportingDAFailed value) importingDAFailed,
  }) {
    return needsToDeleteTrackAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AccountsToImport value)? accountsToImport,
    TResult? Function(_ReadyToImport value)? readyToImport,
    TResult? Function(_InProcess value)? inProcess,
    TResult? Function(_InDAImportProcess value)? inDAImportProcess,
    TResult? Function(_InLoadMoreProcess value)? loadedMore,
    TResult? Function(_Imported value)? imported,
    TResult? Function(_ImportedMultipleWallets value)? importedMultipleWallets,
    TResult? Function(_ImportedMultipleDerivativeWallets value)?
        importedMultipleDerivativeWallets,
    TResult? Function(_ImportedMultipleWalletsWithSetPasscode value)?
        importedMultipleWalletsWithSetPasscode,
    TResult? Function(_ImportedWithSetPasscode value)? importedWithSetPasscode,
    TResult? Function(_NeedsToDeleteWatchAccount value)?
        needsToDeleteTrackAccount,
    TResult? Function(ImportingFailed value)? importingFailed,
    TResult? Function(_ImportingDAFailed value)? importingDAFailed,
  }) {
    return needsToDeleteTrackAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AccountsToImport value)? accountsToImport,
    TResult Function(_ReadyToImport value)? readyToImport,
    TResult Function(_InProcess value)? inProcess,
    TResult Function(_InDAImportProcess value)? inDAImportProcess,
    TResult Function(_InLoadMoreProcess value)? loadedMore,
    TResult Function(_Imported value)? imported,
    TResult Function(_ImportedMultipleWallets value)? importedMultipleWallets,
    TResult Function(_ImportedMultipleDerivativeWallets value)?
        importedMultipleDerivativeWallets,
    TResult Function(_ImportedMultipleWalletsWithSetPasscode value)?
        importedMultipleWalletsWithSetPasscode,
    TResult Function(_ImportedWithSetPasscode value)? importedWithSetPasscode,
    TResult Function(_NeedsToDeleteWatchAccount value)?
        needsToDeleteTrackAccount,
    TResult Function(ImportingFailed value)? importingFailed,
    TResult Function(_ImportingDAFailed value)? importingDAFailed,
    required TResult orElse(),
  }) {
    if (needsToDeleteTrackAccount != null) {
      return needsToDeleteTrackAccount(this);
    }
    return orElse();
  }
}

abstract class _NeedsToDeleteWatchAccount extends WalletImportState {
  const factory _NeedsToDeleteWatchAccount(final Account account) =
      _$_NeedsToDeleteWatchAccount;
  const _NeedsToDeleteWatchAccount._() : super._();

  Account get account;
  @JsonKey(ignore: true)
  _$$_NeedsToDeleteWatchAccountCopyWith<_$_NeedsToDeleteWatchAccount>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImportingFailedCopyWith<$Res> {
  factory _$$ImportingFailedCopyWith(
          _$ImportingFailed value, $Res Function(_$ImportingFailed) then) =
      __$$ImportingFailedCopyWithImpl<$Res>;
  @useResult
  $Res call({WalletImportFailure failure});

  $WalletImportFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$ImportingFailedCopyWithImpl<$Res>
    extends _$WalletImportStateCopyWithImpl<$Res, _$ImportingFailed>
    implements _$$ImportingFailedCopyWith<$Res> {
  __$$ImportingFailedCopyWithImpl(
      _$ImportingFailed _value, $Res Function(_$ImportingFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$ImportingFailed(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as WalletImportFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WalletImportFailureCopyWith<$Res> get failure {
    return $WalletImportFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$ImportingFailed extends ImportingFailed {
  const _$ImportingFailed(this.failure) : super._();

  @override
  final WalletImportFailure failure;

  @override
  String toString() {
    return 'WalletImportState.importingFailed(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImportingFailed &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImportingFailedCopyWith<_$ImportingFailed> get copyWith =>
      __$$ImportingFailedCopyWithImpl<_$ImportingFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Account> accounts) accountsToImport,
    required TResult Function(List<Account> accounts) readyToImport,
    required TResult Function() inProcess,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)
        inDAImportProcess,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)
        loadedMore,
    required TResult Function(Account account) imported,
    required TResult Function(List<Account> accounts) importedMultipleWallets,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)
        importedMultipleDerivativeWallets,
    required TResult Function(List<Account> accounts)
        importedMultipleWalletsWithSetPasscode,
    required TResult Function(Account account) importedWithSetPasscode,
    required TResult Function(Account account) needsToDeleteTrackAccount,
    required TResult Function(WalletImportFailure failure) importingFailed,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)
        importingDAFailed,
  }) {
    return importingFailed(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Account> accounts)? accountsToImport,
    TResult? Function(List<Account> accounts)? readyToImport,
    TResult? Function()? inProcess,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        inDAImportProcess,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        loadedMore,
    TResult? Function(Account account)? imported,
    TResult? Function(List<Account> accounts)? importedMultipleWallets,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        importedMultipleDerivativeWallets,
    TResult? Function(List<Account> accounts)?
        importedMultipleWalletsWithSetPasscode,
    TResult? Function(Account account)? importedWithSetPasscode,
    TResult? Function(Account account)? needsToDeleteTrackAccount,
    TResult? Function(WalletImportFailure failure)? importingFailed,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        importingDAFailed,
  }) {
    return importingFailed?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Account> accounts)? accountsToImport,
    TResult Function(List<Account> accounts)? readyToImport,
    TResult Function()? inProcess,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        inDAImportProcess,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        loadedMore,
    TResult Function(Account account)? imported,
    TResult Function(List<Account> accounts)? importedMultipleWallets,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        importedMultipleDerivativeWallets,
    TResult Function(List<Account> accounts)?
        importedMultipleWalletsWithSetPasscode,
    TResult Function(Account account)? importedWithSetPasscode,
    TResult Function(Account account)? needsToDeleteTrackAccount,
    TResult Function(WalletImportFailure failure)? importingFailed,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        importingDAFailed,
    required TResult orElse(),
  }) {
    if (importingFailed != null) {
      return importingFailed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AccountsToImport value) accountsToImport,
    required TResult Function(_ReadyToImport value) readyToImport,
    required TResult Function(_InProcess value) inProcess,
    required TResult Function(_InDAImportProcess value) inDAImportProcess,
    required TResult Function(_InLoadMoreProcess value) loadedMore,
    required TResult Function(_Imported value) imported,
    required TResult Function(_ImportedMultipleWallets value)
        importedMultipleWallets,
    required TResult Function(_ImportedMultipleDerivativeWallets value)
        importedMultipleDerivativeWallets,
    required TResult Function(_ImportedMultipleWalletsWithSetPasscode value)
        importedMultipleWalletsWithSetPasscode,
    required TResult Function(_ImportedWithSetPasscode value)
        importedWithSetPasscode,
    required TResult Function(_NeedsToDeleteWatchAccount value)
        needsToDeleteTrackAccount,
    required TResult Function(ImportingFailed value) importingFailed,
    required TResult Function(_ImportingDAFailed value) importingDAFailed,
  }) {
    return importingFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AccountsToImport value)? accountsToImport,
    TResult? Function(_ReadyToImport value)? readyToImport,
    TResult? Function(_InProcess value)? inProcess,
    TResult? Function(_InDAImportProcess value)? inDAImportProcess,
    TResult? Function(_InLoadMoreProcess value)? loadedMore,
    TResult? Function(_Imported value)? imported,
    TResult? Function(_ImportedMultipleWallets value)? importedMultipleWallets,
    TResult? Function(_ImportedMultipleDerivativeWallets value)?
        importedMultipleDerivativeWallets,
    TResult? Function(_ImportedMultipleWalletsWithSetPasscode value)?
        importedMultipleWalletsWithSetPasscode,
    TResult? Function(_ImportedWithSetPasscode value)? importedWithSetPasscode,
    TResult? Function(_NeedsToDeleteWatchAccount value)?
        needsToDeleteTrackAccount,
    TResult? Function(ImportingFailed value)? importingFailed,
    TResult? Function(_ImportingDAFailed value)? importingDAFailed,
  }) {
    return importingFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AccountsToImport value)? accountsToImport,
    TResult Function(_ReadyToImport value)? readyToImport,
    TResult Function(_InProcess value)? inProcess,
    TResult Function(_InDAImportProcess value)? inDAImportProcess,
    TResult Function(_InLoadMoreProcess value)? loadedMore,
    TResult Function(_Imported value)? imported,
    TResult Function(_ImportedMultipleWallets value)? importedMultipleWallets,
    TResult Function(_ImportedMultipleDerivativeWallets value)?
        importedMultipleDerivativeWallets,
    TResult Function(_ImportedMultipleWalletsWithSetPasscode value)?
        importedMultipleWalletsWithSetPasscode,
    TResult Function(_ImportedWithSetPasscode value)? importedWithSetPasscode,
    TResult Function(_NeedsToDeleteWatchAccount value)?
        needsToDeleteTrackAccount,
    TResult Function(ImportingFailed value)? importingFailed,
    TResult Function(_ImportingDAFailed value)? importingDAFailed,
    required TResult orElse(),
  }) {
    if (importingFailed != null) {
      return importingFailed(this);
    }
    return orElse();
  }
}

abstract class ImportingFailed extends WalletImportState {
  const factory ImportingFailed(final WalletImportFailure failure) =
      _$ImportingFailed;
  const ImportingFailed._() : super._();

  WalletImportFailure get failure;
  @JsonKey(ignore: true)
  _$$ImportingFailedCopyWith<_$ImportingFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ImportingDAFailedCopyWith<$Res> {
  factory _$$_ImportingDAFailedCopyWith(_$_ImportingDAFailed value,
          $Res Function(_$_ImportingDAFailed) then) =
      __$$_ImportingDAFailedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Account> accounts,
      Set<int> selected,
      Map<String, List<TokenBalance>> balances});
}

/// @nodoc
class __$$_ImportingDAFailedCopyWithImpl<$Res>
    extends _$WalletImportStateCopyWithImpl<$Res, _$_ImportingDAFailed>
    implements _$$_ImportingDAFailedCopyWith<$Res> {
  __$$_ImportingDAFailedCopyWithImpl(
      _$_ImportingDAFailed _value, $Res Function(_$_ImportingDAFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = null,
    Object? selected = null,
    Object? balances = null,
  }) {
    return _then(_$_ImportingDAFailed(
      null == accounts
          ? _value._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<Account>,
      null == selected
          ? _value._selected
          : selected // ignore: cast_nullable_to_non_nullable
              as Set<int>,
      null == balances
          ? _value._balances
          : balances // ignore: cast_nullable_to_non_nullable
              as Map<String, List<TokenBalance>>,
    ));
  }
}

/// @nodoc

class _$_ImportingDAFailed extends _ImportingDAFailed {
  const _$_ImportingDAFailed(final List<Account> accounts,
      final Set<int> selected, final Map<String, List<TokenBalance>> balances)
      : _accounts = accounts,
        _selected = selected,
        _balances = balances,
        super._();

  final List<Account> _accounts;
  @override
  List<Account> get accounts {
    if (_accounts is EqualUnmodifiableListView) return _accounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accounts);
  }

  final Set<int> _selected;
  @override
  Set<int> get selected {
    if (_selected is EqualUnmodifiableSetView) return _selected;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_selected);
  }

  final Map<String, List<TokenBalance>> _balances;
  @override
  Map<String, List<TokenBalance>> get balances {
    if (_balances is EqualUnmodifiableMapView) return _balances;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_balances);
  }

  @override
  String toString() {
    return 'WalletImportState.importingDAFailed(accounts: $accounts, selected: $selected, balances: $balances)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImportingDAFailed &&
            const DeepCollectionEquality().equals(other._accounts, _accounts) &&
            const DeepCollectionEquality().equals(other._selected, _selected) &&
            const DeepCollectionEquality().equals(other._balances, _balances));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_accounts),
      const DeepCollectionEquality().hash(_selected),
      const DeepCollectionEquality().hash(_balances));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImportingDAFailedCopyWith<_$_ImportingDAFailed> get copyWith =>
      __$$_ImportingDAFailedCopyWithImpl<_$_ImportingDAFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Account> accounts) accountsToImport,
    required TResult Function(List<Account> accounts) readyToImport,
    required TResult Function() inProcess,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)
        inDAImportProcess,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)
        loadedMore,
    required TResult Function(Account account) imported,
    required TResult Function(List<Account> accounts) importedMultipleWallets,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)
        importedMultipleDerivativeWallets,
    required TResult Function(List<Account> accounts)
        importedMultipleWalletsWithSetPasscode,
    required TResult Function(Account account) importedWithSetPasscode,
    required TResult Function(Account account) needsToDeleteTrackAccount,
    required TResult Function(WalletImportFailure failure) importingFailed,
    required TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)
        importingDAFailed,
  }) {
    return importingDAFailed(accounts, selected, balances);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Account> accounts)? accountsToImport,
    TResult? Function(List<Account> accounts)? readyToImport,
    TResult? Function()? inProcess,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        inDAImportProcess,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        loadedMore,
    TResult? Function(Account account)? imported,
    TResult? Function(List<Account> accounts)? importedMultipleWallets,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        importedMultipleDerivativeWallets,
    TResult? Function(List<Account> accounts)?
        importedMultipleWalletsWithSetPasscode,
    TResult? Function(Account account)? importedWithSetPasscode,
    TResult? Function(Account account)? needsToDeleteTrackAccount,
    TResult? Function(WalletImportFailure failure)? importingFailed,
    TResult? Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        importingDAFailed,
  }) {
    return importingDAFailed?.call(accounts, selected, balances);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Account> accounts)? accountsToImport,
    TResult Function(List<Account> accounts)? readyToImport,
    TResult Function()? inProcess,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        inDAImportProcess,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        loadedMore,
    TResult Function(Account account)? imported,
    TResult Function(List<Account> accounts)? importedMultipleWallets,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances, String seedPhrase)?
        importedMultipleDerivativeWallets,
    TResult Function(List<Account> accounts)?
        importedMultipleWalletsWithSetPasscode,
    TResult Function(Account account)? importedWithSetPasscode,
    TResult Function(Account account)? needsToDeleteTrackAccount,
    TResult Function(WalletImportFailure failure)? importingFailed,
    TResult Function(List<Account> accounts, Set<int> selected,
            Map<String, List<TokenBalance>> balances)?
        importingDAFailed,
    required TResult orElse(),
  }) {
    if (importingDAFailed != null) {
      return importingDAFailed(accounts, selected, balances);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AccountsToImport value) accountsToImport,
    required TResult Function(_ReadyToImport value) readyToImport,
    required TResult Function(_InProcess value) inProcess,
    required TResult Function(_InDAImportProcess value) inDAImportProcess,
    required TResult Function(_InLoadMoreProcess value) loadedMore,
    required TResult Function(_Imported value) imported,
    required TResult Function(_ImportedMultipleWallets value)
        importedMultipleWallets,
    required TResult Function(_ImportedMultipleDerivativeWallets value)
        importedMultipleDerivativeWallets,
    required TResult Function(_ImportedMultipleWalletsWithSetPasscode value)
        importedMultipleWalletsWithSetPasscode,
    required TResult Function(_ImportedWithSetPasscode value)
        importedWithSetPasscode,
    required TResult Function(_NeedsToDeleteWatchAccount value)
        needsToDeleteTrackAccount,
    required TResult Function(ImportingFailed value) importingFailed,
    required TResult Function(_ImportingDAFailed value) importingDAFailed,
  }) {
    return importingDAFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AccountsToImport value)? accountsToImport,
    TResult? Function(_ReadyToImport value)? readyToImport,
    TResult? Function(_InProcess value)? inProcess,
    TResult? Function(_InDAImportProcess value)? inDAImportProcess,
    TResult? Function(_InLoadMoreProcess value)? loadedMore,
    TResult? Function(_Imported value)? imported,
    TResult? Function(_ImportedMultipleWallets value)? importedMultipleWallets,
    TResult? Function(_ImportedMultipleDerivativeWallets value)?
        importedMultipleDerivativeWallets,
    TResult? Function(_ImportedMultipleWalletsWithSetPasscode value)?
        importedMultipleWalletsWithSetPasscode,
    TResult? Function(_ImportedWithSetPasscode value)? importedWithSetPasscode,
    TResult? Function(_NeedsToDeleteWatchAccount value)?
        needsToDeleteTrackAccount,
    TResult? Function(ImportingFailed value)? importingFailed,
    TResult? Function(_ImportingDAFailed value)? importingDAFailed,
  }) {
    return importingDAFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AccountsToImport value)? accountsToImport,
    TResult Function(_ReadyToImport value)? readyToImport,
    TResult Function(_InProcess value)? inProcess,
    TResult Function(_InDAImportProcess value)? inDAImportProcess,
    TResult Function(_InLoadMoreProcess value)? loadedMore,
    TResult Function(_Imported value)? imported,
    TResult Function(_ImportedMultipleWallets value)? importedMultipleWallets,
    TResult Function(_ImportedMultipleDerivativeWallets value)?
        importedMultipleDerivativeWallets,
    TResult Function(_ImportedMultipleWalletsWithSetPasscode value)?
        importedMultipleWalletsWithSetPasscode,
    TResult Function(_ImportedWithSetPasscode value)? importedWithSetPasscode,
    TResult Function(_NeedsToDeleteWatchAccount value)?
        needsToDeleteTrackAccount,
    TResult Function(ImportingFailed value)? importingFailed,
    TResult Function(_ImportingDAFailed value)? importingDAFailed,
    required TResult orElse(),
  }) {
    if (importingDAFailed != null) {
      return importingDAFailed(this);
    }
    return orElse();
  }
}

abstract class _ImportingDAFailed extends WalletImportState {
  const factory _ImportingDAFailed(
      final List<Account> accounts,
      final Set<int> selected,
      final Map<String, List<TokenBalance>> balances) = _$_ImportingDAFailed;
  const _ImportingDAFailed._() : super._();

  List<Account> get accounts;
  Set<int> get selected;
  Map<String, List<TokenBalance>> get balances;
  @JsonKey(ignore: true)
  _$$_ImportingDAFailedCopyWith<_$_ImportingDAFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
