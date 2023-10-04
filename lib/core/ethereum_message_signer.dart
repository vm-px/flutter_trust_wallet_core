part of flutter_trust_wallet_core;

class EthereumMessageSigner {
  const EthereumMessageSigner._();
  
  static String signMessage(PrivateKey privateKey, String message) {
     final handle = privateKey._nativehandle;

    return TWEthereumMessageSignerImpl.signMessage(handle, message);
  }

  static String signTypedMessage(PrivateKey privateKey, String message) {
    final handle = privateKey._nativehandle;

    return TWEthereumMessageSignerImpl.signTypedMessage(handle, message);
  }
}
