import './ffi_impl_imports.dart';

/// Represents a BIP 0173 address.
abstract class TWSegwitAddress {
  /// Compares two addresses for equality.
  ///
  /// \param lhs left non-null pointer to a Bech32 Address
  /// \param rhs right non-null pointer to a Bech32 Address
  /// \return true if both address are equal, false otherwise
  static int TWSegwitAddressEqual(
    Pointer<Void> lhs,
    Pointer<Void> rhs,
  ) {
    return _TWSegwitAddressEqual(
      lhs,
      rhs,
    );
  }

  static final _TWSegwitAddressEqual_ptr =
      lookup<NativeFunction<Int32 Function(Pointer<Void>, Pointer<Void>)>>(
          'TWSegwitAddressEqual');
  static final _dart_TWSegwitAddressEqual _TWSegwitAddressEqual =
      _TWSegwitAddressEqual_ptr.asFunction<_dart_TWSegwitAddressEqual>();

  /// Determines if the string is a valid Bech32 address.
  ///
  /// \param string Non-null pointer to a Bech32 address as a string
  /// \return true if the string is a valid Bech32 address, false otherwise.
  static int TWSegwitAddressIsValidString(
    Pointer<Utf8> string,
  ) {
    return _TWSegwitAddressIsValidString(
      string,
    );
  }

  static final _TWSegwitAddressIsValidString_ptr =
      lookup<NativeFunction<Int32 Function(Pointer<Utf8>)>>(
    'TWSegwitAddressIsValidString',
  );
  static final _dart_TWSegwitAddressIsValidString
      _TWSegwitAddressIsValidString = _TWSegwitAddressIsValidString_ptr
          .asFunction<_dart_TWSegwitAddressIsValidString>();

  /// Creates an address from a string representation.
  ///
  /// \param string Non-null pointer to a Bech32 address as a string
  /// \note should be deleted with \TWSegwitAddressDelete
  /// \return Pointer to a Bech32 address if the string is a valid Bech32 address, null pointer otherwise
  static Pointer<Void> TWSegwitAddressCreateWithString(
    Pointer<Utf8> string,
  ) {
    return _TWSegwitAddressCreateWithString(
      string,
    );
  }

  static final _TWSegwitAddressCreateWithString_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Utf8>)>>(
    'TWSegwitAddressCreateWithString',
  );
  static final _dart_TWSegwitAddressCreateWithString
      _TWSegwitAddressCreateWithString = _TWSegwitAddressCreateWithString_ptr
          .asFunction<_dart_TWSegwitAddressCreateWithString>();

  /// Creates a segwit-version-0 address from a public key and HRP prefix.
  /// Taproot (v>=1) is not supported by this method.
  ///
  /// \param hrp HRP of the utxo coin targeted
  /// \param publicKey Non-null pointer to the public key of the targeted coin
  /// \note should be deleted with \TWSegwitAddressDelete
  /// \return Non-null pointer to the corresponding Segwit address
  static Pointer<Void> TWSegwitAddressCreateWithPublicKey(
    int hrp,
    Pointer<Void> publicKey,
  ) {
    return _TWSegwitAddressCreateWithPublicKey(
      hrp,
      publicKey,
    );
  }

  static final _TWSegwitAddressCreateWithPublicKey_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Int32, Pointer<Void>)>>(
    'TWSegwitAddressCreateWithPublicKey',
  );
  static final _dart_TWSegwitAddressCreateWithPublicKey
      _TWSegwitAddressCreateWithPublicKey =
      _TWSegwitAddressCreateWithPublicKey_ptr.asFunction<
          _dart_TWSegwitAddressCreateWithPublicKey>();

  /// Delete the given Segwit address
  ///
  /// \param address Non-null pointer to a Segwit address
  static void TWSegwitAddressDelete(
    Pointer<Void> address,
  ) {
    return _TWSegwitAddressDelete(
      address,
    );
  }

  static final _TWSegwitAddressDelete_ptr =
      lookup<NativeFunction<Void Function(Pointer<Void>)>>(
    'TWSegwitAddressDelete',
  );
  static final _dart_TWSegwitAddressDelete _TWSegwitAddressDelete =
      _TWSegwitAddressDelete_ptr.asFunction<_dart_TWSegwitAddressDelete>();

  /// Returns the address string representation.
  ///
  /// \param address Non-null pointer to a Segwit Address
  /// \return Non-null pointer to the segwit address string representation
  static Pointer<Utf8> TWSegwitAddressDescription(
    Pointer<Void> address,
  ) {
    return _TWSegwitAddressDescription(
      address,
    );
  }

  static final _TWSegwitAddressDescription_ptr =
      lookup<NativeFunction<Pointer<Utf8> Function(Pointer<Void>)>>(
    'TWSegwitAddressDescription',
  );
  static final _dart_TWSegwitAddressDescription _TWSegwitAddressDescription =
      _TWSegwitAddressDescription_ptr.asFunction<
          _dart_TWSegwitAddressDescription>();

  /// Returns the human-readable part.
  ///
  /// \param address Non-null pointer to a Segwit Address
  /// \return the HRP part of the given address
  static int TWSegwitAddressHRP(
    Pointer<Void> address,
  ) {
    return _TWSegwitAddressHRP(
      address,
    );
  }

  static final _TWSegwitAddressHRP_ptr =
      lookup<NativeFunction<Int32 Function(Pointer<Void>)>>(
          'TWSegwitAddressHRP');
  static final _dart_TWSegwitAddressHRP _TWSegwitAddressHRP =
      _TWSegwitAddressHRP_ptr.asFunction<_dart_TWSegwitAddressHRP>();

  /// Returns the human-readable part.
  ///
  /// \param address Non-null pointer to a Segwit Address
  /// \return returns the witness version of the given segwit address
  static int TWSegwitAddressWitnessVersion(
    Pointer<Void> address,
  ) {
    return _TWSegwitAddressWitnessVersion(
      address,
    );
  }

  static final _TWSegwitAddressWitnessVersion_ptr =
      lookup<NativeFunction<Int32 Function(Pointer<Void>)>>(
    'TWSegwitAddressWitnessVersion',
  );
  static final _dart_TWSegwitAddressWitnessVersion
      _TWSegwitAddressWitnessVersion = _TWSegwitAddressWitnessVersion_ptr
          .asFunction<_dart_TWSegwitAddressWitnessVersion>();

  /// Returns the witness program
  ///
  /// \param address Non-null pointer to a Segwit Address
  /// \return returns the witness data of the given segwit address as a non-null pointer block of data
  static Pointer<Void> TWSegwitAddressWitnessProgram(
    Pointer<Void> address,
  ) {
    return _TWSegwitAddressWitnessProgram(
      address,
    );
  }

  static final _TWSegwitAddressWitnessProgram_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>)>>(
    'TWSegwitAddressWitnessProgram',
  );
  static final _dart_TWSegwitAddressWitnessProgram
      _TWSegwitAddressWitnessProgram = _TWSegwitAddressWitnessProgram_ptr
          .asFunction<_dart_TWSegwitAddressWitnessProgram>();
}

typedef _dart_TWSegwitAddressEqual = int Function(
  Pointer<Void> lhs,
  Pointer<Void> rhs,
);

typedef _dart_TWSegwitAddressIsValidString = int Function(
  Pointer<Utf8> string,
);

typedef _dart_TWSegwitAddressCreateWithString = Pointer<Void> Function(
  Pointer<Utf8> string,
);

typedef _dart_TWSegwitAddressCreateWithPublicKey = Pointer<Void> Function(
  int hrp,
  Pointer<Void> publicKey,
);

typedef _dart_TWSegwitAddressDelete = void Function(
  Pointer<Void> address,
);

typedef _dart_TWSegwitAddressDescription = Pointer<Utf8> Function(
  Pointer<Void> address,
);

typedef _dart_TWSegwitAddressHRP = int Function(
  Pointer<Void> address,
);

typedef _dart_TWSegwitAddressWitnessVersion = int Function(
  Pointer<Void> address,
);

typedef _dart_TWSegwitAddressWitnessProgram = Pointer<Void> Function(
  Pointer<Void> address,
);
