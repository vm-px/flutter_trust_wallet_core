import './dart_impl_imports.dart';

class TWHDWalletImpl extends TWHDWallet {
  static Pointer<Void> create({int strength = 128, String passphrase = ''}) {
    assert(strength >= 128 && strength <= 256 && strength % 32 == 0);
    final passphraseTWString = TWStringImpl.toTWString(passphrase);
    final wallet = TWHDWallet.TWHDWalletCreate(strength, passphraseTWString);
    TWStringImpl.delete(passphraseTWString);
    return wallet;
  }

  static Pointer<Void> createWithMnemonic(
    String mnemonic, {
    String passphrase = '',
  }) {
    if (!TWMnemonicImpl.isValid(mnemonic)) {
      throw Exception(['mnemonic is invalid']);
    }
    final passphraseTWString = TWStringImpl.toTWString(passphrase);
    final mnemonicTWString = TWStringImpl.toTWString(mnemonic);
    final wallet = TWHDWallet.TWHDWalletCreateWithMnemonic(
      mnemonicTWString,
      passphraseTWString,
    );
    TWStringImpl.delete(passphraseTWString);
    TWStringImpl.delete(mnemonicTWString);
    return wallet;
  }

  static Pointer<Void> createWithEntropy(
    Uint8List bytes, {
    String passphrase = '',
  }) {
    final data =
        TWData.TWDataCreateWithBytes(bytes.toPointerUint8(), bytes.length);
    final passphraseTWString = TWStringImpl.toTWString(passphrase);
    final wallet =
        TWHDWallet.TWHDWalletCreateWithEntropy(data, passphraseTWString);
    TWStringImpl.delete(passphraseTWString);
    TWData.TWDataDelete(data);
    return wallet;
  }

  static String getAddressForCoin(Pointer<Void> wallet, int coinType) {
    final address = TWHDWallet.TWHDWalletGetAddressForCoin(wallet, coinType);

    return TWStringImpl.toDartString(address);
  }

  static Pointer<Void> getDerivedKey(
    Pointer<Void> wallet,
    int coin,
    int account,
    int change,
    int address,
  ) {
    final privateKey = TWHDWallet.TWHDWalletGetDerivedKey(
      wallet,
      coin,
      account,
      change,
      address,
    );

    return privateKey;
  }

  static Pointer<Void> getMasterKey(Pointer<Void> wallet, int curve) {
    final privateKey = TWHDWallet.TWHDWalletGetMasterKey(wallet, curve);

    return privateKey;
  }

  static void delete(Pointer<Void> wallet) {
    TWHDWallet.TWHDWalletDelete(wallet);
  }

  static Pointer<Void> getKeyForCoin(Pointer<Void> wallet, int coin) {
    final Pointer<Void> privateKey =
        TWHDWallet.TWHDWalletGetKeyForCoin(wallet, coin);
    return privateKey;
  }

  static Pointer<Void> getKey(
    Pointer<Void> wallet,
    int coin,
    String derivationPath,
  ) {
    final derivationPath0 = TWStringImpl.toTWString(derivationPath);

    final Pointer<Void> privateKey =
        TWHDWallet.TWHDWalletGetKey(wallet, coin, derivationPath0);
    TWStringImpl.delete(derivationPath0);
    return privateKey;
  }

  static Uint8List seed(Pointer<Void> wallet) {
    final data = TWHDWallet.TWHDWalletSeed(wallet);
    return TWData.TWDataBytes(data).asTypedList(TWData.TWDataSize(data));
  }

  static String mnemonic(Pointer<Void> wallet) {
    return TWStringImpl.toDartString(TWHDWallet.TWHDWalletMnemonic(wallet));
  }

  static String getExtendedPublicKey(
    Pointer<Void> wallet,
    int purpose,
    int coinType,
    int twHdVersion,
  ) {
    final publicKey = TWHDWallet.TWHDWalletGetExtendedPublicKey(
      wallet,
      purpose,
      coinType,
      twHdVersion,
    );

    return TWStringImpl.toDartString(publicKey);
  }
}
