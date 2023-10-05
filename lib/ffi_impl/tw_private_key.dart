import './ffi_impl_imports.dart';

/// Represents a private key.
abstract class TWPrivateKey {
  static const int TWPrivateKeySize = 32;

  /// Create a random private key
  ///
  /// \note Should be deleted with \TWPrivateKeyDelete
  /// \return Non-null Private key
  static Pointer<Void> TWPrivateKeyCreate() {
    return _TWPrivateKeyCreate();
  }

  static final _TWPrivateKeyCreate_ptr =
      lookup<NativeFunction<Pointer<Void> Function()>>('TWPrivateKeyCreate');
  static final _dart_TWPrivateKeyCreate _TWPrivateKeyCreate =
      _TWPrivateKeyCreate_ptr.asFunction<_dart_TWPrivateKeyCreate>();

  /// Create a private key with the given block of data
  ///
  /// \param data a block of data
  /// \note Should be deleted with \TWPrivateKeyDelete
  /// \return Nullable pointer to Private Key
  static Pointer<Void> TWPrivateKeyCreateWithData(
    Pointer<Void> data,
  ) {
    return _TWPrivateKeyCreateWithData(
      data,
    );
  }

  static final _TWPrivateKeyCreateWithData_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>)>>(
    'TWPrivateKeyCreateWithData',
  );
  static final _dart_TWPrivateKeyCreateWithData _TWPrivateKeyCreateWithData =
      _TWPrivateKeyCreateWithData_ptr.asFunction<
          _dart_TWPrivateKeyCreateWithData>();

  /// Deep copy a given private key
  ///
  /// \param key Non-null private key to be copied
  /// \note Should be deleted with \TWPrivateKeyDelete
  /// \return Deep copy, Nullable pointer to Private key
  static Pointer<Void> TWPrivateKeyCreateCopy(
    Pointer<Void> key,
  ) {
    return _TWPrivateKeyCreateCopy(
      key,
    );
  }

  static final _TWPrivateKeyCreateCopy_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>)>>(
    'TWPrivateKeyCreateCopy',
  );
  static final _dart_TWPrivateKeyCreateCopy _TWPrivateKeyCreateCopy =
      _TWPrivateKeyCreateCopy_ptr.asFunction<_dart_TWPrivateKeyCreateCopy>();

  /// Delete the given private key
  ///
  /// \param pk Non-null pointer to private key
  static void TWPrivateKeyDelete(
    Pointer<Void> pk,
  ) {
    return _TWPrivateKeyDelete(
      pk,
    );
  }

  static final _TWPrivateKeyDelete_ptr =
      lookup<NativeFunction<Void Function(Pointer<Void>)>>(
    'TWPrivateKeyDelete',
  );
  static final _dart_TWPrivateKeyDelete _TWPrivateKeyDelete =
      _TWPrivateKeyDelete_ptr.asFunction<_dart_TWPrivateKeyDelete>();

  /// Determines if the given private key is valid or not.
  ///
  /// \param data block of data (private key bytes)
  /// \param curve Eliptic curve of the private key
  /// \return true if the private key is valid, false otherwise
  static int TWPrivateKeyIsValid(
    Pointer<Void> data,
    int curve,
  ) {
    return _TWPrivateKeyIsValid(
      data,
      curve,
    );
  }

  static final _TWPrivateKeyIsValid_ptr =
      lookup<NativeFunction<Int32 Function(Pointer<Void>, Int32)>>(
    'TWPrivateKeyIsValid',
  );
  static final _dart_TWPrivateKeyIsValid _TWPrivateKeyIsValid =
      _TWPrivateKeyIsValid_ptr.asFunction<_dart_TWPrivateKeyIsValid>();

  /// Convert the given private key to raw-bytes block of data
  ///
  /// \param pk Non-null pointer to the private key
  /// \return Non-null block of data (raw bytes) of the given private key
  static Pointer<Void> TWPrivateKeyData(
    Pointer<Void> pk,
  ) {
    return _TWPrivateKeyData(
      pk,
    );
  }

  static final _TWPrivateKeyData_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>)>>(
    'TWPrivateKeyData',
  );
  static final _dart_TWPrivateKeyData _TWPrivateKeyData =
      _TWPrivateKeyData_ptr.asFunction<_dart_TWPrivateKeyData>();

  /// Returns the Secp256k1 public key associated with the given private key
  ///
  /// \param pk Non-null pointer to the private key
  /// \param compressed if the given private key is compressed or not
  /// \return Non-null pointer to the corresponding public key
  static Pointer<Void> TWPrivateKeyGetPublicKeySecp256k1(
    Pointer<Void> pk,
    int compressed,
  ) {
    return _TWPrivateKeyGetPublicKeySecp256k1(
      pk,
      compressed,
    );
  }

  static final _TWPrivateKeyGetPublicKeySecp256k1_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>, Int32)>>(
    'TWPrivateKeyGetPublicKeySecp256k1',
  );
  static final _dart_TWPrivateKeyGetPublicKeySecp256k1
      _TWPrivateKeyGetPublicKeySecp256k1 =
      _TWPrivateKeyGetPublicKeySecp256k1_ptr.asFunction<
          _dart_TWPrivateKeyGetPublicKeySecp256k1>();

  /// Returns the Nist256p1 public key associated with the given private key
  ///
  /// \param pk Non-null pointer to the private key
  /// \return Non-null pointer to the corresponding public key
  static Pointer<Void> TWPrivateKeyGetPublicKeyNist256p1(
    Pointer<Void> pk,
  ) {
    return _TWPrivateKeyGetPublicKeyNist256p1(
      pk,
    );
  }

  static final _TWPrivateKeyGetPublicKeyNist256p1_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>)>>(
    'TWPrivateKeyGetPublicKeyNist256p1',
  );
  static final _dart_TWPrivateKeyGetPublicKeyNist256p1
      _TWPrivateKeyGetPublicKeyNist256p1 =
      _TWPrivateKeyGetPublicKeyNist256p1_ptr.asFunction<
          _dart_TWPrivateKeyGetPublicKeyNist256p1>();

  /// Returns the Ed25519 public key associated with the given private key
  ///
  /// \param pk Non-null pointer to the private key
  /// \return Non-null pointer to the corresponding public key
  static Pointer<Void> TWPrivateKeyGetPublicKeyEd25519(
    Pointer<Void> pk,
  ) {
    return _TWPrivateKeyGetPublicKeyEd25519(
      pk,
    );
  }

  static final _TWPrivateKeyGetPublicKeyEd25519_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>)>>(
    'TWPrivateKeyGetPublicKeyEd25519',
  );
  static final _dart_TWPrivateKeyGetPublicKeyEd25519
      _TWPrivateKeyGetPublicKeyEd25519 = _TWPrivateKeyGetPublicKeyEd25519_ptr
          .asFunction<_dart_TWPrivateKeyGetPublicKeyEd25519>();

  /// Returns the Ed25519Blake2b public key associated with the given private key
  ///
  /// \param pk Non-null pointer to the private key
  /// \return Non-null pointer to the corresponding public key
  static Pointer<Void> TWPrivateKeyGetPublicKeyEd25519Blake2b(
    Pointer<Void> pk,
  ) {
    return _TWPrivateKeyGetPublicKeyEd25519Blake2b(
      pk,
    );
  }

  static final _TWPrivateKeyGetPublicKeyEd25519Blake2b_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>)>>(
    'TWPrivateKeyGetPublicKeyEd25519Blake2b',
  );
  static final _dart_TWPrivateKeyGetPublicKeyEd25519Blake2b
      _TWPrivateKeyGetPublicKeyEd25519Blake2b =
      _TWPrivateKeyGetPublicKeyEd25519Blake2b_ptr.asFunction<
          _dart_TWPrivateKeyGetPublicKeyEd25519Blake2b>();

  /// Returns the Ed25519Cardano public key associated with the given private key
  ///
  /// \param pk Non-null pointer to the private key
  /// \return Non-null pointer to the corresponding public key
  static Pointer<Void> TWPrivateKeyGetPublicKeyEd25519Cardano(
    Pointer<Void> pk,
  ) {
    return _TWPrivateKeyGetPublicKeyEd25519Cardano(
      pk,
    );
  }

  static final _TWPrivateKeyGetPublicKeyEd25519Cardano_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>)>>(
    'TWPrivateKeyGetPublicKeyEd25519Cardano',
  );
  static final _dart_TWPrivateKeyGetPublicKeyEd25519Cardano
      _TWPrivateKeyGetPublicKeyEd25519Cardano =
      _TWPrivateKeyGetPublicKeyEd25519Cardano_ptr.asFunction<
          _dart_TWPrivateKeyGetPublicKeyEd25519Cardano>();

  /// Returns the Curve25519 public key associated with the given private key
  ///
  /// \param pk Non-null pointer to the private key
  /// \return Non-null pointer to the corresponding public key
  static Pointer<Void> TWPrivateKeyGetPublicKeyCurve25519(
    Pointer<Void> pk,
  ) {
    return _TWPrivateKeyGetPublicKeyCurve25519(
      pk,
    );
  }

  static final _TWPrivateKeyGetPublicKeyCurve25519_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>)>>(
    'TWPrivateKeyGetPublicKeyCurve25519',
  );
  static final _dart_TWPrivateKeyGetPublicKeyCurve25519
      _TWPrivateKeyGetPublicKeyCurve25519 =
      _TWPrivateKeyGetPublicKeyCurve25519_ptr.asFunction<
          _dart_TWPrivateKeyGetPublicKeyCurve25519>();

  /// Computes an EC Diffie-Hellman secret in constant time
  /// Supported curves: secp256k1
  ///
  /// \param pk Non-null pointer to a Private key
  /// \param publicKey Non-null pointer to the corresponding public key
  /// \param curve Eliptic curve
  /// \return The corresponding shared key as a non-null block of data
  static Pointer<Void> TWPrivateKeyGetSharedKey(
    Pointer<Void> pk,
    Pointer<Void> publicKey,
    int curve,
  ) {
    return _TWPrivateKeyGetSharedKey(
      pk,
      publicKey,
      curve,
    );
  }

  static final _TWPrivateKeyGetSharedKey_ptr = lookup<
      NativeFunction<
          Pointer<Void> Function(Pointer<Void>, Pointer<Void>, Int32)>>(
    'TWPrivateKeyGetSharedKey',
  );
  static final _dart_TWPrivateKeyGetSharedKey _TWPrivateKeyGetSharedKey =
      _TWPrivateKeyGetSharedKey_ptr.asFunction<
          _dart_TWPrivateKeyGetSharedKey>();

  /// Signs a digest using ECDSA and given curve.
  ///
  /// \param pk  Non-null pointer to a Private key
  /// \param digest Non-null digest block of data
  /// \param curve Eliptic curve
  /// \return Signature as a Non-null block of data
  static Pointer<Void> TWPrivateKeySign(
    Pointer<Void> pk,
    Pointer<Void> digest,
    int curve,
  ) {
    return _TWPrivateKeySign(
      pk,
      digest,
      curve,
    );
  }

  static final _TWPrivateKeySign_ptr = lookup<
      NativeFunction<
          Pointer<Void> Function(
    Pointer<Void>,
    Pointer<Void>,
    Int32,
  )>>('TWPrivateKeySign');
  static final _dart_TWPrivateKeySign _TWPrivateKeySign =
      _TWPrivateKeySign_ptr.asFunction<_dart_TWPrivateKeySign>();

  /// Signs a digest using ECDSA. The result is encoded with DER.
  ///
  /// \param pk  Non-null pointer to a Private key
  /// \param digest Non-null digest block of data
  /// \return Signature as a Non-null block of data
  static Pointer<Void> TWPrivateKeySignAsDER(
    Pointer<Void> pk,
    Pointer<Void> digest,
    int curve,
  ) {
    return _TWPrivateKeySignAsDER(
      pk,
      digest,
      curve,
    );
  }

  static final _TWPrivateKeySignAsDER_ptr = lookup<
      NativeFunction<
          Pointer<Void> Function(Pointer<Void>, Pointer<Void>, Int32)>>(
    'TWPrivateKeySignAsDER',
  );
  static final _dart_TWPrivateKeySign _TWPrivateKeySignAsDER =
      _TWPrivateKeySignAsDER_ptr.asFunction<
          Pointer<Void> Function(Pointer<Void>, Pointer<Void>, int)>();

  /// Signs a digest using ECDSA and Zilliqa schnorr signature scheme.
  ///
  /// \param pk Non-null pointer to a Private key
  /// \param message Non-null message
  /// \return Signature as a Non-null block of data
  static Pointer<Void> TWPrivateKeySignSchnorr(
    Pointer<Void> pk,
    Pointer<Void> message,
    int curve,
  ) {
    return _TWPrivateKeySignSchnorr(
      pk,
      message,
      curve,
    );
  }

  static final _TWPrivateKeySignSchnorr_ptr = lookup<
      NativeFunction<
          Pointer<Void> Function(Pointer<Void>, Pointer<Void>, Int32)>>(
    'TWPrivateKeySignSchnorr',
  );
  static final _dart_TWPrivateKeySign _TWPrivateKeySignSchnorr =
      _TWPrivateKeySignSchnorr_ptr.asFunction<
          Pointer<Void> Function(Pointer<Void>, Pointer<Void>, int)>();
}

typedef _dart_TWPrivateKeyCreate = Pointer<Void> Function();

typedef _dart_TWPrivateKeyCreateWithData = Pointer<Void> Function(
  Pointer<Void> data,
);

typedef _dart_TWPrivateKeyCreateCopy = Pointer<Void> Function(
  Pointer<Void> key,
);

typedef _dart_TWPrivateKeyDelete = void Function(
  Pointer<Void> pk,
);

typedef _dart_TWPrivateKeyIsValid = int Function(
  Pointer<Void> data,
  int curve,
);

typedef _dart_TWPrivateKeyData = Pointer<Void> Function(
  Pointer<Void> pk,
);

typedef _dart_TWPrivateKeyGetPublicKeySecp256k1 = Pointer<Void> Function(
  Pointer<Void> pk,
  int compressed,
);

typedef _dart_TWPrivateKeyGetPublicKeyNist256p1 = Pointer<Void> Function(
  Pointer<Void> pk,
);

typedef _dart_TWPrivateKeyGetPublicKeyEd25519 = Pointer<Void> Function(
  Pointer<Void> pk,
);

typedef _dart_TWPrivateKeyGetPublicKeyEd25519Blake2b = Pointer<Void> Function(
  Pointer<Void> pk,
);

typedef _dart_TWPrivateKeyGetPublicKeyEd25519Cardano = Pointer<Void> Function(
  Pointer<Void> pk,
);

typedef _dart_TWPrivateKeyGetPublicKeyCurve25519 = Pointer<Void> Function(
  Pointer<Void> pk,
);

typedef _dart_TWPrivateKeyGetSharedKey = Pointer<Void> Function(
  Pointer<Void> pk,
  Pointer<Void> publicKey,
  int curve,
);

typedef _dart_TWPrivateKeySign = Pointer<Void> Function(
  Pointer<Void> pk,
  Pointer<Void> digest,
  int curve,
);
