import './dart_impl_imports.dart';

class TWStoredKeyImpl implements TWStoredKey {
  const TWStoredKeyImpl._();

  static Pointer<Void>? importPrivateKey(
    Uint8List pk,
    String name,
    Uint8List password,
    int coin,
  ) {
    final name0 = TWStringImpl.toTWString(name);
    final password0 = TWData.TWDataCreateWithBytes(
      password.toPointerUint8(),
      password.length,
    );
    final pk0 = TWData.TWDataCreateWithBytes(pk.toPointerUint8(), pk.length);
    final storedKey =
        TWStoredKey.TWStoredKeyImportPrivateKey(pk0, name0, password0, coin);
    TWStringImpl.delete(name0);
    TWData.TWDataDelete(password0);
    TWData.TWDataDelete(pk0);
    if (storedKey.address == 0) {
      return null;
    }
    return storedKey;
  }

  static Pointer<Void>? importHDWallet(
    String mnemonic,
    String name,
    Uint8List password,
    int coin,
  ) {
    final mnemonic0 = TWStringImpl.toTWString(mnemonic);
    final name0 = TWStringImpl.toTWString(name);
    final password0 = TWData.TWDataCreateWithBytes(
      password.toPointerUint8(),
      password.length,
    );

    final storedKey = TWStoredKey.TWStoredKeyImportHDWallet(
      mnemonic0,
      name0,
      password0,
      coin,
    );
    TWStringImpl.delete(mnemonic0);
    TWStringImpl.delete(name0);
    TWData.TWDataDelete(password0);
    if (storedKey.address == 0) {
      return null;
    }
    return storedKey;
  }

  static Pointer<Void>? importJson(Uint8List json) {
    final json0 =
        TWData.TWDataCreateWithBytes(json.toPointerUint8(), json.length);
    final storedKey = TWStoredKey.TWStoredKeyImportJSON(json0);
    TWData.TWDataDelete(json0);
    if (storedKey.address == 0) {
      return null;
    }
    return storedKey;
  }

  static Uint8List? decryptPrivateKey(
    Pointer<Void> storedKey,
    Uint8List password,
  ) {
    final password0 = TWData.TWDataCreateWithBytes(
      password.toPointerUint8(),
      password.length,
    );
    final pivateKey =
        TWStoredKey.TWStoredKeyDecryptPrivateKey(storedKey, password0);
    TWData.TWDataDelete(password0);
    if (pivateKey.address == 0) {
      return null;
    }
    return TWData.TWDataBytes(pivateKey)
        .asTypedList(TWData.TWDataSize(pivateKey));
  }

  static String? decryptMnemonic(Pointer<Void> storedKey, Uint8List password) {
    final password0 = TWData.TWDataCreateWithBytes(
      password.toPointerUint8(),
      password.length,
    );

    final mnemonic =
        TWStoredKey.TWStoredKeyDecryptMnemonic(storedKey, password0);
    TWData.TWDataDelete(password0);
    if (mnemonic.address == 0) {
      return null;
    }
    return TWStringImpl.toDartString(mnemonic);
  }

  static Pointer<Void> privateKey(
    Pointer<Void> storedKey,
    int coinType,
    Uint8List password,
  ) {
    final password0 = TWData.TWDataCreateWithBytes(
      password.toPointerUint8(),
      password.length,
    );
    final privateKey =
        TWStoredKey.TWStoredKeyPrivateKey(storedKey, coinType, password0);

    TWData.TWDataDelete(password0);
    return privateKey;
  }

  static Pointer<Void> wallet(Pointer<Void> storedKey, Uint8List password) {
    final password0 = TWData.TWDataCreateWithBytes(
      password.toPointerUint8(),
      password.length,
    );
    final wallet = TWStoredKey.TWStoredKeyWallet(storedKey, password0);
    TWData.TWDataDelete(password0);
    return wallet;
  }

  static Pointer<Void>? exportJSON(Pointer<Void> storedKey) {
    return TWStoredKey.TWStoredKeyExportJSON(storedKey);
  }

  static Pointer<Void>? load(String path) {
    final path0 = TWStringImpl.toTWString(path);
    final load = TWStoredKey.TWStoredKeyLoad(path0);
    TWStringImpl.delete(path0);
    if (load.address == 0) {
      return null;
    }
    return load;
  }

  static String identifier(Pointer<Void> storedKey) {
    final identifier = TWStoredKey.TWStoredKeyIdentifier(storedKey);
    return TWStringImpl.toDartString(identifier);
  }

  static String name(Pointer<Void> storedKey) {
    final name = TWStoredKey.TWStoredKeyName(storedKey);
    return TWStringImpl.toDartString(name);
  }

  static bool isMnemonic(Pointer<Void> storedKey) {
    return TWStoredKey.TWStoredKeyIsMnemonic(storedKey) > 0;
  }

  static void delete(Pointer<Void> storedKey) {
    TWStoredKey.TWStoredKeyDelete(storedKey);
  }

  // Account
  static Pointer<Void> account(Pointer<Void> storedKey, int index) {
    return TWStoredKey.TWStoredKeyAccount(storedKey, index);
  }

  // Account
  static Pointer<Void> accountForCoin(
    Pointer<Void> storedKey,
    int coin,
    Pointer<Void> wallet,
  ) {
    return TWStoredKey.TWStoredKeyAccountForCoin(storedKey, coin, wallet);
  }

  static int accountCount(Pointer<Void> storedKey) {
    return TWStoredKey.TWStoredKeyAccountCount(storedKey);
  }

  static void removeAccountForCoin(Pointer<Void> storedKey, int coin) {
    TWStoredKey.TWStoredKeyRemoveAccountForCoin(storedKey, coin);
  }

  static void addAccount(
    Pointer<Void> storedKey,
    String address,
    int coin,
    String derivationPath,
    String extetndedPublicKey,
  ) {
    final address0 = TWStringImpl.toTWString(address);
    final derivationPath0 = TWStringImpl.toTWString(derivationPath);
    final extetndedPublicKey0 = TWStringImpl.toTWString(extetndedPublicKey);
    TWStoredKey.TWStoredKeyAddAccount(
      storedKey,
      address0,
      coin,
      derivationPath0,
      extetndedPublicKey0,
    );

    TWStringImpl.delete(address0);
    TWStringImpl.delete(derivationPath0);
    TWStringImpl.delete(extetndedPublicKey0);
  }

  static bool store(Pointer<Void> storedKey, String path) {
    final path0 = TWStringImpl.toTWString(path);
    final isStore = TWStoredKey.TWStoredKeyStore(storedKey, path0) > 0;
    TWStringImpl.delete(path0);
    return isStore;
  }

  static bool fixAddresses(Pointer<Void> storedKey, Uint8List password) {
    final password0 = TWData.TWDataCreateWithBytes(
      password.toPointerUint8(),
      password.length,
    );
    final isOk = TWStoredKey.TWStoredKeyFixAddresses(storedKey, password0);
    TWData.TWDataDelete(password0);
    return isOk > 0;
  }
}
