import './ffi_impl_imports.dart';

/// Represents a public key.
abstract class TWPublicKey {
  static const int TWPublicKeyCompressedSize = 33;
  static const int TWPublicKeyUncompressedSize = 65;

  /// Create a public key from a block of data
  ///
  /// \param data Non-null block of data representing the public key
  /// \param type type of the public key
  /// \note Should be deleted with \TWPublicKeyDelete
  /// \return Nullable pointer to the public key
  static Pointer<Void> TWPublicKeyCreateWithData(
    Pointer<Void> data,
    int type,
  ) {
    return _TWPublicKeyCreateWithData(
      data,
      type,
    );
  }

  static final _TWPublicKeyCreateWithData_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>, Int32)>>(
    'TWPublicKeyCreateWithData',
  );
  static final _dart_TWPublicKeyCreateWithData _TWPublicKeyCreateWithData =
      _TWPublicKeyCreateWithData_ptr.asFunction<
          _dart_TWPublicKeyCreateWithData>();

  /// Delete the given public key
  ///
  /// \param pk Non-null pointer to a public key
  static void TWPublicKeyDelete(
    Pointer<Void> pk,
  ) {
    return _TWPublicKeyDelete(
      pk,
    );
  }

  static final _TWPublicKeyDelete_ptr =
      lookup<NativeFunction<Void Function(Pointer<Void>)>>('TWPublicKeyDelete');
  static final _dart_TWPublicKeyDelete _TWPublicKeyDelete =
      _TWPublicKeyDelete_ptr.asFunction<_dart_TWPublicKeyDelete>();

  /// Determines if the given public key is valid or not
  ///
  /// \param data Non-null block of data representing the public key
  /// \param type type of the public key
  /// \return true if the block of data is a valid public key, false otherwise
  static int TWPublicKeyIsValid(
    Pointer<Void> data,
    int type,
  ) {
    return _TWPublicKeyIsValid(
      data,
      type,
    );
  }

  static final _TWPublicKeyIsValid_ptr =
      lookup<NativeFunction<Int32 Function(Pointer<Void>, Int32)>>(
          'TWPublicKeyIsValid');
  static final _dart_TWPublicKeyIsValid _TWPublicKeyIsValid =
      _TWPublicKeyIsValid_ptr.asFunction<_dart_TWPublicKeyIsValid>();

  /// Determines if the given public key is compressed or not
  ///
  /// \param pk Non-null pointer to a public key
  /// \return true if the public key is compressed, false otherwise
  static int TWPublicKeyIsCompressed(
    Pointer<Void> pk,
  ) {
    return _TWPublicKeyIsCompressed(
      pk,
    );
  }

  static final _TWPublicKeyIsCompressed_ptr =
      lookup<NativeFunction<Int32 Function(Pointer<Void>)>>(
    'TWPublicKeyIsCompressed',
  );
  static final _dart_TWPublicKeyIsCompressed _TWPublicKeyIsCompressed =
      _TWPublicKeyIsCompressed_ptr.asFunction<_dart_TWPublicKeyIsCompressed>();

  /// Give the compressed public key of the given non-compressed public key
  ///
  /// \param from Non-null pointer to a non-compressed public key
  /// \return Non-null pointer to the corresponding compressed public-key
  static Pointer<Void> TWPublicKeyCompressed(
    Pointer<Void> from,
  ) {
    return _TWPublicKeyCompressed(
      from,
    );
  }

  static final _TWPublicKeyCompressed_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>)>>(
    'TWPublicKeyCompressed',
  );
  static final _dart_TWPublicKeyCompressed _TWPublicKeyCompressed =
      _TWPublicKeyCompressed_ptr.asFunction<_dart_TWPublicKeyCompressed>();

  /// Give the non-compressed public key of a corresponding compressed public key
  ///
  /// \param from Non-null pointer to the corresponding compressed public key
  /// \return Non-null pointer to the corresponding non-compressed public key
  static Pointer<Void> TWPublicKeyUncompressed(
    Pointer<Void> from,
  ) {
    return _TWPublicKeyUncompressed(
      from,
    );
  }

  static final _TWPublicKeyUncompressed_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>)>>(
    'TWPublicKeyUncompressed',
  );
  static final _dart_TWPublicKeyUncompressed _TWPublicKeyUncompressed =
      _TWPublicKeyUncompressed_ptr.asFunction<_dart_TWPublicKeyUncompressed>();

  /// Gives the raw data of a given public-key
  ///
  /// \param pk Non-null pointer to a public key
  /// \return Non-null pointer to the raw block of data of the given public key
  static Pointer<Void> TWPublicKeyData(
    Pointer<Void> pk,
  ) {
    return _TWPublicKeyData(
      pk,
    );
  }

  static final _TWPublicKeyData_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>)>>(
          'TWPublicKeyData');
  static final _dart_TWPublicKeyData _TWPublicKeyData =
      _TWPublicKeyData_ptr.asFunction<_dart_TWPublicKeyData>();

  /// Verify the validity of a signature and a message using the given public key
  ///
  /// \param pk Non-null pointer to a public key
  /// \param signature Non-null pointer to a block of data corresponding to the signature
  /// \param message Non-null pointer to a block of data corresponding to the message
  /// \return true if the signature and the message belongs to the given public key, false otherwise
  static int TWPublicKeyVerify(
    Pointer<Void> pk,
    Pointer<Void> signature,
    Pointer<Void> message,
  ) {
    return _TWPublicKeyVerify(
      pk,
      signature,
      message,
    );
  }

  static final _TWPublicKeyVerify_ptr = lookup<
      NativeFunction<
          Int32 Function(Pointer<Void>, Pointer<Void>,
              Pointer<Void>)>>('TWPublicKeyVerify');
  static final _dart_TWPublicKeyVerify _TWPublicKeyVerify =
      _TWPublicKeyVerify_ptr.asFunction<_dart_TWPublicKeyVerify>();

  /// Verify the validity as DER of a signature and a message using the given public key
  ///
  /// \param pk Non-null pointer to a public key
  /// \param signature Non-null pointer to a block of data corresponding to the signature
  /// \param message Non-null pointer to a block of data corresponding to the message
  /// \return true if the signature and the message belongs to the given public key, false otherwise
  static int TWPublicKeyVerifyAsDER(
    Pointer<Void> pk,
    Pointer<Void> signature,
    Pointer<Void> message,
  ) {
    return _TWPublicKeyVerifyAsDER(
      pk,
      signature,
      message,
    );
  }

  static final _TWPublicKeyVerifyAsDER_ptr = lookup<
      NativeFunction<
          Int32 Function(Pointer<Void>, Pointer<Void>, Pointer<Void>)>>(
    'TWPublicKeyVerifyAsDER',
  );
  static final _dart_TWPublicKeyVerifyAsDER _TWPublicKeyVerifyAsDER =
      _TWPublicKeyVerifyAsDER_ptr.asFunction<_dart_TWPublicKeyVerifyAsDER>();

  /// Verify a Zilliqa schnorr signature with a signature and message.
  ///
  /// \param pk Non-null pointer to a public key
  /// \param signature Non-null pointer to a block of data corresponding to the signature
  /// \param message Non-null pointer to a block of data corresponding to the message
  /// \return true if the signature and the message belongs to the given public key, false otherwise
  static int TWPublicKeyVerifyZilliqaSchnorr(
    Pointer<Void> pk,
    Pointer<Void> signature,
    Pointer<Void> message,
  ) {
    return _TWPublicKeyVerifyZilliqaSchnorr(
      pk,
      signature,
      message,
    );
  }

  static final _TWPublicKeyVerifyZilliqaSchnorr_ptr = lookup<
      NativeFunction<
          Int32 Function(Pointer<Void>, Pointer<Void>, Pointer<Void>)>>(
    'TWPublicKeyVerifyZilliqaSchnorr',
  );
  static final _dart_TWPublicKeyVerifyZilliqaSchnorr
      _TWPublicKeyVerifyZilliqaSchnorr = _TWPublicKeyVerifyZilliqaSchnorr_ptr
          .asFunction<_dart_TWPublicKeyVerifyZilliqaSchnorr>();

  /// Give the public key type (eliptic) of a given public key
  ///
  /// \param publicKey Non-null pointer to a public key
  /// \return The public key type of the given public key (eliptic)
  static int TWPublicKeyKeyType(
    Pointer<Void> publicKey,
  ) {
    return _TWPublicKeyKeyType(
      publicKey,
    );
  }

  static final _TWPublicKeyKeyType_ptr =
      lookup<NativeFunction<Int32 Function(Pointer<Void>)>>(
          'TWPublicKeyKeyType');
  static final _dart_TWPublicKeyKeyType _TWPublicKeyKeyType =
      _TWPublicKeyKeyType_ptr.asFunction<_dart_TWPublicKeyKeyType>();

  /// Get the public key description from a given public key
  ///
  /// \param publicKey Non-null pointer to a public key
  /// \return Non-null pointer to a string representing the description of the public key
  static Pointer<Utf8> TWPublicKeyDescription(
    Pointer<Void> publicKey,
  ) {
    return _TWPublicKeyDescription(
      publicKey,
    );
  }

  static final _TWPublicKeyDescription_ptr =
      lookup<NativeFunction<Pointer<Utf8> Function(Pointer<Void>)>>(
    'TWPublicKeyDescription',
  );
  static final _dart_TWPublicKeyDescription _TWPublicKeyDescription =
      _TWPublicKeyDescription_ptr.asFunction<_dart_TWPublicKeyDescription>();

  /// Try to get a public key from a given signature and a message
  ///
  /// \param signature Non-null pointer to a block of data corresponding to the signature
  /// \param message Non-null pointer to a block of data corresponding to the message
  /// \return Null pointer if the public key can't be recover from the given signature and message,
  /// pointer to the public key otherwise
  static Pointer<Void> TWPublicKeyRecover(
    Pointer<Void> signature,
    Pointer<Void> message,
  ) {
    return _TWPublicKeyRecover(
      signature,
      message,
    );
  }

  static final _TWPublicKeyRecover_ptr = lookup<
          NativeFunction<Pointer<Void> Function(Pointer<Void>, Pointer<Void>)>>(
      'TWPublicKeyRecover');
  static final _dart_TWPublicKeyRecover _TWPublicKeyRecover =
      _TWPublicKeyRecover_ptr.asFunction<_dart_TWPublicKeyRecover>();
}

typedef _dart_TWPublicKeyCreateWithData = Pointer<Void> Function(
  Pointer<Void> data,
  int type,
);

typedef _dart_TWPublicKeyDelete = void Function(
  Pointer<Void> pk,
);

typedef _dart_TWPublicKeyIsValid = int Function(
  Pointer<Void> data,
  int type,
);

typedef _dart_TWPublicKeyIsCompressed = int Function(
  Pointer<Void> pk,
);

typedef _dart_TWPublicKeyCompressed = Pointer<Void> Function(
  Pointer<Void> from,
);

typedef _dart_TWPublicKeyUncompressed = Pointer<Void> Function(
  Pointer<Void> from,
);

typedef _dart_TWPublicKeyData = Pointer<Void> Function(
  Pointer<Void> pk,
);

typedef _dart_TWPublicKeyVerify = int Function(
  Pointer<Void> pk,
  Pointer<Void> signature,
  Pointer<Void> message,
);

typedef _dart_TWPublicKeyVerifyAsDER = int Function(
  Pointer<Void> pk,
  Pointer<Void> signature,
  Pointer<Void> message,
);

typedef _dart_TWPublicKeyVerifyZilliqaSchnorr = int Function(
  Pointer<Void> pk,
  Pointer<Void> signature,
  Pointer<Void> message,
);

typedef _dart_TWPublicKeyKeyType = int Function(
  Pointer<Void> publicKey,
);

typedef _dart_TWPublicKeyDescription = Pointer<Utf8> Function(
  Pointer<Void> publicKey,
);

typedef _dart_TWPublicKeyRecover = Pointer<Void> Function(
  Pointer<Void> signature,
  Pointer<Void> message,
);
