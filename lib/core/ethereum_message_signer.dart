import './core_imports.dart';

class EthereumMessageSigner {
  const EthereumMessageSigner._();

  static String signMessage(PrivateKey privateKey, String message) {
    final handle = privateKey.pointer;

    return TWEthereumMessageSignerImpl.signMessage(handle, message);
  }

  static String signTypedMessage(PrivateKey privateKey, String message) {
    final handle = privateKey.pointer;

    return TWEthereumMessageSignerImpl.signTypedMessage(handle, message);
  }
}
