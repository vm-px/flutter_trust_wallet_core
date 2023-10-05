import './core_imports.dart';

class EthereumAbi {
  late Pointer<Void> _pointer;

  EthereumAbi._(Pointer<Void> pointer) {
    _pointer = pointer;
  }

  static Uint8List encode(EthereumAbiFunction fn) {
    return TWEthereumAbiImpl.encode(fn.pointer);
  }

  static bool decodeOutput(EthereumAbiFunction fn, Uint8List encoded) {
    return TWEthereumAbiImpl.decodeOutput(fn.pointer, encoded);
  }

  static String? decodeCall(Uint8List encoded, String string) {
    return TWEthereumAbiImpl.decodeCall(encoded, string);
  }

  static Uint8List encodeTyped(String messageJson) {
    return TWEthereumAbiImpl.encodeTyped(messageJson);
  }
}
