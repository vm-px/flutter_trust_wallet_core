import './core_imports.dart';

class Coin {
  const Coin();

  String deriveAddress(int coin, PrivateKey privateKey) {
    final pkPtr = privateKey.pointer;
    final addressPtr = TWCoinType().TWCoinTypeDeriveAddress(coin, pkPtr);
    final address = TWStringImpl.toDartString(addressPtr);

    TWStringImpl.delete(addressPtr);

    return address;
  }

  int ss58Prefix(int coin) => TWCoinType().TWCoinTypeSS58Prefix(coin);
}
