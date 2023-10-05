import './ffi_impl_imports.dart';

/// Represents a legacy Groestlcoin address.
abstract class TWGroestlcoinAddress {
  /// Compares two addresses for equality.
  ///
  /// \param lhs left Non-null GroestlCoin address to be compared
  /// \param rhs right Non-null GroestlCoin address to be compared
  /// \return true if both address are equal, false otherwise
  static int TWGroestlcoinAddressEqual(
    Pointer<Void> lhs,
    Pointer<Void> rhs,
  ) {
    return _TWGroestlcoinAddressEqual(
      lhs,
      rhs,
    );
  }

  static final _TWGroestlcoinAddressEqual_ptr =
      lookup<NativeFunction<Int32 Function(Pointer<Void>, Pointer<Void>)>>(
    'TWGroestlcoinAddressEqual',
  );
  static final _dart_TWGroestlcoinAddressEqual _TWGroestlcoinAddressEqual =
      _TWGroestlcoinAddressEqual_ptr.asFunction<
          _dart_TWGroestlcoinAddressEqual>();

  /// Determines if the string is a valid Groestlcoin address.
  ///
  /// \param string Non-null string.
  /// \return true if it's a valid address, false otherwise
  static int TWGroestlcoinAddressIsValidString(
    Pointer<Utf8> string,
  ) {
    return _TWGroestlcoinAddressIsValidString(
      string,
    );
  }

  static final _TWGroestlcoinAddressIsValidString_ptr =
      lookup<NativeFunction<Int32 Function(Pointer<Utf8>)>>(
    'TWGroestlcoinAddressIsValidString',
  );
  static final _dart_TWGroestlcoinAddressIsValidString
      _TWGroestlcoinAddressIsValidString =
      _TWGroestlcoinAddressIsValidString_ptr.asFunction<
          _dart_TWGroestlcoinAddressIsValidString>();

  /// Create an address from a base58 string representation.
  ///
  /// \param string Non-null string
  /// \note Must be deleted with \TWGroestlcoinAddressDelete
  /// \return Non-null GroestlcoinAddress
  static Pointer<Void> TWGroestlcoinAddressCreateWithString(
    Pointer<Utf8> string,
  ) {
    return _TWGroestlcoinAddressCreateWithString(
      string,
    );
  }

  static final _TWGroestlcoinAddressCreateWithString_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Utf8>)>>(
    'TWGroestlcoinAddressCreateWithString',
  );
  static final _dart_TWGroestlcoinAddressCreateWithString
      _TWGroestlcoinAddressCreateWithString =
      _TWGroestlcoinAddressCreateWithString_ptr.asFunction<
          _dart_TWGroestlcoinAddressCreateWithString>();

  /// Create an address from a public key and a prefix byte.
  ///
  /// \param publicKey Non-null public key
  /// \param prefix public key prefix
  /// \note Must be deleted with \TWGroestlcoinAddressDelete
  /// \return Non-null GroestlcoinAddress
  static Pointer<Void> TWGroestlcoinAddressCreateWithPublicKey(
    Pointer<Void> publicKey,
    int prefix,
  ) {
    return _TWGroestlcoinAddressCreateWithPublicKey(
      publicKey,
      prefix,
    );
  }

  static final _TWGroestlcoinAddressCreateWithPublicKey_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>, Int32)>>(
    'TWGroestlcoinAddressCreateWithPublicKey',
  );
  static final _dart_TWGroestlcoinAddressCreateWithPublicKey
      _TWGroestlcoinAddressCreateWithPublicKey =
      _TWGroestlcoinAddressCreateWithPublicKey_ptr.asFunction<
          _dart_TWGroestlcoinAddressCreateWithPublicKey>();

  /// Delete a Groestlcoin address
  ///
  /// \param address Non-null GroestlcoinAddress
  static void TWGroestlcoinAddressDelete(
    Pointer<Void> address,
  ) {
    return _TWGroestlcoinAddressDelete(
      address,
    );
  }

  static final _TWGroestlcoinAddressDelete_ptr =
      lookup<NativeFunction<Void Function(Pointer<Void>)>>(
    'TWGroestlcoinAddressDelete',
  );
  static final _dart_TWGroestlcoinAddressDelete _TWGroestlcoinAddressDelete =
      _TWGroestlcoinAddressDelete_ptr.asFunction<
          _dart_TWGroestlcoinAddressDelete>();

  /// Returns the address base58 string representation.
  ///
  /// \param address Non-null GroestlcoinAddress
  /// \return Address description as a non-null string
  static Pointer<Utf8> TWGroestlcoinAddressDescription(
    Pointer<Void> address,
  ) {
    return _TWGroestlcoinAddressDescription(
      address,
    );
  }

  static final _TWGroestlcoinAddressDescription_ptr =
      lookup<NativeFunction<Pointer<Utf8> Function(Pointer<Void>)>>(
    'TWGroestlcoinAddressDescription',
  );
  static final _dart_TWGroestlcoinAddressDescription
      _TWGroestlcoinAddressDescription = _TWGroestlcoinAddressDescription_ptr
          .asFunction<_dart_TWGroestlcoinAddressDescription>();
}

typedef _dart_TWGroestlcoinAddressEqual = int Function(
  Pointer<Void> lhs,
  Pointer<Void> rhs,
);

typedef _dart_TWGroestlcoinAddressIsValidString = int Function(
  Pointer<Utf8> string,
);

typedef _dart_TWGroestlcoinAddressCreateWithString = Pointer<Void> Function(
  Pointer<Utf8> string,
);

typedef _dart_TWGroestlcoinAddressCreateWithPublicKey = Pointer<Void> Function(
  Pointer<Void> publicKey,
  int prefix,
);

typedef _dart_TWGroestlcoinAddressDelete = void Function(
  Pointer<Void> address,
);

typedef _dart_TWGroestlcoinAddressDescription = Pointer<Utf8> Function(
  Pointer<Void> address,
);
