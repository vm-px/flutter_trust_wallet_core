import './ffi_impl_imports.dart';

/// Bitcoin script manipulating functions
abstract class TWBitcoinScript {
  /// Creates an empty script.
  ///
  /// \return A pointer to the script
  static Pointer<Void> TWBitcoinScriptCreate() {
    return _TWBitcoinScriptCreate();
  }

  static final _TWBitcoinScriptCreate_ptr =
      lookup<NativeFunction<Pointer<Void> Function()>>(
    'TWBitcoinScriptCreate',
  );
  static final _dart_TWBitcoinScriptCreate _TWBitcoinScriptCreate =
      _TWBitcoinScriptCreate_ptr.asFunction<_dart_TWBitcoinScriptCreate>();

  /// Creates a script from a raw data representation.
  ///
  /// \param data The data buffer
  /// \note Must be deleted with \TWBitcoinScriptDelete
  /// \return A pointer to the script
  static Pointer<Void> TWBitcoinScriptCreateWithData(
    Pointer<Void> data,
  ) {
    return _TWBitcoinScriptCreateWithData(
      data,
    );
  }

  static final _TWBitcoinScriptCreateWithData_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>)>>(
    'TWBitcoinScriptCreateWithData',
  );
  static final _dart_TWBitcoinScriptCreateWithData
      _TWBitcoinScriptCreateWithData = _TWBitcoinScriptCreateWithData_ptr
          .asFunction<_dart_TWBitcoinScriptCreateWithData>();

  /// Creates a script from a raw bytes and size.
  ///
  /// \param bytes The buffer
  /// \param size The size of the buffer
  /// \note Must be deleted with \TWBitcoinScriptDelete
  /// \return A pointer to the script
  static Pointer<Void> TWBitcoinScriptCreateWithBytes(
    Pointer<Uint8> bytes,
    int size,
  ) {
    return _TWBitcoinScriptCreateWithBytes(
      bytes,
      size,
    );
  }

  static final _TWBitcoinScriptCreateWithBytes_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Uint8>, Int32)>>(
    'TWBitcoinScriptCreateWithBytes',
  );
  static final _dart_TWBitcoinScriptCreateWithBytes
      _TWBitcoinScriptCreateWithBytes = _TWBitcoinScriptCreateWithBytes_ptr
          .asFunction<_dart_TWBitcoinScriptCreateWithBytes>();

  /// Creates a script by copying an existing script.
  ///
  /// \param script Non-null pointer to a script
  /// \note Must be deleted with \TWBitcoinScriptDelete
  /// \return A pointer to the script
  static Pointer<Void> TWBitcoinScriptCreateCopy(
    Pointer<Void> script,
  ) {
    return _TWBitcoinScriptCreateCopy(
      script,
    );
  }

  static final _TWBitcoinScriptCreateCopy_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>)>>(
    'TWBitcoinScriptCreateCopy',
  );
  static final _dart_TWBitcoinScriptCreateCopy _TWBitcoinScriptCreateCopy =
      _TWBitcoinScriptCreateCopy_ptr.asFunction<
          _dart_TWBitcoinScriptCreateCopy>();

  /// Delete/Deallocate a given script.
  ///
  /// \param script Non-null pointer to a script
  static void TWBitcoinScriptDelete(
    Pointer<Void> script,
  ) {
    return _TWBitcoinScriptDelete(
      script,
    );
  }

  static final _TWBitcoinScriptDelete_ptr =
      lookup<NativeFunction<Void Function(Pointer<Void>)>>(
    'TWBitcoinScriptDelete',
  );
  static final _dart_TWBitcoinScriptDelete _TWBitcoinScriptDelete =
      _TWBitcoinScriptDelete_ptr.asFunction<_dart_TWBitcoinScriptDelete>();

  /// Get size of a script
  ///
  /// \param script Non-null pointer to a script
  /// \return size of the script
  static int TWBitcoinScriptSize(
    Pointer<Void> script,
  ) {
    return _TWBitcoinScriptSize(
      script,
    );
  }

  static final _TWBitcoinScriptSize_ptr =
      lookup<NativeFunction<Int32 Function(Pointer<Void>)>>(
          'TWBitcoinScriptSize');
  static final _dart_TWBitcoinScriptSize _TWBitcoinScriptSize =
      _TWBitcoinScriptSize_ptr.asFunction<_dart_TWBitcoinScriptSize>();

  /// Get data of a script
  ///
  /// \param script Non-null pointer to a script
  /// \return data of the given script
  static Pointer<Void> TWBitcoinScriptData(
    Pointer<Void> script,
  ) {
    return _TWBitcoinScriptData(
      script,
    );
  }

  static final _TWBitcoinScriptData_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>)>>(
          'TWBitcoinScriptData');
  static final _dart_TWBitcoinScriptData _TWBitcoinScriptData =
      _TWBitcoinScriptData_ptr.asFunction<_dart_TWBitcoinScriptData>();

  /// Return script hash of a script
  ///
  /// \param script Non-null pointer to a script
  /// \return script hash of the given script
  static Pointer<Void> TWBitcoinScriptScriptHash(
    Pointer<Void> script,
  ) {
    return _TWBitcoinScriptScriptHash(
      script,
    );
  }

  static final _TWBitcoinScriptScriptHash_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>)>>(
    'TWBitcoinScriptScriptHash',
  );
  static final _dart_TWBitcoinScriptScriptHash _TWBitcoinScriptScriptHash =
      _TWBitcoinScriptScriptHash_ptr.asFunction<
          _dart_TWBitcoinScriptScriptHash>();

  /// Determines whether this is a pay-to-script-hash (P2SH) script.
  ///
  /// \param script Non-null pointer to a script
  /// \return true if this is a pay-to-script-hash (P2SH) script, false otherwise
  static int TWBitcoinScriptIsPayToScriptHash(
    Pointer<Void> script,
  ) {
    return _TWBitcoinScriptIsPayToScriptHash(
      script,
    );
  }

  static final _TWBitcoinScriptIsPayToScriptHash_ptr =
      lookup<NativeFunction<Int32 Function(Pointer<Void>)>>(
    'TWBitcoinScriptIsPayToScriptHash',
  );
  static final _dart_TWBitcoinScriptIsPayToScriptHash
      _TWBitcoinScriptIsPayToScriptHash = _TWBitcoinScriptIsPayToScriptHash_ptr
          .asFunction<_dart_TWBitcoinScriptIsPayToScriptHash>();

  /// Determines whether this is a pay-to-witness-script-hash (P2WSH) script.
  ///
  /// \param script Non-null pointer to a script
  /// \return true if this is a pay-to-witness-script-hash (P2WSH) script, false otherwise
  static int TWBitcoinScriptIsPayToWitnessScriptHash(
    Pointer<Void> script,
  ) {
    return _TWBitcoinScriptIsPayToWitnessScriptHash(
      script,
    );
  }

  static final _TWBitcoinScriptIsPayToWitnessScriptHash_ptr =
      lookup<NativeFunction<Int32 Function(Pointer<Void>)>>(
    'TWBitcoinScriptIsPayToWitnessScriptHash',
  );
  static final _dart_TWBitcoinScriptIsPayToWitnessScriptHash
      _TWBitcoinScriptIsPayToWitnessScriptHash =
      _TWBitcoinScriptIsPayToWitnessScriptHash_ptr.asFunction<
          _dart_TWBitcoinScriptIsPayToWitnessScriptHash>();

  /// Determines whether this is a pay-to-witness-public-key-hash (P2WPKH) script.
  ///
  /// \param script Non-null pointer to a script
  /// \return true if this is a pay-to-witness-public-key-hash (P2WPKH) script, false otherwise
  static int TWBitcoinScriptIsPayToWitnessPublicKeyHash(
    Pointer<Void> script,
  ) {
    return _TWBitcoinScriptIsPayToWitnessPublicKeyHash(
      script,
    );
  }

  static final _TWBitcoinScriptIsPayToWitnessPublicKeyHash_ptr =
      lookup<NativeFunction<Int32 Function(Pointer<Void>)>>(
    'TWBitcoinScriptIsPayToWitnessPublicKeyHash',
  );
  static final _dart_TWBitcoinScriptIsPayToWitnessPublicKeyHash
      _TWBitcoinScriptIsPayToWitnessPublicKeyHash =
      _TWBitcoinScriptIsPayToWitnessPublicKeyHash_ptr.asFunction<
          _dart_TWBitcoinScriptIsPayToWitnessPublicKeyHash>();

  /// Determines whether this is a witness program script.
  ///
  /// \param script Non-null pointer to a script
  /// \return true if this is a witness program script, false otherwise
  static int TWBitcoinScriptIsWitnessProgram(
    Pointer<Void> script,
  ) {
    return _TWBitcoinScriptIsWitnessProgram(
      script,
    );
  }

  static final _TWBitcoinScriptIsWitnessProgram_ptr =
      lookup<NativeFunction<Int32 Function(Pointer<Void>)>>(
    'TWBitcoinScriptIsWitnessProgram',
  );
  static final _dart_TWBitcoinScriptIsWitnessProgram
      _TWBitcoinScriptIsWitnessProgram = _TWBitcoinScriptIsWitnessProgram_ptr
          .asFunction<_dart_TWBitcoinScriptIsWitnessProgram>();

  /// Determines whether 2 scripts have the same content
  ///
  /// \param lhs Non-null pointer to the first script
  /// \param rhs Non-null pointer to the second script
  /// \return true if both script have the same content
  static int TWBitcoinScriptEqual(
    Pointer<Void> lhs,
    Pointer<Void> rhs,
  ) {
    return _TWBitcoinScriptEqual(
      lhs,
      rhs,
    );
  }

  static final _TWBitcoinScriptEqual_ptr =
      lookup<NativeFunction<Int32 Function(Pointer<Void>, Pointer<Void>)>>(
          'TWBitcoinScriptEqual');
  static final _dart_TWBitcoinScriptEqual _TWBitcoinScriptEqual =
      _TWBitcoinScriptEqual_ptr.asFunction<_dart_TWBitcoinScriptEqual>();

  /// Matches the script to a pay-to-public-key (P2PK) script.
  ///
  /// \param script Non-null pointer to a script
  /// \return The public key.
  static Pointer<Void> TWBitcoinScriptMatchPayToPubkey(
    Pointer<Void> script,
  ) {
    return _TWBitcoinScriptMatchPayToPubkey(
      script,
    );
  }

  static final _TWBitcoinScriptMatchPayToPubkey_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>)>>(
    'TWBitcoinScriptMatchPayToPubkey',
  );
  static final _dart_TWBitcoinScriptMatchPayToPubkey
      _TWBitcoinScriptMatchPayToPubkey = _TWBitcoinScriptMatchPayToPubkey_ptr
          .asFunction<_dart_TWBitcoinScriptMatchPayToPubkey>();

  /// Matches the script to a pay-to-public-key-hash (P2PKH).
  ///
  /// \param script Non-null pointer to a script
  /// \return the key hash.
  static Pointer<Void> TWBitcoinScriptMatchPayToPubkeyHash(
    Pointer<Void> script,
  ) {
    return _TWBitcoinScriptMatchPayToPubkeyHash(
      script,
    );
  }

  static final _TWBitcoinScriptMatchPayToPubkeyHash_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>)>>(
    'TWBitcoinScriptMatchPayToPubkeyHash',
  );
  static final _dart_TWBitcoinScriptMatchPayToPubkeyHash
      _TWBitcoinScriptMatchPayToPubkeyHash =
      _TWBitcoinScriptMatchPayToPubkeyHash_ptr.asFunction<
          _dart_TWBitcoinScriptMatchPayToPubkeyHash>();

  /// Matches the script to a pay-to-script-hash (P2SH).
  ///
  /// \param script Non-null pointer to a script
  /// \return the script hash.
  static Pointer<Void> TWBitcoinScriptMatchPayToScriptHash(
    Pointer<Void> script,
  ) {
    return _TWBitcoinScriptMatchPayToScriptHash(
      script,
    );
  }

  static final _TWBitcoinScriptMatchPayToScriptHash_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>)>>(
    'TWBitcoinScriptMatchPayToScriptHash',
  );
  static final _dart_TWBitcoinScriptMatchPayToScriptHash
      _TWBitcoinScriptMatchPayToScriptHash =
      _TWBitcoinScriptMatchPayToScriptHash_ptr.asFunction<
          _dart_TWBitcoinScriptMatchPayToScriptHash>();

  /// Matches the script to a pay-to-witness-public-key-hash (P2WPKH).
  ///
  /// \param script Non-null pointer to a script
  /// \return the key hash.
  static Pointer<Void> TWBitcoinScriptMatchPayToWitnessPublicKeyHash(
    Pointer<Void> script,
  ) {
    return _TWBitcoinScriptMatchPayToWitnessPublicKeyHash(
      script,
    );
  }

  static final _TWBitcoinScriptMatchPayToWitnessPublicKeyHash_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>)>>(
    'TWBitcoinScriptMatchPayToWitnessPublicKeyHash',
  );
  static final _dart_TWBitcoinScriptMatchPayToWitnessPublicKeyHash
      _TWBitcoinScriptMatchPayToWitnessPublicKeyHash =
      _TWBitcoinScriptMatchPayToWitnessPublicKeyHash_ptr.asFunction<
          _dart_TWBitcoinScriptMatchPayToWitnessPublicKeyHash>();

  /// Matches the script to a pay-to-witness-script-hash (P2WSH).
  ///
  /// \param script Non-null pointer to a script
  /// \return the script hash, a SHA256 of the witness script..
  static Pointer<Void> TWBitcoinScriptMatchPayToWitnessScriptHash(
    Pointer<Void> script,
  ) {
    return _TWBitcoinScriptMatchPayToWitnessScriptHash(
      script,
    );
  }

  static final _TWBitcoinScriptMatchPayToWitnessScriptHash_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>)>>(
    'TWBitcoinScriptMatchPayToWitnessScriptHash',
  );
  static final _dart_TWBitcoinScriptMatchPayToWitnessScriptHash
      _TWBitcoinScriptMatchPayToWitnessScriptHash =
      _TWBitcoinScriptMatchPayToWitnessScriptHash_ptr.asFunction<
          _dart_TWBitcoinScriptMatchPayToWitnessScriptHash>();

  /// Encodes the script.
  ///
  /// \param script Non-null pointer to a script
  /// \return The encoded script
  static Pointer<Void> TWBitcoinScriptEncode(
    Pointer<Void> script,
  ) {
    return _TWBitcoinScriptEncode(
      script,
    );
  }

  static final _TWBitcoinScriptEncode_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>)>>(
    'TWBitcoinScriptEncode',
  );
  static final _dart_TWBitcoinScriptEncode _TWBitcoinScriptEncode =
      _TWBitcoinScriptEncode_ptr.asFunction<_dart_TWBitcoinScriptEncode>();

  /// Builds a standard 'pay to public key' script.
  ///
  /// \param pubkey Non-null pointer to a pubkey
  /// \note Must be deleted with \TWBitcoinScriptDelete
  /// \return A pointer to the built script
  static Pointer<Void> TWBitcoinScriptBuildPayToPublicKey(
    Pointer<Void> hash,
  ) {
    return _TWBitcoinScriptBuildPayToPublicKey(
      hash,
    );
  }

  static final _TWBitcoinScriptBuildPayToPublicKey_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>)>>(
    'TWBitcoinScriptBuildPayToPublicKey',
  );
  static final _dart_TWBitcoinScriptBuildPayToPublicKeyHash
      _TWBitcoinScriptBuildPayToPublicKey =
      _TWBitcoinScriptBuildPayToPublicKey_ptr.asFunction<
          Pointer<Void> Function(Pointer<Void>)>();

  /// Builds a standard 'pay to public key hash' script.
  ///
  /// \param hash Non-null pointer to a PublicKey hash
  /// \note Must be deleted with \TWBitcoinScriptDelete
  /// \return A pointer to the built script
  static Pointer<Void> TWBitcoinScriptBuildPayToPublicKeyHash(
    Pointer<Void> hash,
  ) {
    return _TWBitcoinScriptBuildPayToPublicKeyHash(
      hash,
    );
  }

  static final _TWBitcoinScriptBuildPayToPublicKeyHash_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>)>>(
    'TWBitcoinScriptBuildPayToPublicKeyHash',
  );
  static final _dart_TWBitcoinScriptBuildPayToPublicKeyHash
      _TWBitcoinScriptBuildPayToPublicKeyHash =
      _TWBitcoinScriptBuildPayToPublicKeyHash_ptr.asFunction<
          _dart_TWBitcoinScriptBuildPayToPublicKeyHash>();

  /// Builds a standard 'pay to script hash' script.
  ///
  /// \param scriptHash Non-null pointer to a script hash
  /// \note Must be deleted with \TWBitcoinScriptDelete
  /// \return A pointer to the built script
  static Pointer<Void> TWBitcoinScriptBuildPayToScriptHash(
    Pointer<Void> scriptHash,
  ) {
    return _TWBitcoinScriptBuildPayToScriptHash(
      scriptHash,
    );
  }

  static final _TWBitcoinScriptBuildPayToScriptHash_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>)>>(
    'TWBitcoinScriptBuildPayToScriptHash',
  );
  static final _dart_TWBitcoinScriptBuildPayToScriptHash
      _TWBitcoinScriptBuildPayToScriptHash =
      _TWBitcoinScriptBuildPayToScriptHash_ptr.asFunction<
          _dart_TWBitcoinScriptBuildPayToScriptHash>();

  /// Builds a pay-to-witness-public-key-hash (P2WPKH) script..
  ///
  /// \param hash Non-null pointer to a witness public key hash
  /// \note Must be deleted with \TWBitcoinScriptDelete
  /// \return A pointer to the built script
  static Pointer<Void> TWBitcoinScriptBuildPayToWitnessPubkeyHash(
    Pointer<Void> hash,
  ) {
    return _TWBitcoinScriptBuildPayToWitnessPubkeyHash(
      hash,
    );
  }

  static final _TWBitcoinScriptBuildPayToWitnessPubkeyHash_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>)>>(
    'TWBitcoinScriptBuildPayToWitnessPubkeyHash',
  );
  static final _dart_TWBitcoinScriptBuildPayToWitnessPubkeyHash
      _TWBitcoinScriptBuildPayToWitnessPubkeyHash =
      _TWBitcoinScriptBuildPayToWitnessPubkeyHash_ptr.asFunction<
          _dart_TWBitcoinScriptBuildPayToWitnessPubkeyHash>();

  /// Builds a pay-to-witness-script-hash (P2WSH) script.
  ///
  /// \param scriptHash Non-null pointer to a script hash
  /// \note Must be deleted with \TWBitcoinScriptDelete
  /// \return A pointer to the built script
  static Pointer<Void> TWBitcoinScriptBuildPayToWitnessScriptHash(
    Pointer<Void> scriptHash,
  ) {
    return _TWBitcoinScriptBuildPayToWitnessScriptHash(
      scriptHash,
    );
  }

  static final _TWBitcoinScriptBuildPayToWitnessScriptHash_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>)>>(
    'TWBitcoinScriptBuildPayToWitnessScriptHash',
  );
  static final _dart_TWBitcoinScriptBuildPayToWitnessScriptHash
      _TWBitcoinScriptBuildPayToWitnessScriptHash =
      _TWBitcoinScriptBuildPayToWitnessScriptHash_ptr.asFunction<
          _dart_TWBitcoinScriptBuildPayToWitnessScriptHash>();

  /// Builds a appropriate lock script for the given address..
  ///
  /// \param address Non-null pointer to an address
  /// \param coin coin type
  /// \note Must be deleted with \TWBitcoinScriptDelete
  /// \return A pointer to the built script
  static Pointer<Void> TWBitcoinScriptLockScriptForAddress(
    Pointer<Utf8> address,
    int coin,
  ) {
    return _TWBitcoinScriptLockScriptForAddress(
      address,
      coin,
    );
  }

  static final _TWBitcoinScriptLockScriptForAddress_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Utf8>, Int32)>>(
    'TWBitcoinScriptLockScriptForAddress',
  );
  static final _dart_TWBitcoinScriptLockScriptForAddress
      _TWBitcoinScriptLockScriptForAddress =
      _TWBitcoinScriptLockScriptForAddress_ptr.asFunction<
          _dart_TWBitcoinScriptLockScriptForAddress>();

  /// Return the default HashType for the given coin, such as TWBitcoinSigHashTypeAll.
  ///
  /// \param coinType coin type
  /// \return default HashType for the given coin
  static int TWBitcoinScriptHashTypeForCoin(
    int coinType,
  ) {
    return _TWBitcoinScriptHashTypeForCoin(
      coinType,
    );
  }

  static final _TWBitcoinScriptHashTypeForCoin_ptr =
      lookup<NativeFunction<Int32 Function(Int32)>>(
    'TWBitcoinScriptHashTypeForCoin',
  );
  static final _dart_TWBitcoinScriptHashTypeForCoin
      _TWBitcoinScriptHashTypeForCoin = _TWBitcoinScriptHashTypeForCoin_ptr
          .asFunction<_dart_TWBitcoinScriptHashTypeForCoin>();
}

typedef _dart_TWBitcoinScriptCreate = Pointer<Void> Function();

typedef _dart_TWBitcoinScriptCreateWithData = Pointer<Void> Function(
  Pointer<Void> data,
);

typedef _dart_TWBitcoinScriptCreateWithBytes = Pointer<Void> Function(
  Pointer<Uint8> bytes,
  int size,
);

typedef _dart_TWBitcoinScriptCreateCopy = Pointer<Void> Function(
  Pointer<Void> script,
);

typedef _dart_TWBitcoinScriptDelete = void Function(
  Pointer<Void> script,
);

typedef _dart_TWBitcoinScriptSize = int Function(
  Pointer<Void> script,
);

typedef _dart_TWBitcoinScriptData = Pointer<Void> Function(
  Pointer<Void> script,
);

typedef _dart_TWBitcoinScriptScriptHash = Pointer<Void> Function(
  Pointer<Void> script,
);

typedef _dart_TWBitcoinScriptIsPayToScriptHash = int Function(
  Pointer<Void> script,
);

typedef _dart_TWBitcoinScriptIsPayToWitnessScriptHash = int Function(
  Pointer<Void> script,
);

typedef _dart_TWBitcoinScriptIsPayToWitnessPublicKeyHash = int Function(
  Pointer<Void> script,
);

typedef _dart_TWBitcoinScriptIsWitnessProgram = int Function(
  Pointer<Void> script,
);

typedef _dart_TWBitcoinScriptEqual = int Function(
  Pointer<Void> lhs,
  Pointer<Void> rhs,
);

typedef _dart_TWBitcoinScriptMatchPayToPubkey = Pointer<Void> Function(
  Pointer<Void> script,
);

typedef _dart_TWBitcoinScriptMatchPayToPubkeyHash = Pointer<Void> Function(
  Pointer<Void> script,
);

typedef _dart_TWBitcoinScriptMatchPayToScriptHash = Pointer<Void> Function(
  Pointer<Void> script,
);

typedef _dart_TWBitcoinScriptMatchPayToWitnessPublicKeyHash = Pointer<Void>
    Function(
  Pointer<Void> script,
);

typedef _dart_TWBitcoinScriptMatchPayToWitnessScriptHash = Pointer<Void>
    Function(
  Pointer<Void> script,
);

typedef _dart_TWBitcoinScriptEncode = Pointer<Void> Function(
  Pointer<Void> script,
);

typedef _dart_TWBitcoinScriptBuildPayToPublicKeyHash = Pointer<Void> Function(
  Pointer<Void> hash,
);

typedef _dart_TWBitcoinScriptBuildPayToScriptHash = Pointer<Void> Function(
  Pointer<Void> scriptHash,
);

typedef _dart_TWBitcoinScriptBuildPayToWitnessPubkeyHash = Pointer<Void>
    Function(
  Pointer<Void> hash,
);

typedef _dart_TWBitcoinScriptBuildPayToWitnessScriptHash = Pointer<Void>
    Function(
  Pointer<Void> scriptHash,
);

typedef _dart_TWBitcoinScriptLockScriptForAddress = Pointer<Void> Function(
  Pointer<Utf8> address,
  int coin,
);

typedef _dart_TWBitcoinScriptHashTypeForCoin = int Function(
  int coinType,
);
