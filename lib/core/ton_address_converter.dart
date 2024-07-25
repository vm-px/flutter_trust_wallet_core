import './core_imports.dart';

class TonAddressConverter {
  const TonAddressConverter._();

  static String? convertAddressToUserFriendly(
    String address, {
    bool bounceable = false,
    bool testnet = false,
  }) {
    return TWTONAddressConverterImpl.convertAddressToUserFriendly(
      address,
      bounceable,
      testnet,
    );
  }
}
