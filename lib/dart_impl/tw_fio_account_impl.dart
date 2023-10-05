import './dart_impl_imports.dart';

class TWFIOAccountImpl extends TWFIOAccount {
  static Pointer<Void> createWithString(String string) {
    final _string = TWStringImpl.toTWString(string);
    final result = TWFIOAccount.TWFIOAccountCreateWithString(_string);
    TWStringImpl.delete(_string);
    return result;
  }

  static String description(Pointer<Void> address) {
    return TWStringImpl.toDartString(
        TWFIOAccount.TWFIOAccountDescription(address));
  }

  static void delete(Pointer<Void> address) {
    return TWFIOAccount.TWFIOAccountDelete(address);
  }
}
