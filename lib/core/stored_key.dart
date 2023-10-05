import './core_imports.dart';

class StoredKey {
  static late Pointer<Void> _nativehandle;

  static StoredKey? importHDWallet(
    String mnemonic,
    String name,
    String password,
    int coin,
  ) {
    final p = Uint8List.fromList(password.codeUnits);
    final pointer = TWStoredKeyImpl.importHDWallet(mnemonic, name, p, coin);
    if (pointer == null) {
      return null;
    }
    _nativehandle = pointer;
    return StoredKey();
  }

  static StoredKey? importPrivateKey(
    Uint8List privateKeyData,
    String name,
    String password,
    int coin,
  ) {
    final p = Uint8List.fromList(password.codeUnits);
    final pointer =
        TWStoredKeyImpl.importPrivateKey(privateKeyData, name, p, coin);
    if (pointer == null) {
      return null;
    }
    _nativehandle = pointer;
    return StoredKey();
  }

  String? exportJson() {
    final data = TWStoredKeyImpl.exportJSON(_nativehandle);
    if (data == null) {
      return null;
    }
    final bytes = TWData.TWDataBytes(data).asTypedList(TWData.TWDataSize(data));
    return String.fromCharCodes(bytes);
  }

  static StoredKey? load(String path) {
    final pointer = TWStoredKeyImpl.load(path);
    if (pointer == null) {
      return null;
    }
    _nativehandle = pointer;

    return StoredKey();
  }

  static StoredKey? importJson(String json) {
    final j = Uint8List.fromList(json.codeUnits);
    final pointer = TWStoredKeyImpl.importJson(j);
    if (pointer == null) {
      return null;
    }
    _nativehandle = pointer;

    return StoredKey();
  }

  String identifier() {
    return TWStoredKeyImpl.identifier(_nativehandle);
  }

  String name() {
    return TWStoredKeyImpl.name(_nativehandle);
  }

  bool isMnemonic() {
    return TWStoredKeyImpl.isMnemonic(_nativehandle);
  }

  int accountCount() {
    return TWStoredKeyImpl.accountCount(_nativehandle);
  }

  void delete() {
    TWStoredKeyImpl.delete(_nativehandle);
  }

  //Account ?
  Pointer<Void> account(int index) {
    return TWStoredKeyImpl.account(_nativehandle, index);
  }

  //Account ?
  Pointer<Void> accountForCoin(int coin, HDWallet hdWallet) {
    return TWStoredKeyImpl.accountForCoin(
      _nativehandle,
      coin,
      hdWallet.pointer,
    );
  }

  void removeAccountForCoin(int coin) {
    TWStoredKeyImpl.removeAccountForCoin(_nativehandle, coin);
  }

  void addAccount(
    String address,
    int coin,
    String derivationPath,
    String extetndedPublicKey,
  ) {
    TWStoredKeyImpl.addAccount(
      _nativehandle,
      address,
      coin,
      derivationPath,
      extetndedPublicKey,
    );
  }

  bool store(String path) {
    return TWStoredKeyImpl.store(_nativehandle, path);
  }

  Uint8List? decryptPrivateKey(Uint8List password) {
    return TWStoredKeyImpl.decryptPrivateKey(_nativehandle, password);
  }

  String? decryptMnemonic(Uint8List password) {
    return TWStoredKeyImpl.decryptMnemonic(_nativehandle, password);
  }

  PrivateKey? privateKey(int coin, Uint8List password) {
    final pointer = TWStoredKeyImpl.privateKey(_nativehandle, coin, password);

    if (pointer.address == 0) {
      return null;
    }

    return PrivateKey(pointer);
  }

  HDWallet? wallet(String password) {
    final p = Uint8List.fromList(password.codeUnits);
    final pointer = TWStoredKeyImpl.wallet(_nativehandle, p);

    if (pointer.address == 0) {
      return null;
    }

    return HDWallet(pointer: pointer);
  }

  bool fixAddresses(String password) {
    final p = Uint8List.fromList(password.codeUnits);
    return TWStoredKeyImpl.fixAddresses(_nativehandle, p);
  }
}
