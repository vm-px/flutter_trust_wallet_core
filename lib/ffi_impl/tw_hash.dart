import './ffi_impl_imports.dart';

/// Hash functions
abstract class TWHash {
  static const int TWHashSHA1Length = 20;
  static const int TWHashSHA256Length = 32;
  static const int TWHashSHA512Length = 64;
  static const int TWHashRipemdLength = 20;

  /// Computes the SHA1 of a block of data.
  ///
  /// \param data Non-null block of data
  /// \return Non-null computed SHA1 block of data
  static Pointer<Void> TWHashSHA1(
    Pointer<Void> data,
  ) {
    return _TWHashSHA1(
      data,
    );
  }

  static final _TWHashSHA1_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>)>>(
          'TWHashSHA1');
  static final _dart_TWHashSHA1 _TWHashSHA1 =
      _TWHashSHA1_ptr.asFunction<_dart_TWHashSHA1>();

  /// Computes the SHA256 of a block of data.
  ///
  /// \param data Non-null block of data
  /// \return Non-null computed SHA256 block of data
  static Pointer<Void> TWHashSHA256(
    Pointer<Void> data,
  ) {
    return _TWHashSHA256(
      data,
    );
  }

  static final _TWHashSHA256_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>)>>(
          'TWHashSHA256');
  static final _dart_TWHashSHA256 _TWHashSHA256 =
      _TWHashSHA256_ptr.asFunction<_dart_TWHashSHA256>();

  /// Computes the SHA512 of a block of data.
  ///
  /// \param data Non-null block of data
  /// \return Non-null computed SHA512 block of data
  static Pointer<Void> TWHashSHA512(
    Pointer<Void> data,
  ) {
    return _TWHashSHA512(
      data,
    );
  }

  static final _TWHashSHA512_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>)>>(
          'TWHashSHA512');
  static final _dart_TWHashSHA512 _TWHashSHA512 =
      _TWHashSHA512_ptr.asFunction<_dart_TWHashSHA512>();

  /// Computes the SHA512_256 of a block of data.
  ///
  /// \param data Non-null block of data
  /// \return Non-null computed SHA512_256 block of data
  static Pointer<Void> TWHashSHA512_256(
    Pointer<Void> data,
  ) {
    return _TWHashSHA512_256(
      data,
    );
  }

  static final _TWHashSHA512_256_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>)>>(
          'TWHashSHA512_256');
  static final _dart_TWHashSHA512_256 _TWHashSHA512_256 =
      _TWHashSHA512_256_ptr.asFunction<_dart_TWHashSHA512_256>();

  /// Computes the Keccak256 of a block of data.
  ///
  /// \param data Non-null block of data
  /// \return Non-null computed Keccak256 block of data
  static Pointer<Void> TWHashKeccak256(
    Pointer<Void> data,
  ) {
    return _TWHashKeccak256(
      data,
    );
  }

  static final _TWHashKeccak256_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>)>>(
          'TWHashKeccak256');
  static final _dart_TWHashKeccak256 _TWHashKeccak256 =
      _TWHashKeccak256_ptr.asFunction<_dart_TWHashKeccak256>();

  /// Computes the Keccak512 of a block of data.
  ///
  /// \param data Non-null block of data
  /// \return Non-null computed Keccak512 block of data
  static Pointer<Void> TWHashKeccak512(
    Pointer<Void> data,
  ) {
    return _TWHashKeccak512(
      data,
    );
  }

  static final _TWHashKeccak512_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>)>>(
          'TWHashKeccak512');
  static final _dart_TWHashKeccak512 _TWHashKeccak512 =
      _TWHashKeccak512_ptr.asFunction<_dart_TWHashKeccak512>();

  /// Computes the SHA3_256 of a block of data.
  ///
  /// \param data Non-null block of data
  /// \return Non-null computed SHA3_256 block of data
  static Pointer<Void> TWHashSHA3_256(
    Pointer<Void> data,
  ) {
    return _TWHashSHA3_256(
      data,
    );
  }

  static final _TWHashSHA3_256_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>)>>(
          'TWHashSHA3_256');
  static final _dart_TWHashSHA3_256 _TWHashSHA3_256 =
      _TWHashSHA3_256_ptr.asFunction<_dart_TWHashSHA3_256>();

  /// Computes the SHA3_512 of a block of data.
  ///
  /// \param data Non-null block of data
  /// \return Non-null computed SHA3_512 block of data
  static Pointer<Void> TWHashSHA3_512(
    Pointer<Void> data,
  ) {
    return _TWHashSHA3_512(
      data,
    );
  }

  static final _TWHashSHA3_512_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>)>>(
          'TWHashSHA3_512');
  static final _dart_TWHashSHA3_512 _TWHashSHA3_512 =
      _TWHashSHA3_512_ptr.asFunction<_dart_TWHashSHA3_512>();

  /// Computes the RIPEMD of a block of data.
  ///
  /// \param data Non-null block of data
  /// \return Non-null computed RIPEMD block of data
  static Pointer<Void> TWHashRIPEMD(
    Pointer<Void> data,
  ) {
    return _TWHashRIPEMD(
      data,
    );
  }

  static final _TWHashRIPEMD_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>)>>(
          'TWHashRIPEMD');
  static final _dart_TWHashRIPEMD _TWHashRIPEMD =
      _TWHashRIPEMD_ptr.asFunction<_dart_TWHashRIPEMD>();

  /// Computes the Blake256 of a block of data.
  ///
  /// \param data Non-null block of data
  /// \return Non-null computed Blake256 block of data
  static Pointer<Void> TWHashBlake256(
    Pointer<Void> data,
  ) {
    return _TWHashBlake256(
      data,
    );
  }

  static final _TWHashBlake256_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>)>>(
          'TWHashBlake256');
  static final _dart_TWHashBlake256 _TWHashBlake256 =
      _TWHashBlake256_ptr.asFunction<_dart_TWHashBlake256>();

  /// Computes the Blake2b of a block of data.
  ///
  /// \param data Non-null block of data
  /// \return Non-null computed Blake2b block of data
  static Pointer<Void> TWHashBlake2b(
    Pointer<Void> data,
    int size,
  ) {
    return _TWHashBlake2b(
      data,
      size,
    );
  }

  static final _TWHashBlake2b_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>, Int32)>>(
          'TWHashBlake2b');
  static final _dart_TWHashBlake2b _TWHashBlake2b =
      _TWHashBlake2b_ptr.asFunction<_dart_TWHashBlake2b>();

  /// Computes the Groestl512 of a block of data.
  ///
  /// \param data Non-null block of data
  /// \return Non-null computed Groestl512 block of data
  static Pointer<Void> TWHashGroestl512(
    Pointer<Void> data,
  ) {
    return _TWHashGroestl512(
      data,
    );
  }

  static final _TWHashGroestl512_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>)>>(
          'TWHashGroestl512');
  static final _dart_TWHashGroestl512 _TWHashGroestl512 =
      _TWHashGroestl512_ptr.asFunction<_dart_TWHashGroestl512>();

  /// Computes the SHA256D of a block of data.
  ///
  /// \param data Non-null block of data
  /// \return Non-null computed SHA256D block of data
  static Pointer<Void> TWHashSHA256SHA256(
    Pointer<Void> data,
  ) {
    return _TWHashSHA256SHA256(
      data,
    );
  }

  static final _TWHashSHA256SHA256_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>)>>(
          'TWHashSHA256SHA256');
  static final _dart_TWHashSHA256SHA256 _TWHashSHA256SHA256 =
      _TWHashSHA256SHA256_ptr.asFunction<_dart_TWHashSHA256SHA256>();

  /// Computes the SHA256RIPEMD of a block of data.
  ///
  /// \param data Non-null block of data
  /// \return Non-null computed SHA256RIPEMD block of data
  static Pointer<Void> TWHashSHA256RIPEMD(
    Pointer<Void> data,
  ) {
    return _TWHashSHA256RIPEMD(
      data,
    );
  }

  static final _TWHashSHA256RIPEMD_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>)>>(
          'TWHashSHA256RIPEMD');
  static final _dart_TWHashSHA256RIPEMD _TWHashSHA256RIPEMD =
      _TWHashSHA256RIPEMD_ptr.asFunction<_dart_TWHashSHA256RIPEMD>();

  /// Computes the SHA3_256RIPEMD of a block of data.
  ///
  /// \param data Non-null block of data
  /// \return Non-null computed SHA3_256RIPEMD block of data
  static Pointer<Void> TWHashSHA3_256RIPEMD(
    Pointer<Void> data,
  ) {
    return _TWHashSHA3_256RIPEMD(
      data,
    );
  }

  static final _TWHashSHA3_256RIPEMD_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>)>>(
          'TWHashSHA3_256RIPEMD');
  static final _dart_TWHashSHA3_256RIPEMD _TWHashSHA3_256RIPEMD =
      _TWHashSHA3_256RIPEMD_ptr.asFunction<_dart_TWHashSHA3_256RIPEMD>();

  /// Computes the Blake256D of a block of data.
  ///
  /// \param data Non-null block of data
  /// \return Non-null computed Blake256D block of data
  static Pointer<Void> TWHashBlake256Blake256(
    Pointer<Void> data,
  ) {
    return _TWHashBlake256Blake256(
      data,
    );
  }

  static final _TWHashBlake256Blake256_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>)>>(
    'TWHashBlake256Blake256',
  );
  static final _dart_TWHashBlake256Blake256 _TWHashBlake256Blake256 =
      _TWHashBlake256Blake256_ptr.asFunction<_dart_TWHashBlake256Blake256>();

  /// Computes the Blake256RIPEMD of a block of data.
  ///
  /// \param data Non-null block of data
  /// \return Non-null computed Blake256RIPEMD block of data
  static Pointer<Void> TWHashBlake256RIPEMD(
    Pointer<Void> data,
  ) {
    return _TWHashBlake256RIPEMD(
      data,
    );
  }

  static final _TWHashBlake256RIPEMD_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>)>>(
          'TWHashBlake256RIPEMD');
  static final _dart_TWHashBlake256RIPEMD _TWHashBlake256RIPEMD =
      _TWHashBlake256RIPEMD_ptr.asFunction<_dart_TWHashBlake256RIPEMD>();

  /// Computes the Groestl512D of a block of data.
  ///
  /// \param data Non-null block of data
  /// \return Non-null computed Groestl512D block of data
  static Pointer<Void> TWHashGroestl512Groestl512(
    Pointer<Void> data,
  ) {
    return _TWHashGroestl512Groestl512(
      data,
    );
  }

  static final _TWHashGroestl512Groestl512_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>)>>(
    'TWHashGroestl512Groestl512',
  );
  static final _dart_TWHashGroestl512Groestl512 _TWHashGroestl512Groestl512 =
      _TWHashGroestl512Groestl512_ptr.asFunction<
          _dart_TWHashGroestl512Groestl512>();
}

typedef _dart_TWHashSHA1 = Pointer<Void> Function(
  Pointer<Void> data,
);

typedef _dart_TWHashSHA256 = Pointer<Void> Function(
  Pointer<Void> data,
);

typedef _dart_TWHashSHA512 = Pointer<Void> Function(
  Pointer<Void> data,
);

typedef _dart_TWHashSHA512_256 = Pointer<Void> Function(
  Pointer<Void> data,
);

typedef _dart_TWHashKeccak256 = Pointer<Void> Function(
  Pointer<Void> data,
);

typedef _dart_TWHashKeccak512 = Pointer<Void> Function(
  Pointer<Void> data,
);

typedef _dart_TWHashSHA3_256 = Pointer<Void> Function(
  Pointer<Void> data,
);

typedef _dart_TWHashSHA3_512 = Pointer<Void> Function(
  Pointer<Void> data,
);

typedef _dart_TWHashRIPEMD = Pointer<Void> Function(
  Pointer<Void> data,
);

typedef _dart_TWHashBlake256 = Pointer<Void> Function(
  Pointer<Void> data,
);

typedef _dart_TWHashBlake2b = Pointer<Void> Function(
  Pointer<Void> data,
  int size,
);

typedef _dart_TWHashGroestl512 = Pointer<Void> Function(
  Pointer<Void> data,
);

typedef _dart_TWHashSHA256SHA256 = Pointer<Void> Function(
  Pointer<Void> data,
);

typedef _dart_TWHashSHA256RIPEMD = Pointer<Void> Function(
  Pointer<Void> data,
);

typedef _dart_TWHashSHA3_256RIPEMD = Pointer<Void> Function(
  Pointer<Void> data,
);

typedef _dart_TWHashBlake256Blake256 = Pointer<Void> Function(
  Pointer<Void> data,
);

typedef _dart_TWHashBlake256RIPEMD = Pointer<Void> Function(
  Pointer<Void> data,
);

typedef _dart_TWHashGroestl512Groestl512 = Pointer<Void> Function(
  Pointer<Void> data,
);
