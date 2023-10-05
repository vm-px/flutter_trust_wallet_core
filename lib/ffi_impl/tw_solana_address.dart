import './ffi_impl_imports.dart';

/// Solana address helper functions
abstract class TWSolanaAddress {
  /// Creates an address from a string representation.
  ///
  /// \param string Non-null pointer to a solana address string
  /// \note Should be deleted with \TWSolanaAddressDelete
  /// \return Non-null pointer to a Solana address data structure
  static Pointer<Void> TWSolanaAddressCreateWithString(
    Pointer<Utf8> string,
  ) {
    return _TWSolanaAddressCreateWithString(
      string,
    );
  }

  static final _TWSolanaAddressCreateWithString_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Utf8>)>>(
    'TWSolanaAddressCreateWithString',
  );
  static final _dart_TWSolanaAddressCreateWithString
      _TWSolanaAddressCreateWithString = _TWSolanaAddressCreateWithString_ptr
          .asFunction<_dart_TWSolanaAddressCreateWithString>();

  /// Delete the given Solana address
  ///
  /// \param address Non-null pointer to a Solana Address
  static void TWSolanaAddressDelete(
    Pointer<Void> address,
  ) {
    return _TWSolanaAddressDelete(
      address,
    );
  }

  static final _TWSolanaAddressDelete_ptr =
      lookup<NativeFunction<Void Function(Pointer<Void>)>>(
    'TWSolanaAddressDelete',
  );
  static final _dart_TWSolanaAddressDelete _TWSolanaAddressDelete =
      _TWSolanaAddressDelete_ptr.asFunction<_dart_TWSolanaAddressDelete>();

  /// Derive default token address for token
  ///
  /// \param address Non-null pointer to a Solana Address
  /// \param tokenMintAddress Non-null pointer to a token mint address as a string
  /// \return Null pointer if the Default token address for a token is not found, valid pointer otherwise
  static Pointer<Utf8> TWSolanaAddressDefaultTokenAddress(
    Pointer<Void> address,
    Pointer<Utf8> tokenMintAddress,
  ) {
    return _TWSolanaAddressDefaultTokenAddress(
      address,
      tokenMintAddress,
    );
  }

  static final _TWSolanaAddressDefaultTokenAddress_ptr = lookup<
      NativeFunction<Pointer<Utf8> Function(Pointer<Void>, Pointer<Utf8>)>>(
    'TWSolanaAddressDefaultTokenAddress',
  );
  static final _dart_TWSolanaAddressDefaultTokenAddress
      _TWSolanaAddressDefaultTokenAddress =
      _TWSolanaAddressDefaultTokenAddress_ptr.asFunction<
          _dart_TWSolanaAddressDefaultTokenAddress>();

  /// Returns the address string representation.
  ///
  /// \param address Non-null pointer to a Solana Address
  /// \return Non-null pointer to the Solana address string representation
  static Pointer<Utf8> TWSolanaAddressDescription(
    Pointer<Void> address,
  ) {
    return _TWSolanaAddressDescription(
      address,
    );
  }

  static final _TWSolanaAddressDescription_ptr =
      lookup<NativeFunction<Pointer<Utf8> Function(Pointer<Void>)>>(
    'TWSolanaAddressDescription',
  );
  static final _dart_TWSolanaAddressDescription _TWSolanaAddressDescription =
      _TWSolanaAddressDescription_ptr.asFunction<
          _dart_TWSolanaAddressDescription>();
}

typedef _dart_TWSolanaAddressCreateWithString = Pointer<Void> Function(
  Pointer<Utf8> string,
);

typedef _dart_TWSolanaAddressDelete = void Function(
  Pointer<Void> address,
);

typedef _dart_TWSolanaAddressDefaultTokenAddress = Pointer<Utf8> Function(
  Pointer<Void> address,
  Pointer<Utf8> tokenMintAddress,
);

typedef _dart_TWSolanaAddressDescription = Pointer<Utf8> Function(
  Pointer<Void> address,
);
