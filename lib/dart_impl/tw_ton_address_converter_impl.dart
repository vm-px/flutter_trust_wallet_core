import './dart_impl_imports.dart';

class TWTONAddressConverterImpl extends TWTONAddressConverter {
  TWTONAddressConverterImpl._();

  static String? convertAddressToUserFriendly(
    String address,
    bool bounceable,
    bool testnet,
  ) {
    final addressUtf8 = TWStringImpl.toTWString(address);
    final convertedAddress =
        TWTONAddressConverter.TWTONAddressConverterToUserFriendly(
      addressUtf8,
      bounceable ? 1 : 0,
      testnet ? 1 : 0,
    );
    TWStringImpl.delete(addressUtf8);

    if (convertedAddress.address == 0) return null;

    return TWStringImpl.toDartString(convertedAddress.cast<Utf8>());
  }
}
