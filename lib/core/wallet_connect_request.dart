import '../dart_impl/tw_wallet_connect_request_impl.dart';
import './core_imports.dart';

class WalletConnectRequest {
  const WalletConnectRequest._();

  static Uint8List parseRequest(int coin, Uint8List input) {
    return TWWalletConnectRequestImpl.parseRequest(coin, input);
  }
}
