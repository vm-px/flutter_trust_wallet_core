import './ffi_impl_imports.dart';

/// Represents a NEAR Account name
abstract class TWNEARAccount {
  /// Create a NEAR Account
  ///
  /// \param string Account name
  /// \note Account should be deleted by calling \TWNEARAccountDelete
  /// \return Pointer to a nullable NEAR Account.
  static Pointer<Void> TWNEARAccountCreateWithString(
    Pointer<Utf8> string,
  ) {
    return _TWNEARAccountCreateWithString(
      string,
    );
  }

  static final _TWNEARAccountCreateWithString_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Utf8>)>>(
    'TWNEARAccountCreateWithString',
  );
  static final _dart_TWNEARAccountCreateWithString
      _TWNEARAccountCreateWithString = _TWNEARAccountCreateWithString_ptr
          .asFunction<_dart_TWNEARAccountCreateWithString>();

  /// Delete the given Near Account
  ///
  /// \param account Pointer to a non-null NEAR Account
  void TWNEARAccountDelete(
    Pointer<Void> account,
  ) {
    return _TWNEARAccountDelete(
      account,
    );
  }

  late final _TWNEARAccountDelete_ptr =
      lookup<NativeFunction<Void Function(Pointer<Void>)>>(
          'TWNEARAccountDelete');
  late final _dart_TWNEARAccountDelete _TWNEARAccountDelete =
      _TWNEARAccountDelete_ptr.asFunction<_dart_TWNEARAccountDelete>();

  /// Returns the user friendly string representation.
  ///
  /// \param account Pointer to a non-null NEAR Account
  /// \return Non-null string account description
  Pointer<Utf8> TWNEARAccountDescription(
    Pointer<Void> account,
  ) {
    return _TWNEARAccountDescription(
      account,
    );
  }

  late final _TWNEARAccountDescription_ptr =
      lookup<NativeFunction<Pointer<Utf8> Function(Pointer<Void>)>>(
    'TWNEARAccountDescription',
  );
  late final _dart_TWNEARAccountDescription _TWNEARAccountDescription =
      _TWNEARAccountDescription_ptr.asFunction<
          _dart_TWNEARAccountDescription>();
}

typedef _dart_TWNEARAccountCreateWithString = Pointer<Void> Function(
  Pointer<Utf8> string,
);

typedef _dart_TWNEARAccountDelete = void Function(
  Pointer<Void> account,
);

typedef _dart_TWNEARAccountDescription = Pointer<Utf8> Function(
  Pointer<Void> account,
);
