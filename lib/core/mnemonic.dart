import './core_imports.dart';

class Mnemonic {
  const Mnemonic._();

  static bool isValid(String mnemonic) {
    return TWMnemonicImpl.isValid(mnemonic);
  }

  static bool isValidWord(String word) {
    return TWMnemonicImpl.isValidWord(word);
  }

  static String suggest(String prefix) {
    return TWMnemonicImpl.suggest(prefix);
  }
}
