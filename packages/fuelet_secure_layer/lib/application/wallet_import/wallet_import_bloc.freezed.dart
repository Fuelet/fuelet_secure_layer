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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$ImportWalletImplCopyWith<$Res> {
  factory _$$ImportWalletImplCopyWith(
          _$ImportWalletImpl value, $Res Function(_$ImportWalletImpl) then) =
      __$$ImportWalletImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String privateKey,
      List<Account> existingAccounts,
      bool creatingAfterSettingPasscode});
}

/// @nodoc
class __$$ImportWalletImplCopyWithImpl<$Res>
    extends _$WalletImportEventCopyWithImpl<$Res, _$ImportWalletImpl>
    implements _$$ImportWalletImplCopyWith<$Res> {
  __$$ImportWalletImplCopyWithImpl(
      _$ImportWalletImpl _value, $Res Function(_$ImportWalletImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privateKey = null,
    Object? existingAccounts = null,
    Object? creatingAfterSettingPasscode = null,
  }) {
    return _then(_$ImportWalletImpl(
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

class _$ImportWalletImpl implements _ImportWallet {
  const _$ImportWalletImpl(this.privateKey,
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImportWalletImpl &&
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
  _$$ImportWalletImplCopyWith<_$ImportWalletImpl> get copyWith =>
      __$$ImportWalletImplCopyWithImpl<_$ImportWalletImpl>(this, _$identity);

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
      required final bool creatingAfterSettingPasscode}) = _$ImportWalletImpl;

  String get privateKey;
  List<Account> get existingAccounts;
  bool get creatingAfterSettingPasscode;
  @JsonKey(ignore: true)
  _$$ImportWalletImplCopyWith<_$ImportWalletImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveAccountsToImportImplCopyWith<$Res> {
  factory _$$SaveAccountsToImportImplCopyWith(_$SaveAccountsToImportImpl value,
          $Res Function(_$SaveAccountsToImportImpl) then) =
      __$$SaveAccountsToImportImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Account> accounts});
}

/// @nodoc
class __$$SaveAccountsToImportImplCopyWithImpl<$Res>
    extends _$WalletImportEventCopyWithImpl<$Res, _$SaveAccountsToImportImpl>
    implements _$$SaveAccountsToImportImplCopyWith<$Res> {
  __$$SaveAccountsToImportImplCopyWithImpl(_$SaveAccountsToImportImpl _value,
      $Res Function(_$SaveAccountsToImportImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = null,
  }) {
    return _then(_$SaveAccountsToImportImpl(
      accounts: null == accounts
          ? _value._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<Account>,
    ));
  }
}

/// @nodoc

class _$SaveAccountsToImportImpl implements _SaveAccountsToImport {
  const _$SaveAccountsToImportImpl({required final List<Account> accounts})
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveAccountsToImportImpl &&
            const DeepCollectionEquality().equals(other._accounts, _accounts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_accounts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveAccountsToImportImplCopyWith<_$SaveAccountsToImportImpl>
      get copyWith =>
          __$$SaveAccountsToImportImplCopyWithImpl<_$SaveAccountsToImportImpl>(
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
      _$SaveAccountsToImportImpl;

  List<Account> get accounts;
  @JsonKey(ignore: true)
  _$$SaveAccountsToImportImplCopyWith<_$SaveAccountsToImportImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadMoreDerivativeImplCopyWith<$Res> {
  factory _$$LoadMoreDerivativeImplCopyWith(_$LoadMoreDerivativeImpl value,
          $Res Function(_$LoadMoreDerivativeImpl) then) =
      __$$LoadMoreDerivativeImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Set<int> selected,
      Map<String, List<TokenBalance>> balances,
      String seedPhrase});
}

/// @nodoc
class __$$LoadMoreDerivativeImplCopyWithImpl<$Res>
    extends _$WalletImportEventCopyWithImpl<$Res, _$LoadMoreDerivativeImpl>
    implements _$$LoadMoreDerivativeImplCopyWith<$Res> {
  __$$LoadMoreDerivativeImplCopyWithImpl(_$LoadMoreDerivativeImpl _value,
      $Res Function(_$LoadMoreDerivativeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selected = null,
    Object? balances = null,
    Object? seedPhrase = null,
  }) {
    return _then(_$LoadMoreDerivativeImpl(
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

class _$LoadMoreDerivativeImpl implements _LoadMoreDerivative {
  const _$LoadMoreDerivativeImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadMoreDerivativeImpl &&
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
  _$$LoadMoreDerivativeImplCopyWith<_$LoadMoreDerivativeImpl> get copyWith =>
      __$$LoadMoreDerivativeImplCopyWithImpl<_$LoadMoreDerivativeImpl>(
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
      required final String seedPhrase}) = _$LoadMoreDerivativeImpl;

  Set<int> get selected;
  Map<String, List<TokenBalance>> get balances;
  String get seedPhrase;
  @JsonKey(ignore: true)
  _$$LoadMoreDerivativeImplCopyWith<_$LoadMoreDerivativeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImportWalletsFromSeedImplCopyWith<$Res> {
  factory _$$ImportWalletsFromSeedImplCopyWith(
          _$ImportWalletsFromSeedImpl value,
          $Res Function(_$ImportWalletsFromSeedImpl) then) =
      __$$ImportWalletsFromSeedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String seedPhrase, List<Account> existingAccounts});
}

/// @nodoc
class __$$ImportWalletsFromSeedImplCopyWithImpl<$Res>
    extends _$WalletImportEventCopyWithImpl<$Res, _$ImportWalletsFromSeedImpl>
    implements _$$ImportWalletsFromSeedImplCopyWith<$Res> {
  __$$ImportWalletsFromSeedImplCopyWithImpl(_$ImportWalletsFromSeedImpl _value,
      $Res Function(_$ImportWalletsFromSeedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seedPhrase = null,
    Object? existingAccounts = null,
  }) {
    return _then(_$ImportWalletsFromSeedImpl(
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

class _$ImportWalletsFromSeedImpl implements _ImportWalletsFromSeed {
  const _$ImportWalletsFromSeedImpl(this.seedPhrase,
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImportWalletsFromSeedImpl &&
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
  _$$ImportWalletsFromSeedImplCopyWith<_$ImportWalletsFromSeedImpl>
      get copyWith => __$$ImportWalletsFromSeedImplCopyWithImpl<
          _$ImportWalletsFromSeedImpl>(this, _$identity);

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
      _$ImportWalletsFromSeedImpl;

  String get seedPhrase;
  List<Account> get existingAccounts;
  @JsonKey(ignore: true)
  _$$ImportWalletsFromSeedImplCopyWith<_$ImportWalletsFromSeedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImportMultipleWalletsImplCopyWith<$Res> {
  factory _$$ImportMultipleWalletsImplCopyWith(
          _$ImportMultipleWalletsImpl value,
          $Res Function(_$ImportMultipleWalletsImpl) then) =
      __$$ImportMultipleWalletsImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<String> values,
      List<Account> existingAccounts,
      bool creatingAfterSettingPasscode});
}

/// @nodoc
class __$$ImportMultipleWalletsImplCopyWithImpl<$Res>
    extends _$WalletImportEventCopyWithImpl<$Res, _$ImportMultipleWalletsImpl>
    implements _$$ImportMultipleWalletsImplCopyWith<$Res> {
  __$$ImportMultipleWalletsImplCopyWithImpl(_$ImportMultipleWalletsImpl _value,
      $Res Function(_$ImportMultipleWalletsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? values = null,
    Object? existingAccounts = null,
    Object? creatingAfterSettingPasscode = null,
  }) {
    return _then(_$ImportMultipleWalletsImpl(
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

class _$ImportMultipleWalletsImpl implements _ImportMultipleWallets {
  const _$ImportMultipleWalletsImpl(final List<String> values,
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImportMultipleWalletsImpl &&
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
  _$$ImportMultipleWalletsImplCopyWith<_$ImportMultipleWalletsImpl>
      get copyWith => __$$ImportMultipleWalletsImplCopyWithImpl<
          _$ImportMultipleWalletsImpl>(this, _$identity);

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
      _$ImportMultipleWalletsImpl;

  List<String> get values;
  List<Account> get existingAccounts;
  bool get creatingAfterSettingPasscode;
  @JsonKey(ignore: true)
  _$$ImportMultipleWalletsImplCopyWith<_$ImportMultipleWalletsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WatchWalletImplCopyWith<$Res> {
  factory _$$WatchWalletImplCopyWith(
          _$WatchWalletImpl value, $Res Function(_$WatchWalletImpl) then) =
      __$$WatchWalletImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String name,
      String address,
      WalletGroup walletGroup,
      List<Account> existingAccounts});
}

/// @nodoc
class __$$WatchWalletImplCopyWithImpl<$Res>
    extends _$WalletImportEventCopyWithImpl<$Res, _$WatchWalletImpl>
    implements _$$WatchWalletImplCopyWith<$Res> {
  __$$WatchWalletImplCopyWithImpl(
      _$WatchWalletImpl _value, $Res Function(_$WatchWalletImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? address = null,
    Object? walletGroup = null,
    Object? existingAccounts = null,
  }) {
    return _then(_$WatchWalletImpl(
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

class _$WatchWalletImpl implements _WatchWallet {
  const _$WatchWalletImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WatchWalletImpl &&
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
  _$$WatchWalletImplCopyWith<_$WatchWalletImpl> get copyWith =>
      __$$WatchWalletImplCopyWithImpl<_$WatchWalletImpl>(this, _$identity);

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
      required final List<Account> existingAccounts}) = _$WatchWalletImpl;

  String get name;
  String get address;
  WalletGroup get walletGroup;
  List<Account> get existingAccounts;
  @JsonKey(ignore: true)
  _$$WatchWalletImplCopyWith<_$WatchWalletImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetImplCopyWith<$Res> {
  factory _$$ResetImplCopyWith(
          _$ResetImpl value, $Res Function(_$ResetImpl) then) =
      __$$ResetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetImplCopyWithImpl<$Res>
    extends _$WalletImportEventCopyWithImpl<$Res, _$ResetImpl>
    implements _$$ResetImplCopyWith<$Res> {
  __$$ResetImplCopyWithImpl(
      _$ResetImpl _value, $Res Function(_$ResetImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetImpl implements _Reset {
  const _$ResetImpl();

  @override
  String toString() {
    return 'WalletImportEvent.reset()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetImpl);
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
  const factory _Reset() = _$ResetImpl;
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
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$WalletImportStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl extends _Initial {
  const _$InitialImpl() : super._();

  @override
  String toString() {
    return 'WalletImportState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
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
  const factory _Initial() = _$InitialImpl;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$$AccountsToImportImplCopyWith<$Res> {
  factory _$$AccountsToImportImplCopyWith(_$AccountsToImportImpl value,
          $Res Function(_$AccountsToImportImpl) then) =
      __$$AccountsToImportImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Account> accounts});
}

/// @nodoc
class __$$AccountsToImportImplCopyWithImpl<$Res>
    extends _$WalletImportStateCopyWithImpl<$Res, _$AccountsToImportImpl>
    implements _$$AccountsToImportImplCopyWith<$Res> {
  __$$AccountsToImportImplCopyWithImpl(_$AccountsToImportImpl _value,
      $Res Function(_$AccountsToImportImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = null,
  }) {
    return _then(_$AccountsToImportImpl(
      null == accounts
          ? _value._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<Account>,
    ));
  }
}

/// @nodoc

class _$AccountsToImportImpl extends _AccountsToImport {
  const _$AccountsToImportImpl(final List<Account> accounts)
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountsToImportImpl &&
            const DeepCollectionEquality().equals(other._accounts, _accounts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_accounts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountsToImportImplCopyWith<_$AccountsToImportImpl> get copyWith =>
      __$$AccountsToImportImplCopyWithImpl<_$AccountsToImportImpl>(
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
      _$AccountsToImportImpl;
  const _AccountsToImport._() : super._();

  List<Account> get accounts;
  @JsonKey(ignore: true)
  _$$AccountsToImportImplCopyWith<_$AccountsToImportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReadyToImportImplCopyWith<$Res> {
  factory _$$ReadyToImportImplCopyWith(
          _$ReadyToImportImpl value, $Res Function(_$ReadyToImportImpl) then) =
      __$$ReadyToImportImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Account> accounts});
}

/// @nodoc
class __$$ReadyToImportImplCopyWithImpl<$Res>
    extends _$WalletImportStateCopyWithImpl<$Res, _$ReadyToImportImpl>
    implements _$$ReadyToImportImplCopyWith<$Res> {
  __$$ReadyToImportImplCopyWithImpl(
      _$ReadyToImportImpl _value, $Res Function(_$ReadyToImportImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = null,
  }) {
    return _then(_$ReadyToImportImpl(
      null == accounts
          ? _value._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<Account>,
    ));
  }
}

/// @nodoc

class _$ReadyToImportImpl extends _ReadyToImport {
  const _$ReadyToImportImpl(final List<Account> accounts)
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadyToImportImpl &&
            const DeepCollectionEquality().equals(other._accounts, _accounts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_accounts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadyToImportImplCopyWith<_$ReadyToImportImpl> get copyWith =>
      __$$ReadyToImportImplCopyWithImpl<_$ReadyToImportImpl>(this, _$identity);

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
  const factory _ReadyToImport(final List<Account> accounts) =
      _$ReadyToImportImpl;
  const _ReadyToImport._() : super._();

  List<Account> get accounts;
  @JsonKey(ignore: true)
  _$$ReadyToImportImplCopyWith<_$ReadyToImportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InProcessImplCopyWith<$Res> {
  factory _$$InProcessImplCopyWith(
          _$InProcessImpl value, $Res Function(_$InProcessImpl) then) =
      __$$InProcessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InProcessImplCopyWithImpl<$Res>
    extends _$WalletImportStateCopyWithImpl<$Res, _$InProcessImpl>
    implements _$$InProcessImplCopyWith<$Res> {
  __$$InProcessImplCopyWithImpl(
      _$InProcessImpl _value, $Res Function(_$InProcessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InProcessImpl extends _InProcess {
  const _$InProcessImpl() : super._();

  @override
  String toString() {
    return 'WalletImportState.inProcess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InProcessImpl);
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
  const factory _InProcess() = _$InProcessImpl;
  const _InProcess._() : super._();
}

/// @nodoc
abstract class _$$InDAImportProcessImplCopyWith<$Res> {
  factory _$$InDAImportProcessImplCopyWith(_$InDAImportProcessImpl value,
          $Res Function(_$InDAImportProcessImpl) then) =
      __$$InDAImportProcessImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Account> accounts,
      Set<int> selected,
      Map<String, List<TokenBalance>> balances});
}

/// @nodoc
class __$$InDAImportProcessImplCopyWithImpl<$Res>
    extends _$WalletImportStateCopyWithImpl<$Res, _$InDAImportProcessImpl>
    implements _$$InDAImportProcessImplCopyWith<$Res> {
  __$$InDAImportProcessImplCopyWithImpl(_$InDAImportProcessImpl _value,
      $Res Function(_$InDAImportProcessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = null,
    Object? selected = null,
    Object? balances = null,
  }) {
    return _then(_$InDAImportProcessImpl(
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

class _$InDAImportProcessImpl extends _InDAImportProcess {
  const _$InDAImportProcessImpl(final List<Account> accounts,
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InDAImportProcessImpl &&
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
  _$$InDAImportProcessImplCopyWith<_$InDAImportProcessImpl> get copyWith =>
      __$$InDAImportProcessImplCopyWithImpl<_$InDAImportProcessImpl>(
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
      final Map<String, List<TokenBalance>> balances) = _$InDAImportProcessImpl;
  const _InDAImportProcess._() : super._();

  List<Account> get accounts;
  Set<int> get selected;
  Map<String, List<TokenBalance>> get balances;
  @JsonKey(ignore: true)
  _$$InDAImportProcessImplCopyWith<_$InDAImportProcessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InLoadMoreProcessImplCopyWith<$Res> {
  factory _$$InLoadMoreProcessImplCopyWith(_$InLoadMoreProcessImpl value,
          $Res Function(_$InLoadMoreProcessImpl) then) =
      __$$InLoadMoreProcessImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Account> accounts,
      Set<int> selected,
      Map<String, List<TokenBalance>> balances,
      String seedPhrase});
}

/// @nodoc
class __$$InLoadMoreProcessImplCopyWithImpl<$Res>
    extends _$WalletImportStateCopyWithImpl<$Res, _$InLoadMoreProcessImpl>
    implements _$$InLoadMoreProcessImplCopyWith<$Res> {
  __$$InLoadMoreProcessImplCopyWithImpl(_$InLoadMoreProcessImpl _value,
      $Res Function(_$InLoadMoreProcessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = null,
    Object? selected = null,
    Object? balances = null,
    Object? seedPhrase = null,
  }) {
    return _then(_$InLoadMoreProcessImpl(
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

class _$InLoadMoreProcessImpl extends _InLoadMoreProcess {
  const _$InLoadMoreProcessImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InLoadMoreProcessImpl &&
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
  _$$InLoadMoreProcessImplCopyWith<_$InLoadMoreProcessImpl> get copyWith =>
      __$$InLoadMoreProcessImplCopyWithImpl<_$InLoadMoreProcessImpl>(
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
      final String seedPhrase) = _$InLoadMoreProcessImpl;
  const _InLoadMoreProcess._() : super._();

  List<Account> get accounts;
  Set<int> get selected;
  Map<String, List<TokenBalance>> get balances;
  String get seedPhrase;
  @JsonKey(ignore: true)
  _$$InLoadMoreProcessImplCopyWith<_$InLoadMoreProcessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImportedImplCopyWith<$Res> {
  factory _$$ImportedImplCopyWith(
          _$ImportedImpl value, $Res Function(_$ImportedImpl) then) =
      __$$ImportedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Account account});
}

/// @nodoc
class __$$ImportedImplCopyWithImpl<$Res>
    extends _$WalletImportStateCopyWithImpl<$Res, _$ImportedImpl>
    implements _$$ImportedImplCopyWith<$Res> {
  __$$ImportedImplCopyWithImpl(
      _$ImportedImpl _value, $Res Function(_$ImportedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
  }) {
    return _then(_$ImportedImpl(
      null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
    ));
  }
}

/// @nodoc

class _$ImportedImpl extends _Imported {
  const _$ImportedImpl(this.account) : super._();

  @override
  final Account account;

  @override
  String toString() {
    return 'WalletImportState.imported(account: $account)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImportedImpl &&
            (identical(other.account, account) || other.account == account));
  }

  @override
  int get hashCode => Object.hash(runtimeType, account);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImportedImplCopyWith<_$ImportedImpl> get copyWith =>
      __$$ImportedImplCopyWithImpl<_$ImportedImpl>(this, _$identity);

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
  const factory _Imported(final Account account) = _$ImportedImpl;
  const _Imported._() : super._();

  Account get account;
  @JsonKey(ignore: true)
  _$$ImportedImplCopyWith<_$ImportedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImportedMultipleWalletsImplCopyWith<$Res> {
  factory _$$ImportedMultipleWalletsImplCopyWith(
          _$ImportedMultipleWalletsImpl value,
          $Res Function(_$ImportedMultipleWalletsImpl) then) =
      __$$ImportedMultipleWalletsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Account> accounts});
}

/// @nodoc
class __$$ImportedMultipleWalletsImplCopyWithImpl<$Res>
    extends _$WalletImportStateCopyWithImpl<$Res, _$ImportedMultipleWalletsImpl>
    implements _$$ImportedMultipleWalletsImplCopyWith<$Res> {
  __$$ImportedMultipleWalletsImplCopyWithImpl(
      _$ImportedMultipleWalletsImpl _value,
      $Res Function(_$ImportedMultipleWalletsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = null,
  }) {
    return _then(_$ImportedMultipleWalletsImpl(
      null == accounts
          ? _value._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<Account>,
    ));
  }
}

/// @nodoc

class _$ImportedMultipleWalletsImpl extends _ImportedMultipleWallets {
  const _$ImportedMultipleWalletsImpl(final List<Account> accounts)
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImportedMultipleWalletsImpl &&
            const DeepCollectionEquality().equals(other._accounts, _accounts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_accounts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImportedMultipleWalletsImplCopyWith<_$ImportedMultipleWalletsImpl>
      get copyWith => __$$ImportedMultipleWalletsImplCopyWithImpl<
          _$ImportedMultipleWalletsImpl>(this, _$identity);

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
      _$ImportedMultipleWalletsImpl;
  const _ImportedMultipleWallets._() : super._();

  List<Account> get accounts;
  @JsonKey(ignore: true)
  _$$ImportedMultipleWalletsImplCopyWith<_$ImportedMultipleWalletsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImportedMultipleDerivativeWalletsImplCopyWith<$Res> {
  factory _$$ImportedMultipleDerivativeWalletsImplCopyWith(
          _$ImportedMultipleDerivativeWalletsImpl value,
          $Res Function(_$ImportedMultipleDerivativeWalletsImpl) then) =
      __$$ImportedMultipleDerivativeWalletsImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Account> accounts,
      Set<int> selected,
      Map<String, List<TokenBalance>> balances,
      String seedPhrase});
}

/// @nodoc
class __$$ImportedMultipleDerivativeWalletsImplCopyWithImpl<$Res>
    extends _$WalletImportStateCopyWithImpl<$Res,
        _$ImportedMultipleDerivativeWalletsImpl>
    implements _$$ImportedMultipleDerivativeWalletsImplCopyWith<$Res> {
  __$$ImportedMultipleDerivativeWalletsImplCopyWithImpl(
      _$ImportedMultipleDerivativeWalletsImpl _value,
      $Res Function(_$ImportedMultipleDerivativeWalletsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = null,
    Object? selected = null,
    Object? balances = null,
    Object? seedPhrase = null,
  }) {
    return _then(_$ImportedMultipleDerivativeWalletsImpl(
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

class _$ImportedMultipleDerivativeWalletsImpl
    extends _ImportedMultipleDerivativeWallets {
  const _$ImportedMultipleDerivativeWalletsImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImportedMultipleDerivativeWalletsImpl &&
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
  _$$ImportedMultipleDerivativeWalletsImplCopyWith<
          _$ImportedMultipleDerivativeWalletsImpl>
      get copyWith => __$$ImportedMultipleDerivativeWalletsImplCopyWithImpl<
          _$ImportedMultipleDerivativeWalletsImpl>(this, _$identity);

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
      final String seedPhrase) = _$ImportedMultipleDerivativeWalletsImpl;
  const _ImportedMultipleDerivativeWallets._() : super._();

  List<Account> get accounts;
  Set<int> get selected;
  Map<String, List<TokenBalance>> get balances;
  String get seedPhrase;
  @JsonKey(ignore: true)
  _$$ImportedMultipleDerivativeWalletsImplCopyWith<
          _$ImportedMultipleDerivativeWalletsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImportedMultipleWalletsWithSetPasscodeImplCopyWith<$Res> {
  factory _$$ImportedMultipleWalletsWithSetPasscodeImplCopyWith(
          _$ImportedMultipleWalletsWithSetPasscodeImpl value,
          $Res Function(_$ImportedMultipleWalletsWithSetPasscodeImpl) then) =
      __$$ImportedMultipleWalletsWithSetPasscodeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Account> accounts});
}

/// @nodoc
class __$$ImportedMultipleWalletsWithSetPasscodeImplCopyWithImpl<$Res>
    extends _$WalletImportStateCopyWithImpl<$Res,
        _$ImportedMultipleWalletsWithSetPasscodeImpl>
    implements _$$ImportedMultipleWalletsWithSetPasscodeImplCopyWith<$Res> {
  __$$ImportedMultipleWalletsWithSetPasscodeImplCopyWithImpl(
      _$ImportedMultipleWalletsWithSetPasscodeImpl _value,
      $Res Function(_$ImportedMultipleWalletsWithSetPasscodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = null,
  }) {
    return _then(_$ImportedMultipleWalletsWithSetPasscodeImpl(
      null == accounts
          ? _value._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<Account>,
    ));
  }
}

/// @nodoc

class _$ImportedMultipleWalletsWithSetPasscodeImpl
    extends _ImportedMultipleWalletsWithSetPasscode {
  const _$ImportedMultipleWalletsWithSetPasscodeImpl(
      final List<Account> accounts)
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImportedMultipleWalletsWithSetPasscodeImpl &&
            const DeepCollectionEquality().equals(other._accounts, _accounts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_accounts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImportedMultipleWalletsWithSetPasscodeImplCopyWith<
          _$ImportedMultipleWalletsWithSetPasscodeImpl>
      get copyWith =>
          __$$ImportedMultipleWalletsWithSetPasscodeImplCopyWithImpl<
              _$ImportedMultipleWalletsWithSetPasscodeImpl>(this, _$identity);

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
          final List<Account> accounts) =
      _$ImportedMultipleWalletsWithSetPasscodeImpl;
  const _ImportedMultipleWalletsWithSetPasscode._() : super._();

  List<Account> get accounts;
  @JsonKey(ignore: true)
  _$$ImportedMultipleWalletsWithSetPasscodeImplCopyWith<
          _$ImportedMultipleWalletsWithSetPasscodeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImportedWithSetPasscodeImplCopyWith<$Res> {
  factory _$$ImportedWithSetPasscodeImplCopyWith(
          _$ImportedWithSetPasscodeImpl value,
          $Res Function(_$ImportedWithSetPasscodeImpl) then) =
      __$$ImportedWithSetPasscodeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Account account});
}

/// @nodoc
class __$$ImportedWithSetPasscodeImplCopyWithImpl<$Res>
    extends _$WalletImportStateCopyWithImpl<$Res, _$ImportedWithSetPasscodeImpl>
    implements _$$ImportedWithSetPasscodeImplCopyWith<$Res> {
  __$$ImportedWithSetPasscodeImplCopyWithImpl(
      _$ImportedWithSetPasscodeImpl _value,
      $Res Function(_$ImportedWithSetPasscodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
  }) {
    return _then(_$ImportedWithSetPasscodeImpl(
      null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
    ));
  }
}

/// @nodoc

class _$ImportedWithSetPasscodeImpl extends _ImportedWithSetPasscode {
  const _$ImportedWithSetPasscodeImpl(this.account) : super._();

  @override
  final Account account;

  @override
  String toString() {
    return 'WalletImportState.importedWithSetPasscode(account: $account)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImportedWithSetPasscodeImpl &&
            (identical(other.account, account) || other.account == account));
  }

  @override
  int get hashCode => Object.hash(runtimeType, account);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImportedWithSetPasscodeImplCopyWith<_$ImportedWithSetPasscodeImpl>
      get copyWith => __$$ImportedWithSetPasscodeImplCopyWithImpl<
          _$ImportedWithSetPasscodeImpl>(this, _$identity);

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
      _$ImportedWithSetPasscodeImpl;
  const _ImportedWithSetPasscode._() : super._();

  Account get account;
  @JsonKey(ignore: true)
  _$$ImportedWithSetPasscodeImplCopyWith<_$ImportedWithSetPasscodeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NeedsToDeleteWatchAccountImplCopyWith<$Res> {
  factory _$$NeedsToDeleteWatchAccountImplCopyWith(
          _$NeedsToDeleteWatchAccountImpl value,
          $Res Function(_$NeedsToDeleteWatchAccountImpl) then) =
      __$$NeedsToDeleteWatchAccountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Account account});
}

/// @nodoc
class __$$NeedsToDeleteWatchAccountImplCopyWithImpl<$Res>
    extends _$WalletImportStateCopyWithImpl<$Res,
        _$NeedsToDeleteWatchAccountImpl>
    implements _$$NeedsToDeleteWatchAccountImplCopyWith<$Res> {
  __$$NeedsToDeleteWatchAccountImplCopyWithImpl(
      _$NeedsToDeleteWatchAccountImpl _value,
      $Res Function(_$NeedsToDeleteWatchAccountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
  }) {
    return _then(_$NeedsToDeleteWatchAccountImpl(
      null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
    ));
  }
}

/// @nodoc

class _$NeedsToDeleteWatchAccountImpl extends _NeedsToDeleteWatchAccount {
  const _$NeedsToDeleteWatchAccountImpl(this.account) : super._();

  @override
  final Account account;

  @override
  String toString() {
    return 'WalletImportState.needsToDeleteTrackAccount(account: $account)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NeedsToDeleteWatchAccountImpl &&
            (identical(other.account, account) || other.account == account));
  }

  @override
  int get hashCode => Object.hash(runtimeType, account);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NeedsToDeleteWatchAccountImplCopyWith<_$NeedsToDeleteWatchAccountImpl>
      get copyWith => __$$NeedsToDeleteWatchAccountImplCopyWithImpl<
          _$NeedsToDeleteWatchAccountImpl>(this, _$identity);

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
      _$NeedsToDeleteWatchAccountImpl;
  const _NeedsToDeleteWatchAccount._() : super._();

  Account get account;
  @JsonKey(ignore: true)
  _$$NeedsToDeleteWatchAccountImplCopyWith<_$NeedsToDeleteWatchAccountImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImportingFailedImplCopyWith<$Res> {
  factory _$$ImportingFailedImplCopyWith(_$ImportingFailedImpl value,
          $Res Function(_$ImportingFailedImpl) then) =
      __$$ImportingFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WalletImportFailure failure});

  $WalletImportFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$ImportingFailedImplCopyWithImpl<$Res>
    extends _$WalletImportStateCopyWithImpl<$Res, _$ImportingFailedImpl>
    implements _$$ImportingFailedImplCopyWith<$Res> {
  __$$ImportingFailedImplCopyWithImpl(
      _$ImportingFailedImpl _value, $Res Function(_$ImportingFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$ImportingFailedImpl(
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

class _$ImportingFailedImpl extends ImportingFailed {
  const _$ImportingFailedImpl(this.failure) : super._();

  @override
  final WalletImportFailure failure;

  @override
  String toString() {
    return 'WalletImportState.importingFailed(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImportingFailedImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImportingFailedImplCopyWith<_$ImportingFailedImpl> get copyWith =>
      __$$ImportingFailedImplCopyWithImpl<_$ImportingFailedImpl>(
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
      _$ImportingFailedImpl;
  const ImportingFailed._() : super._();

  WalletImportFailure get failure;
  @JsonKey(ignore: true)
  _$$ImportingFailedImplCopyWith<_$ImportingFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImportingDAFailedImplCopyWith<$Res> {
  factory _$$ImportingDAFailedImplCopyWith(_$ImportingDAFailedImpl value,
          $Res Function(_$ImportingDAFailedImpl) then) =
      __$$ImportingDAFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Account> accounts,
      Set<int> selected,
      Map<String, List<TokenBalance>> balances});
}

/// @nodoc
class __$$ImportingDAFailedImplCopyWithImpl<$Res>
    extends _$WalletImportStateCopyWithImpl<$Res, _$ImportingDAFailedImpl>
    implements _$$ImportingDAFailedImplCopyWith<$Res> {
  __$$ImportingDAFailedImplCopyWithImpl(_$ImportingDAFailedImpl _value,
      $Res Function(_$ImportingDAFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = null,
    Object? selected = null,
    Object? balances = null,
  }) {
    return _then(_$ImportingDAFailedImpl(
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

class _$ImportingDAFailedImpl extends _ImportingDAFailed {
  const _$ImportingDAFailedImpl(final List<Account> accounts,
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImportingDAFailedImpl &&
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
  _$$ImportingDAFailedImplCopyWith<_$ImportingDAFailedImpl> get copyWith =>
      __$$ImportingDAFailedImplCopyWithImpl<_$ImportingDAFailedImpl>(
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
      final Map<String, List<TokenBalance>> balances) = _$ImportingDAFailedImpl;
  const _ImportingDAFailed._() : super._();

  List<Account> get accounts;
  Set<int> get selected;
  Map<String, List<TokenBalance>> get balances;
  @JsonKey(ignore: true)
  _$$ImportingDAFailedImplCopyWith<_$ImportingDAFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
