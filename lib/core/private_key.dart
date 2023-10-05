import './core_imports.dart';

class PrivateKey {
  static const int PrivateKeySize = 32;

  late Pointer<Void> _pointer;

  Pointer<Void> get pointer => _pointer;

  static bool isValid(Uint8List data, int curve) {
    return TWPrivateKeyImpl.isValid(
      TWData.TWDataCreateWithBytes(data.toPointerUint8(), data.length),
      curve,
    );
  }

  PrivateKey(Pointer<Void> pointer) {
    _pointer = pointer;
  }

  PrivateKey.createWithData(Uint8List bytes) {
    _pointer = TWPrivateKeyImpl.createWithData(bytes);

    if (_pointer.hashCode == 0) {
      throw Exception(['PrivateKey nativehandle is null']);
    }
  }

  PrivateKey.createCopy(Pointer<Void> key) {
    _pointer = TWPrivateKeyImpl.createCopy(key);

    if (_pointer.hashCode == 0) {
      throw Exception(['PrivateKey nativehandle is null']);
    }
  }

  Uint8List data() {
    final data = TWPrivateKeyImpl.data(_pointer);
    return TWData.TWDataBytes(data).asTypedList(TWData.TWDataSize(data));
  }

  PublicKey getPublicKey(int curve, [bool compressed = false]) {
    switch (curve) {
      case TWCurve.TWCurveSECP256k1:
        return getPublicKeySecp256k1(compressed);
      case TWCurve.TWCurveED25519:
        return getPublicKeyNistEd25519();
      case TWCurve.TWCurveED25519Blake2bNano:
        return getPublicKeyNistEd25519Blake2b();
      case TWCurve.TWCurveCurve25519:
        return getPublicKeyCurve25519();
      case TWCurve.TWCurveNIST256p1:
        return getPublicKeyNist256p1();
      case TWCurve.TWCurveED25519Extended:
        return getPublicKeyNistEd25519Extended();
      default:
        return getPublicKeySecp256k1(compressed);
    }
  }

  PublicKey getPublicKeySecp256k1(bool compressed) {
    final data = TWPrivateKeyImpl.getPublicKeySecp256k1(_pointer, compressed);
    return PublicKey(data);
  }

  PublicKey getPublicKeyNist256p1() {
    final data = TWPrivateKeyImpl.getPublicKeyNist256p1(_pointer);

    return PublicKey(data);
  }

  PublicKey getPublicKeyNistEd25519() {
    final data = TWPrivateKeyImpl.getPublicKeyNistEd25519(_pointer);

    return PublicKey(data);
  }

  PublicKey getPublicKeyNistEd25519Blake2b() {
    final data = TWPrivateKeyImpl.getPublicKeyNistEd25519Blake2b(_pointer);

    return PublicKey(data);
  }

  PublicKey getPublicKeyNistEd25519Extended() {
    final data = TWPrivateKeyImpl.TWPrivateKeyGetPublicKeyEd25519Cardano(
      _pointer,
    );

    return PublicKey(data);
  }

  PublicKey getPublicKeyCurve25519() {
    final data = TWPrivateKeyImpl.getPublicKeyCurve25519(_pointer);

    return PublicKey(data);
  }

  PublicKey getShareKey(PublicKey publicKey, int curve) {
    final data = TWPrivateKeyImpl.getShareKey(
      _pointer,
      publicKey.pointer,
      curve,
    );

    return PublicKey(data);
  }

  Uint8List sign(Uint8List digest, int curve) {
    final digestPoint = TWData.TWDataCreateWithBytes(
      digest.toPointerUint8(),
      digest.length,
    );
    final data = TWPrivateKeyImpl.sign(_pointer, digestPoint, curve);
    final res = TWData.TWDataBytes(data).asTypedList(TWData.TWDataSize(data));
    TWData.TWDataDelete(digestPoint);

    return res;
  }

  Uint8List signAsDER(Uint8List digest, int curve) {
    final digestPoint = TWData.TWDataCreateWithBytes(
      digest.toPointerUint8(),
      digest.length,
    );
    final data = TWPrivateKeyImpl.signAsDER(_pointer, digestPoint, curve);
    final res = TWData.TWDataBytes(data).asTypedList(TWData.TWDataSize(data));
    TWData.TWDataDelete(digestPoint);
    return res;
  }

  Uint8List signSchnorr(Uint8List digest, int curve) {
    final digestPoint =
        TWData.TWDataCreateWithBytes(digest.toPointerUint8(), digest.length);
    final data = TWPrivateKeyImpl.signSchnorr(_pointer, digestPoint, curve);
    final res = TWData.TWDataBytes(data).asTypedList(TWData.TWDataSize(data));
    TWData.TWDataDelete(digestPoint);
    return res;
  }

  void delete() {
    TWPrivateKeyImpl.delete(_pointer);
    _pointer = nullptr;
  }
}
