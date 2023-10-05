import './ffi_impl_imports.dart';

/// AES encryption/decryption methods.
abstract class TWAES {
  /// Encrypts a block of Data using AES in Cipher Block Chaining (CBC) mode.
  ///
  /// \param key encryption key Data, must be 16, 24, or 32 bytes long.
  /// \param data Data to encrypt.
  /// \param iv initialization vector.
  /// \param mode padding mode.
  /// \return encrypted Data.
  static Pointer<Void> TWAESEncryptCBC(
    Pointer<Void> key,
    Pointer<Void> data,
    Pointer<Void> iv,
    int mode,
  ) {
    return _TWAESEncryptCBC(
      key,
      data,
      iv,
      mode,
    );
  }

  static final _TWAESEncryptCBC_ptr = lookup<
      NativeFunction<
          Pointer<Void> Function(Pointer<Void>, Pointer<Void>, Pointer<Void>,
              Int32)>>('TWAESEncryptCBC');
  static final _dart_TWAESEncryptCBC _TWAESEncryptCBC =
      _TWAESEncryptCBC_ptr.asFunction<_dart_TWAESEncryptCBC>();

  /// Decrypts a block of data using AES in Cipher Block Chaining (CBC) mode.
  ///
  /// \param key decryption key Data, must be 16, 24, or 32 bytes long.
  /// \param data Data to decrypt.
  /// \param iv initialization vector Data.
  /// \param mode padding mode.
  /// \return decrypted Data.
  static Pointer<Void> TWAESDecryptCBC(
    Pointer<Void> key,
    Pointer<Void> data,
    Pointer<Void> iv,
    int mode,
  ) {
    return _TWAESDecryptCBC(
      key,
      data,
      iv,
      mode,
    );
  }

  static final _TWAESDecryptCBC_ptr = lookup<
      NativeFunction<
          Pointer<Void> Function(Pointer<Void>, Pointer<Void>, Pointer<Void>,
              Int32)>>('TWAESDecryptCBC');
  static final _dart_TWAESDecryptCBC _TWAESDecryptCBC =
      _TWAESDecryptCBC_ptr.asFunction<_dart_TWAESDecryptCBC>();

  /// Encrypts a block of data using AES in Counter (CTR) mode.
  ///
  /// \param key encryption key Data, must be 16, 24, or 32 bytes long.
  /// \param data Data to encrypt.
  /// \param iv initialization vector Data.
  /// \return encrypted Data.
  static Pointer<Void> TWAESEncryptCTR(
    Pointer<Void> key,
    Pointer<Void> data,
    Pointer<Void> iv,
  ) {
    return _TWAESEncryptCTR(
      key,
      data,
      iv,
    );
  }

  static final _TWAESEncryptCTR_ptr = lookup<
      NativeFunction<
          Pointer<Void> Function(
              Pointer<Void>, Pointer<Void>, Pointer<Void>)>>('TWAESEncryptCTR');
  static final _dart_TWAESEncryptCTR _TWAESEncryptCTR =
      _TWAESEncryptCTR_ptr.asFunction<_dart_TWAESEncryptCTR>();

  /// Decrypts a block of data using AES in Counter (CTR) mode.
  ///
  /// \param key decryption key Data, must be 16, 24, or 32 bytes long.
  /// \param data Data to decrypt.
  /// \param iv initialization vector Data.
  /// \return decrypted Data.
  static Pointer<Void> TWAESDecryptCTR(
    Pointer<Void> key,
    Pointer<Void> data,
    Pointer<Void> iv,
  ) {
    return _TWAESDecryptCTR(
      key,
      data,
      iv,
    );
  }

  static final _TWAESDecryptCTR_ptr = lookup<
      NativeFunction<
          Pointer<Void> Function(
              Pointer<Void>, Pointer<Void>, Pointer<Void>)>>('TWAESDecryptCTR');
  static final _dart_TWAESDecryptCTR _TWAESDecryptCTR =
      _TWAESDecryptCTR_ptr.asFunction<_dart_TWAESDecryptCTR>();
}

typedef _dart_TWAESEncryptCBC = Pointer<Void> Function(
  Pointer<Void> key,
  Pointer<Void> data,
  Pointer<Void> iv,
  int mode,
);

typedef _dart_TWAESDecryptCBC = Pointer<Void> Function(
  Pointer<Void> key,
  Pointer<Void> data,
  Pointer<Void> iv,
  int mode,
);

typedef _dart_TWAESEncryptCTR = Pointer<Void> Function(
  Pointer<Void> key,
  Pointer<Void> data,
  Pointer<Void> iv,
);

typedef _dart_TWAESDecryptCTR = Pointer<Void> Function(
  Pointer<Void> key,
  Pointer<Void> data,
  Pointer<Void> iv,
);
