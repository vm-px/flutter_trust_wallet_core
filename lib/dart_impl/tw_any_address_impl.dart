import './dart_impl_imports.dart';

class TWAnyAddressImpl extends TWAnyAddress {
  TWAnyAddressImpl._();

  static bool isValid(String address, int coinType) {
    final address0 = TWStringImpl.toTWString(address);
    final result = TWAnyAddress.TWAnyAddressIsValid(address0, coinType) >= 1;
    TWStringImpl.delete(address0);
    return result;
  }

  static Pointer<Void> createWithString(String address, int coinType) {
    final address0 = TWStringImpl.toTWString(address);
    final result = TWAnyAddress.TWAnyAddressCreateWithString(
      address0,
      coinType,
    );

    TWStringImpl.delete(address0);
    return result;
  }

  static Pointer<Void> createWithPublicKey(
    Pointer<Void> publicKey,
    int coinType,
  ) {
    final result = TWAnyAddress.TWAnyAddressCreateWithPublicKey(
      publicKey,
      coinType,
    );
    return result;
  }

  static Uint8List data(Pointer<Void> anyAddress) {
    final addressData = TWAnyAddress.TWAnyAddressData(anyAddress);

    final result = TWData.TWDataBytes(addressData)
        .asTypedList(TWData.TWDataSize(addressData));
    return result;
  }

  static String description(Pointer<Void> anyAddress) {
    final twString = TWAnyAddress.TWAnyAddressDescription(anyAddress);
    return TWStringImpl.toDartString(twString);
  }

  static void delete(Pointer<Void> address) {
    TWAnyAddress.TWAnyAddressDelete(address);
  }
}
