import './ffi_impl_imports.dart';

/// Password-Based Key Derivation Function 2
abstract class TWPBKDF2 {
  /// Derives a key from a password and a salt using PBKDF2 + Sha256.
  ///
  /// \param password is the master password from which a derived key is generated
  /// \param salt is a sequence of bits, known as a cryptographic salt
  /// \param iterations is the number of iterations desired
  /// \param dkLen is the desired bit-length of the derived key
  /// \return the derived key data.
  static Pointer<Void> TWPBKDF2HmacSha256(
    Pointer<Void> password,
    Pointer<Void> salt,
    int iterations,
    int dkLen,
  ) {
    return _TWPBKDF2HmacSha256(
      password,
      salt,
      iterations,
      dkLen,
    );
  }

  static final _TWPBKDF2HmacSha256_ptr = lookup<
      NativeFunction<
          Pointer<Void> Function(Pointer<Void>, Pointer<Void>, Int64,
              Int64)>>('TWPBKDF2HmacSha256');
  static final _dart_TWPBKDF2HmacSha256 _TWPBKDF2HmacSha256 =
      _TWPBKDF2HmacSha256_ptr.asFunction<_dart_TWPBKDF2HmacSha256>();

  /// Derives a key from a password and a salt using PBKDF2 + Sha512.
  ///
  /// \param password is the master password from which a derived key is generated
  /// \param salt is a sequence of bits, known as a cryptographic salt
  /// \param iterations is the number of iterations desired
  /// \param dkLen is the desired bit-length of the derived key
  /// \return the derived key data.
  static Pointer<Void> TWPBKDF2HmacSha512(
    Pointer<Void> password,
    Pointer<Void> salt,
    int iterations,
    int dkLen,
  ) {
    return _TWPBKDF2HmacSha512(
      password,
      salt,
      iterations,
      dkLen,
    );
  }

  static final _TWPBKDF2HmacSha512_ptr = lookup<
      NativeFunction<
          Pointer<Void> Function(Pointer<Void>, Pointer<Void>, Int64,
              Int64)>>('TWPBKDF2HmacSha512');
  static final _dart_TWPBKDF2HmacSha512 _TWPBKDF2HmacSha512 =
      _TWPBKDF2HmacSha512_ptr.asFunction<_dart_TWPBKDF2HmacSha512>();
}

typedef _dart_TWPBKDF2HmacSha256 = Pointer<Void> Function(
  Pointer<Void> password,
  Pointer<Void> salt,
  int iterations,
  int dkLen,
);

typedef _dart_TWPBKDF2HmacSha512 = Pointer<Void> Function(
  Pointer<Void> password,
  Pointer<Void> salt,
  int iterations,
  int dkLen,
);
