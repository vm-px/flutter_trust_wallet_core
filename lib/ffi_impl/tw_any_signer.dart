import './ffi_impl_imports.dart';

/// Represents a signer to sign transactions for any blockchain.
abstract class TWAnySigner {
  const TWAnySigner._();

  /// Signs a transaction specified by the signing input and coin type.
  ///
  /// \param input The serialized data of a signing input (e.g. TW.Bitcoin.Proto.SigningInput).
  /// \param coin The given coin type to sign the transaction for.
  /// \return The serialized data of a `SigningOutput` proto object. (e.g. TW.Bitcoin.Proto.SigningOutput).
  static Pointer<Void> TWAnySignerSign(
    Pointer<Void> input,
    int coin,
  ) {
    return _TWAnySignerSign(
      input,
      coin,
    );
  }

  static final _TWAnySignerSign_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>, Int32)>>(
    'TWAnySignerSign',
  );
  static final _dart_TWAnySignerSign _TWAnySignerSign =
      _TWAnySignerSign_ptr.asFunction<_dart_TWAnySignerSign>();

  /// Signs a transaction specified by the JSON representation of signing input, coin type and a private key, returning the JSON representation of the signing output.
  ///
  /// \param json JSON representation of a signing input
  /// \param key The private key to sign with.
  /// \param coin The given coin type to sign the transaction for.
  /// \return The JSON representation of a `SigningOutput` proto object.
  static Pointer<Utf8> TWAnySignerSignJSON(
    Pointer<Utf8> json,
    Pointer<Void> key,
    int coin,
  ) {
    return _TWAnySignerSignJSON(
      json,
      key,
      coin,
    );
  }

  static final _TWAnySignerSignJSON_ptr = lookup<
      NativeFunction<
          Pointer<Utf8> Function(
    Pointer<Utf8>,
    Pointer<Void>,
    Int32,
  )>>('TWAnySignerSignJSON');
  static final _dart_TWAnySignerSignJSON _TWAnySignerSignJSON =
      _TWAnySignerSignJSON_ptr.asFunction<_dart_TWAnySignerSignJSON>();

  /// Check if AnySigner supports signing JSON representation of signing input.
  ///
  /// \param coin The given coin type to sign the transaction for.
  /// \return true if AnySigner supports signing JSON representation of signing input for a given coin.
  static int TWAnySignerSupportsJSON(
    int coin,
  ) {
    return _TWAnySignerSupportsJSON(
      coin,
    );
  }

  static final _TWAnySignerSupportsJSON_ptr =
      lookup<NativeFunction<Int32 Function(Int32)>>(
    'TWAnySignerSupportsJSON',
  );
  static final _dart_TWAnySignerSupportsJSON _TWAnySignerSupportsJSON =
      _TWAnySignerSupportsJSON_ptr.asFunction<_dart_TWAnySignerSupportsJSON>();

  /// Plans a transaction (for UTXO chains only).
  ///
  /// \param input The serialized data of a signing input
  /// \param coin The given coin type to plan the transaction for.
  /// \return The serialized data of a `TransactionPlan` proto object.
  static Pointer<Void> TWAnySignerPlan(
    Pointer<Void> input,
    int coin,
  ) {
    return _TWAnySignerPlan(
      input,
      coin,
    );
  }

  static final _TWAnySignerPlan_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>, Int32)>>(
    'TWAnySignerPlan',
  );
  static final _dart_TWAnySignerPlan _TWAnySignerPlan =
      _TWAnySignerPlan_ptr.asFunction<_dart_TWAnySignerPlan>();
}

typedef _dart_TWAnySignerSign = Pointer<Void> Function(
  Pointer<Void> input,
  int coin,
);

typedef _dart_TWAnySignerSignJSON = Pointer<Utf8> Function(
  Pointer<Utf8> json,
  Pointer<Void> key,
  int coin,
);

typedef _dart_TWAnySignerSupportsJSON = int Function(
  int coin,
);

typedef _dart_TWAnySignerPlan = Pointer<Void> Function(
  Pointer<Void> input,
  int coin,
);
