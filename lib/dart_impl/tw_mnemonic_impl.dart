import './dart_impl_imports.dart';

class TWMnemonicImpl extends TWMnemonic {
  TWMnemonicImpl._();

  static bool isValid(String mnemonic) {
    final value = TWStringImpl.toTWString(mnemonic);
    final bool result = TWMnemonic.TWMnemonicIsValid(value) >= 1;
    TWStringImpl.delete(value);

    return result;
  }

  static bool isValidWord(String word) {
    final value = TWStringImpl.toTWString(word);
    final bool result = TWMnemonic.TWMnemonicIsValidWord(value) >= 1;
    TWStringImpl.delete(value);

    return result;
  }

  static String suggest(String prefix) {
    final value = TWStringImpl.toTWString(prefix);
    final Pointer<Utf8> suggest = TWMnemonic.TWMnemonicSuggest(value);

    TWStringImpl.delete(value);

    return TWStringImpl.toDartString(suggest);
  }
}
