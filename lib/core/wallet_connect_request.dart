import './core_imports.dart';

class WalletConnectRequest {
  const WalletConnectRequest._();

  static Uint8List parseRequest(int coin, Uint8List input) {
    return TWWalletConnectRequestImpl.parseRequest(coin, input);
  }
}
