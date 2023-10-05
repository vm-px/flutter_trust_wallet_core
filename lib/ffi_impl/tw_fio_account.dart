import './ffi_impl_imports.dart';

/// Represents a FIO Account name
abstract class TWFIOAccount {
  /// Create a FIO Account
  ///
  /// \param string Account name
  /// \note Must be deleted with \TWFIOAccountDelete
  /// \return Pointer to a nullable FIO Account
  static Pointer<Void> TWFIOAccountCreateWithString(
    Pointer<Utf8> string,
  ) {
    return _TWFIOAccountCreateWithString(
      string,
    );
  }

  static final _TWFIOAccountCreateWithString_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Utf8>)>>(
    'TWFIOAccountCreateWithString',
  );
  static final _dart_TWFIOAccountCreateWithString
      _TWFIOAccountCreateWithString = _TWFIOAccountCreateWithString_ptr
          .asFunction<_dart_TWFIOAccountCreateWithString>();

  /// Delete a FIO Account
  ///
  /// \param account Pointer to a non-null FIO Account
  static void TWFIOAccountDelete(
    Pointer<Void> account,
  ) {
    return _TWFIOAccountDelete(
      account,
    );
  }

  static final _TWFIOAccountDelete_ptr =
      lookup<NativeFunction<Void Function(Pointer<Void>)>>(
          'TWFIOAccountDelete');
  static final _dart_TWFIOAccountDelete _TWFIOAccountDelete =
      _TWFIOAccountDelete_ptr.asFunction<_dart_TWFIOAccountDelete>();

  /// Returns the short account string representation.
  ///
  /// \param account Pointer to a non-null FIO Account
  /// \return Account non-null string representation
  static Pointer<Utf8> TWFIOAccountDescription(
    Pointer<Void> account,
  ) {
    return _TWFIOAccountDescription(
      account,
    );
  }

  static final _TWFIOAccountDescription_ptr =
      lookup<NativeFunction<Pointer<Utf8> Function(Pointer<Void>)>>(
          'TWFIOAccountDelete');
  static final _dart_TWFIOAccountDescription _TWFIOAccountDescription =
      _TWFIOAccountDescription_ptr.asFunction<_dart_TWFIOAccountDescription>();
}

typedef _dart_TWFIOAccountCreateWithString = Pointer<Void> Function(
  Pointer<Utf8> string,
);

typedef _dart_TWFIOAccountDelete = void Function(
  Pointer<Void> account,
);

typedef _dart_TWFIOAccountDescription = Pointer<Utf8> Function(
  Pointer<Void> account,
);
