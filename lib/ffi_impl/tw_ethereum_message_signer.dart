import './ffi_impl_imports.dart';

abstract class TWEthereumMessageSigner {
  TWEthereumMessageSigner._();

  /// Sign a typed message EIP-712 V4.
  ///
  /// \param privateKey: the private key used for signing
  /// \param messageJson: A custom typed data message in json
  /// \returns the signature, Hex-encoded. On invalid input empty string is returned. Returned object needs to be deleted after use.
  static Pointer<Utf8> TWEthereumMessageSignerSignTypedMessage(
    Pointer<Void> privateKey,
    Pointer<Utf8> messageJson,
  ) {
    return _TWEthereumMessageSignerSignTypedMessage(
      privateKey,
      messageJson,
    );
  }

  static final _TWEthereumMessageSignerSignTypedMessagePtr = lookup<
      NativeFunction<Pointer<Utf8> Function(Pointer<Void>, Pointer<Utf8>)>>(
    'TWEthereumMessageSignerSignTypedMessage',
  );
  static final _TWEthereumMessageSignerSignTypedMessage =
      _TWEthereumMessageSignerSignTypedMessagePtr.asFunction<
          Pointer<Utf8> Function(Pointer<Void>, Pointer<Utf8>)>();

  /// Sign a typed message EIP-712 V4 with EIP-155 replay attack protection.
  ///
  /// \param privateKey: the private key used for signing
  /// \param messageJson: A custom typed data message in json
  /// \param chainId: chainId for eip-155 protection
  /// \returns the signature, Hex-encoded. On invalid input empty string is returned or invalid chainId error message. Returned object needs to be deleted after use.
  static Pointer<Utf8> TWEthereumMessageSignerSignTypedMessageEip155(
    Pointer<Void> privateKey,
    Pointer<Utf8> messageJson,
    int chainId,
  ) {
    return _TWEthereumMessageSignerSignTypedMessageEip155(
      privateKey,
      messageJson,
      chainId,
    );
  }

  static final _TWEthereumMessageSignerSignTypedMessageEip155Ptr = lookup<
      NativeFunction<
          Pointer<Utf8> Function(
    Pointer<Void>,
    Pointer<Utf8>,
    Int,
  )>>('TWEthereumMessageSignerSignTypedMessageEip155');
  static final _TWEthereumMessageSignerSignTypedMessageEip155 =
      _TWEthereumMessageSignerSignTypedMessageEip155Ptr.asFunction<
          Pointer<Utf8> Function(Pointer<Void>, Pointer<Utf8>, int)>();

  /// Sign a message.
  ///
  /// \param privateKey: the private key used for signing
  /// \param message: A custom message which is input to the signing.
  /// \returns the signature, Hex-encoded. On invalid input empty string is returned. Returned object needs to be deleted after use.
  static Pointer<Utf8> TWEthereumMessageSignerSignMessage(
    Pointer<Void> privateKey,
    Pointer<Utf8> message,
  ) {
    return _TWEthereumMessageSignerSignMessage(
      privateKey,
      message,
    );
  }

  static final _TWEthereumMessageSignerSignMessagePtr = lookup<
      NativeFunction<Pointer<Utf8> Function(Pointer<Void>, Pointer<Utf8>)>>(
    'TWEthereumMessageSignerSignMessage',
  );
  static final _TWEthereumMessageSignerSignMessage =
      _TWEthereumMessageSignerSignMessagePtr.asFunction<
          Pointer<Utf8> Function(Pointer<Void>, Pointer<Utf8>)>();

  /// Sign a message with Immutable X msg type.
  ///
  /// \param privateKey: the private key used for signing
  /// \param message: A custom message which is input to the signing.
  /// \returns the signature, Hex-encoded. On invalid input empty string is returned. Returned object needs to be deleted after use.
  static Pointer<Utf8> TWEthereumMessageSignerSignMessageImmutableX(
    Pointer<Void> privateKey,
    Pointer<Utf8> message,
  ) {
    return _TWEthereumMessageSignerSignMessageImmutableX(
      privateKey,
      message,
    );
  }

  static final _TWEthereumMessageSignerSignMessageImmutableXPtr = lookup<
      NativeFunction<Pointer<Utf8> Function(Pointer<Void>, Pointer<Utf8>)>>(
    'TWEthereumMessageSignerSignMessageImmutableX',
  );
  static final _TWEthereumMessageSignerSignMessageImmutableX =
      _TWEthereumMessageSignerSignMessageImmutableXPtr.asFunction<
          Pointer<Utf8> Function(Pointer<Void>, Pointer<Utf8>)>();

  /// Sign a message with Eip-155 msg type.
  ///
  /// \param privateKey: the private key used for signing
  /// \param message: A custom message which is input to the signing.
  /// \param chainId: chainId for eip-155 protection
  /// \returns the signature, Hex-encoded. On invalid input empty string is returned. Returned object needs to be deleted after use.
  static Pointer<Utf8> TWEthereumMessageSignerSignMessageEip155(
    Pointer<Void> privateKey,
    Pointer<Utf8> message,
    int chainId,
  ) {
    return _TWEthereumMessageSignerSignMessageEip155(
      privateKey,
      message,
      chainId,
    );
  }

  static final _TWEthereumMessageSignerSignMessageEip155Ptr = lookup<
      NativeFunction<
          Pointer<Utf8> Function(
    Pointer<Void>,
    Pointer<Utf8>,
    Int,
  )>>('TWEthereumMessageSignerSignMessageEip155');
  static final _TWEthereumMessageSignerSignMessageEip155 =
      _TWEthereumMessageSignerSignMessageEip155Ptr.asFunction<
          Pointer<Utf8> Function(Pointer<Void>, Pointer<Utf8>, int)>();

  /// Verify signature for a message.
  ///
  /// \param pubKey: pubKey that will verify and recover the message from the signature
  /// \param message: the message signed (without prefix)
  /// \param signature: in Hex-encoded form.
  /// \returns false on any invalid input (does not throw), true if the message can be recovered from the signature
  static bool TWEthereumMessageSignerVerifyMessage(
    Pointer<Void> pubKey,
    Pointer<Utf8> message,
    Pointer<Utf8> signature,
  ) {
    return _TWEthereumMessageSignerVerifyMessage(
      pubKey,
      message,
      signature,
    );
  }

  static final _TWEthereumMessageSignerVerifyMessagePtr = lookup<
      NativeFunction<
          Bool Function(
    Pointer<Void>,
    Pointer<Utf8>,
    Pointer<Utf8>,
  )>>('TWEthereumMessageSignerVerifyMessage');
  static final _TWEthereumMessageSignerVerifyMessage =
      _TWEthereumMessageSignerVerifyMessagePtr.asFunction<
          bool Function(Pointer<Void>, Pointer<Utf8>, Pointer<Utf8>)>();
}
