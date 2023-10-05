/// Flutter Trust wallet_core library
library flutter_trust_wallet_core;

import 'dart:ffi';
import 'dart:io';

import 'lookup.dart';

export './core/core.dart';
export './dart_impl/dart_impl.dart';
export './ffi_impl/ffi_impl.dart';

class FlutterTrustWalletCore {
  const FlutterTrustWalletCore._();

  static void init() {
    if (Platform.isAndroid) {
      wcLib = DynamicLibrary.open('libTrustWalletCore.so');
    } else {
      wcLib = DynamicLibrary.process();
    }
  }
}
