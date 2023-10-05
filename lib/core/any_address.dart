import './core_imports.dart';

class AnyAddress {
  late Pointer<Void> _pointer;

  AnyAddress.createWithString(String address, int coinType) {
    _pointer = TWAnyAddressImpl.createWithString(address, coinType);
  }

  AnyAddress.createWithPublicKey(PublicKey publicKey, int coinType) {
    _pointer = TWAnyAddressImpl.createWithPublicKey(
      publicKey.pointer,
      coinType,
    );
  }

  static bool isValid(String address, int coinType) {
    return TWAnyAddressImpl.isValid(address, coinType);
  }

  Uint8List data() {
    return TWAnyAddressImpl.data(_pointer);
  }

  String description() {
    return TWAnyAddressImpl.description(_pointer);
  }

  void delete() {
    TWAnyAddressImpl.delete(_pointer);
    _pointer = nullptr;
  }
}
