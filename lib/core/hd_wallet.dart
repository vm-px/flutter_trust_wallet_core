import './core_imports.dart';

class HDWallet {
  late Pointer<Void> _pointer;

  Pointer<Void> get pointer => _pointer;

  HDWallet({
    int strength = 128,
    String passphrase = '',
    Pointer<Void>? pointer,
  }) {
    if (pointer != null) {
      _pointer = pointer;
    } else {
      _pointer = TWHDWalletImpl.create(
        strength: strength,
        passphrase: passphrase,
      );
    }

    if (_pointer.hashCode == 0) {
      throw Exception(['HDWallet nativehandle is null']);
    }
  }

  HDWallet.createWithMnemonic(String mnemonic, {String passphrase = ''}) {
    _pointer = TWHDWalletImpl.createWithMnemonic(
      mnemonic,
      passphrase: passphrase,
    );

    if (_pointer.hashCode == 0) {
      throw Exception(['HDWallet nativehandle is null']);
    }
  }

  HDWallet.createWithData(Uint8List bytes, {String passphrase = ''}) {
    _pointer = TWHDWalletImpl.createWithEntropy(
      bytes,
      passphrase: passphrase,
    );

    if (_pointer.hashCode == 0) {
      throw Exception(['HDWallet nativehandle is null']);
    }
  }

  String getAddressForCoin(int coinType) {
    return TWHDWalletImpl.getAddressForCoin(_pointer, coinType);
  }

  PrivateKey getDerivedKey(int coinType, int account, int change, int address) {
    final pointer = TWHDWalletImpl.getDerivedKey(
      _pointer,
      coinType,
      account,
      change,
      address,
    );

    return PrivateKey(pointer);
  }

  PrivateKey getKeyForCoin(int coinType) {
    final pointer = TWHDWalletImpl.getKeyForCoin(_pointer, coinType);

    return PrivateKey(pointer);
  }

  PrivateKey getKey(int coinType, String derivationPath) {
    final pointer = TWHDWalletImpl.getKey(_pointer, coinType, derivationPath);

    return PrivateKey(pointer);
  }

  PrivateKey getMasterKey(int curve) {
    final pointer = TWHDWalletImpl.getMasterKey(_pointer, curve);

    return PrivateKey(pointer);
  }

  void delete() {
    TWHDWalletImpl.delete(_pointer);
  }

  Uint8List seed() {
    return TWHDWalletImpl.seed(_pointer);
  }

  String mnemonic() {
    return TWHDWalletImpl.mnemonic(_pointer);
  }

  String getExtendedPublicKey(int purpose, int coinType, int twHdVersion) {
    return TWHDWalletImpl.getExtendedPublicKey(
      _pointer,
      purpose,
      coinType,
      twHdVersion,
    );
  }
}
