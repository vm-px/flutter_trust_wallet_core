import './dart_impl_imports.dart';

class TWWalletConnectRequestImpl extends TWWalletConnectRequest {
  TWWalletConnectRequestImpl._();

  static Uint8List parseRequest(int coin, Uint8List input) {
    final inputData = TWData.TWDataCreateWithBytes(
      input.toPointerUint8(),
      input.length,
    );
    final request = TWWalletConnectRequest.TWWalletConnectRequestParse(
      coin,
      inputData,
    );
    TWData.TWDataDelete(inputData);

    return TWData.TWDataBytes(request).asTypedList(TWData.TWDataSize(request));
  }
}
