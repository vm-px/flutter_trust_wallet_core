import './dart_impl_imports.dart';

class TWAnySignerImpl implements TWAnySigner {
  const TWAnySignerImpl._();

  static Uint8List sign(Uint8List bytes, int coin) {
    final data = TWData.TWDataCreateWithBytes(
      bytes.toPointerUint8(),
      bytes.length,
    );
    final signer = TWAnySigner.TWAnySignerSign(data, coin);
    TWData.TWDataDelete(data);
    return TWData.TWDataBytes(signer).asTypedList(TWData.TWDataSize(signer));
  }

  static String signJSON(String string, Uint8List bytes, int coin) {
    final string0 = TWStringImpl.toTWString(string);
    final data = TWData.TWDataCreateWithBytes(
      bytes.toPointerUint8(),
      bytes.length,
    );
    final signer = TWAnySigner.TWAnySignerSignJSON(string0, data, coin);
    TWData.TWDataDelete(data);
    TWStringImpl.delete(string0);

    return TWStringImpl.toDartString(signer);
  }

  static bool supportsJSON(int coin) {
    return TWAnySigner.TWAnySignerSupportsJSON(coin) >= 1;
  }

  static Uint8List signerPlan(Uint8List bytes, int coin) {
    final data = TWData.TWDataCreateWithBytes(
      bytes.toPointerUint8(),
      bytes.length,
    );
    final signer = TWAnySigner.TWAnySignerPlan(data, coin);
    TWData.TWDataDelete(data);
    return TWData.TWDataBytes(signer).asTypedList(TWData.TWDataSize(signer));
  }
}
