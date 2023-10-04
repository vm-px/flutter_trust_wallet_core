part of trust_wallet_core_ffi;

class TWEthereumMessageSignerImpl extends TWEthereumMessageSigner {
  TWEthereumMessageSignerImpl._();

  static String signMessage(Pointer<Void> privateKey, String message) {
    final twMessage = TWStringImpl.toTWString(message);
    final twSignedMessage =
        TWEthereumMessageSigner.TWEthereumMessageSignerSignMessage(
      privateKey,
      twMessage,
    );

    final signedData = TWStringImpl.toDartString(twSignedMessage);

    TWStringImpl.delete(twMessage);
    TWStringImpl.delete(twSignedMessage);

    return signedData;
  }

  static String signTypedMessage(Pointer<Void> privateKey, String message) {
    final twMessage = TWStringImpl.toTWString(message);
    final twSignedMessage =
        TWEthereumMessageSigner.TWEthereumMessageSignerSignTypedMessage(
      privateKey,
      twMessage,
    );

    final signedMessage = TWStringImpl.toDartString(twSignedMessage);

    TWStringImpl.delete(twMessage);
    TWStringImpl.delete(twSignedMessage);

    return signedMessage;
  }
}
