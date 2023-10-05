import './core_imports.dart';

class GroestlcoinAddress {
  static late Pointer<Void> _pointer;

  GroestlcoinAddress.createWithString(String address) {
    _pointer = TWGroestlcoinAddressImpl.createWithString(address);

    if (_pointer.hashCode == 0) {
      throw Exception(['GroestlcoinAddress nativehandle is null']);
    }
  }

  GroestlcoinAddress.createWithPublicKey(PublicKey publicKey, int prefix) {
    _pointer = TWGroestlcoinAddressImpl.createWithPublicKey(
      publicKey.pointer,
      prefix,
    );

    if (_pointer.hashCode == 0) {
      throw Exception(['GroestlcoinAddress nativehandle is null']);
    }
  }

  static bool equal() {
    return TWGroestlcoinAddressImpl.equal(_pointer, _pointer);
  }

  static bool isValidString(String string) {
    return TWGroestlcoinAddressImpl.isValidString(string);
  }

  String description(Pointer<Void> address) {
    return TWGroestlcoinAddressImpl.description(address);
  }

  void delete() {
    return TWGroestlcoinAddressImpl.delete(_pointer);
  }
}
