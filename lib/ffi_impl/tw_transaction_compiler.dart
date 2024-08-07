import './ffi_impl_imports.dart';

/// Non-core transaction utility methods, like building a transaction using an external signature.
class TWTransactionCompiler {
  /// Creates a TWString from a null-terminated UTF8 byte array. It must be deleted at the end.
  ///
  /// \param bytes a null-terminated UTF8 byte array.
  static Pointer<Void> TWTransactionCompilerBuildInput(
    int coinType,
    Pointer<Utf8> from,
    Pointer<Utf8> to,
    Pointer<Utf8> amount,
    Pointer<Utf8> asset,
    Pointer<Utf8> memo,
    Pointer<Utf8> chainIf,
  ) {
    return _TWTransactionCompilerBuildInput(
      coinType,
      from,
      to,
      amount,
      asset,
      memo,
      chainIf,
    );
  }

  static final _TWTransactionCompilerBuildInput_ptr = lookup<
      NativeFunction<
          Pointer<Void> Function(
    Int32,
    Pointer<Utf8>,
    Pointer<Utf8>,
    Pointer<Utf8>,
    Pointer<Utf8>,
    Pointer<Utf8>,
    Pointer<Utf8>,
  )>>(
    'TWTransactionCompilerBuildInput',
  );

  static final _dart_TWTransactionCompilerBuildInput
      _TWTransactionCompilerBuildInput = _TWTransactionCompilerBuildInput_ptr
          .asFunction<_dart_TWTransactionCompilerBuildInput>();

  /// Obtains pre-signing hashes of a transaction.
  ///
  /// We provide a default `PreSigningOutput` in TransactionCompiler.proto.
  /// For some special coins, such as bitcoin, we will create a custom `PreSigningOutput` object in its proto file.
  /// \param coin coin type.
  /// \param txInputData The serialized data of a signing input
  /// \return serialized data of a proto object `PreSigningOutput` includes hash.
  static Pointer<Void> TWTransactionCompilerPreImageHashes(
    int coinType,
    Pointer<Void> txInputData,
  ) {
    return _TWTransactionCompilerPreImageHashes(
      coinType,
      txInputData,
    );
  }

  static final _TWTransactionCompilerPreImageHashes_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Int32, Pointer<Void>)>>(
    'TWTransactionCompilerPreImageHashes',
  );

  static final _dart_TWTransactionCompilerPreImageHashes
      _TWTransactionCompilerPreImageHashes =
      _TWTransactionCompilerPreImageHashes_ptr.asFunction<
          _dart_TWTransactionCompilerPreImageHashes>();

  /// Compiles a complete transation with one or more external signatures.
  ///
  /// Puts together from transaction input and provided public keys and signatures. The signatures must match the hashes
  /// returned by TWTransactionCompilerPreImageHashes, in the same order. The publicKeyHash attached
  /// to the hashes enable identifying the private key needed for signing the hash.
  /// \param coin coin type.
  /// \param txInputData The serialized data of a signing input.
  /// \param signatures signatures to compile, using TWDataVector.
  /// \param publicKeys public keys for signers to match private keys, using TWDataVector.
  /// \return serialized data of a proto object `SigningOutput`.
  static Pointer<Void> TWTransactionCompilerCompileWithSignatures(
    int coinType,
    Pointer<Void> txInputData,
    Pointer<Void> signatures,
    Pointer<Void> publicKeys,
  ) {
    return _TWTransactionCompilerCompileWithSignatures(
      coinType,
      txInputData,
      signatures,
      publicKeys,
    );
  }

  static final _TWTransactionCompilerCompileWithSignatures_ptr = lookup<
      NativeFunction<
          Pointer<Void> Function(
    Int32,
    Pointer<Void>,
    Pointer<Void>,
    Pointer<Void>,
  )>>(
    'TWTransactionCompilerCompileWithSignatures',
  );

  static final _dart_TWTransactionCompilerCompileWithSignatures
      _TWTransactionCompilerCompileWithSignatures =
      _TWTransactionCompilerCompileWithSignatures_ptr.asFunction<
          _dart_TWTransactionCompilerCompileWithSignatures>();
}

typedef _dart_TWTransactionCompilerBuildInput = Pointer<Void> Function(
  int coinType,
  Pointer<Utf8> from,
  Pointer<Utf8> to,
  Pointer<Utf8> amount,
  Pointer<Utf8> asset,
  Pointer<Utf8> memo,
  Pointer<Utf8> chainIf,
);

typedef _dart_TWTransactionCompilerPreImageHashes = Pointer<Void> Function(
  int coinType,
  Pointer<Void> txInputData,
);

typedef _dart_TWTransactionCompilerCompileWithSignatures = Pointer<Void>
    Function(
  int coinType,
  Pointer<Void> txInputData,
  Pointer<Void> signatures,
  Pointer<Void> publicKeys,
);
