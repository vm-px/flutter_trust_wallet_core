import './ffi_impl_imports.dart';

/// Represents an address in C++ for almost any blockchain.
abstract class TWAnyAddress {
  /// Compares two addresses for equality.
  ///
  /// \param lhs The first address to compare.
  /// \param rhs The second address to compare.
  /// \return bool indicating the addresses are equal.
  static int TWAnyAddressEqual(
    Pointer<Void> lhs,
    Pointer<Void> rhs,
  ) {
    return _TWAnyAddressEqual(
      lhs,
      rhs,
    );
  }

  static final _TWAnyAddressEqual_ptr =
      lookup<NativeFunction<Int32 Function(Pointer<Void>, Pointer<Void>)>>(
          'TWAnyAddressEqual');
  static final _dart_TWAnyAddressEqual _TWAnyAddressEqual =
      _TWAnyAddressEqual_ptr.asFunction<_dart_TWAnyAddressEqual>();

  /// Determines if the string is a valid Any address.
  ///
  /// \param string address to validate.
  /// \param coin coin type of the address.
  /// \return bool indicating if the address is valid.
  static int TWAnyAddressIsValid(
    Pointer<Utf8> string,
    int coin,
  ) {
    return _TWAnyAddressIsValid(
      string,
      coin,
    );
  }

  static final _TWAnyAddressIsValid_ptr =
      lookup<NativeFunction<Int32 Function(Pointer<Utf8>, Int32)>>(
          'TWAnyAddressIsValid');
  static final _dart_TWAnyAddressIsValid _TWAnyAddressIsValid =
      _TWAnyAddressIsValid_ptr.asFunction<_dart_TWAnyAddressIsValid>();

  /// Creates an address from a string representation and a coin type. Must be deleted with TWAnyAddressDelete after use.
  ///
  /// \param string address to create.
  /// \param coin coin type of the address.
  /// \return TWAnyAddress pointer or nullptr if address and coin are invalid.
  static Pointer<Void> TWAnyAddressCreateWithString(
    Pointer<Utf8> string,
    int coin,
  ) {
    return _TWAnyAddressCreateWithString(
      string,
      coin,
    );
  }

  static final _TWAnyAddressCreateWithString_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Utf8>, Int32)>>(
    'TWAnyAddressCreateWithString',
  );
  static final _dart_TWAnyAddressCreateWithString
      _TWAnyAddressCreateWithString = _TWAnyAddressCreateWithString_ptr
          .asFunction<_dart_TWAnyAddressCreateWithString>();

  /// Creates an address from a public key.
  ///
  /// \param publicKey derivates the address from the public key.
  /// \param coin coin type of the address.
  /// \return TWAnyAddress pointer or nullptr if public key is invalid.
  static Pointer<Void> TWAnyAddressCreateWithPublicKey(
    Pointer<Void> publicKey,
    int coin,
  ) {
    return _TWAnyAddressCreateWithPublicKey(
      publicKey,
      coin,
    );
  }

  static final _TWAnyAddressCreateWithPublicKey_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>, Int32)>>(
    'TWAnyAddressCreateWithPublicKey',
  );
  static final _dart_TWAnyAddressCreateWithPublicKey
      _TWAnyAddressCreateWithPublicKey = _TWAnyAddressCreateWithPublicKey_ptr
          .asFunction<_dart_TWAnyAddressCreateWithPublicKey>();

  /// Deletes an address.
  ///
  /// \param address address to delete.
  static void TWAnyAddressDelete(
    Pointer<Void> address,
  ) {
    return _TWAnyAddressDelete(
      address,
    );
  }

  static final _TWAnyAddressDelete_ptr =
      lookup<NativeFunction<Void Function(Pointer<Void>)>>(
          'TWAnyAddressDelete');
  static final _dart_TWAnyAddressDelete _TWAnyAddressDelete =
      _TWAnyAddressDelete_ptr.asFunction<_dart_TWAnyAddressDelete>();

  /// Returns the address string representation.
  ///
  /// \param address address to get the string representation of.
  static Pointer<Utf8> TWAnyAddressDescription(
    Pointer<Void> address,
  ) {
    return _TWAnyAddressDescription(
      address,
    );
  }

  static final _TWAnyAddressDescription_ptr =
      lookup<NativeFunction<Pointer<Utf8> Function(Pointer<Void>)>>(
    'TWAnyAddressDescription',
  );
  static final _dart_TWAnyAddressDescription _TWAnyAddressDescription =
      _TWAnyAddressDescription_ptr.asFunction<_dart_TWAnyAddressDescription>();

  /// Returns coin type of address.
  ///
  /// \param address address to get the coin type of.
  static int TWAnyAddressCoin(
    Pointer<Void> address,
  ) {
    return _TWAnyAddressCoin(
      address,
    );
  }

  static final _TWAnyAddressCoin_ptr =
      lookup<NativeFunction<Int32 Function(Pointer<Void>)>>('TWAnyAddressCoin');
  static final _dart_TWAnyAddressCoin _TWAnyAddressCoin =
      _TWAnyAddressCoin_ptr.asFunction<_dart_TWAnyAddressCoin>();

  /// Returns underlaying data (public key or key hash)
  ///
  /// \param address address to get the data of.
  static Pointer<Void> TWAnyAddressData(
    Pointer<Void> address,
  ) {
    return _TWAnyAddressData(
      address,
    );
  }

  static final _TWAnyAddressData_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>)>>(
          'TWAnyAddressData');
  static final _dart_TWAnyAddressData _TWAnyAddressData =
      _TWAnyAddressData_ptr.asFunction<_dart_TWAnyAddressData>();
}

typedef _dart_TWAnyAddressEqual = int Function(
  Pointer<Void> lhs,
  Pointer<Void> rhs,
);

typedef _dart_TWAnyAddressIsValid = int Function(
  Pointer<Utf8> string,
  int coin,
);

typedef _dart_TWAnyAddressCreateWithString = Pointer<Void> Function(
  Pointer<Utf8> string,
  int coin,
);

typedef _dart_TWAnyAddressCreateWithPublicKey = Pointer<Void> Function(
  Pointer<Void> publicKey,
  int coin,
);

typedef _dart_TWAnyAddressDelete = void Function(
  Pointer<Void> address,
);

typedef _dart_TWAnyAddressDescription = Pointer<Utf8> Function(
  Pointer<Void> address,
);

typedef _dart_TWAnyAddressCoin = int Function(
  Pointer<Void> address,
);

typedef _dart_TWAnyAddressData = Pointer<Void> Function(
  Pointer<Void> address,
);
