import './ffi_impl_imports.dart';

/// Defines a resizable string.
///
/// The implementantion of these methods should be language-specific to minimize translation
/// overhead. For instance it should be a `jstring` for Java and an `NSString` for Swift. Create
/// allocates memory, the delete call should be called at the end to release memory.
class TWString {
  /// Creates a TWString from a null-terminated UTF8 byte array. It must be deleted at the end.
  ///
  /// \param bytes a null-terminated UTF8 byte array.
  static Pointer<Utf8> TWStringCreateWithUTF8Bytes(
    Pointer<Utf8> bytes,
  ) {
    return _TWStringCreateWithUTF8Bytes(
      bytes,
    );
  }

  static final _TWStringCreateWithUTF8Bytes_ptr =
      lookup<NativeFunction<Pointer<Utf8> Function(Pointer<Utf8>)>>(
    'TWStringCreateWithUTF8Bytes',
  );

  static final _dart_TWStringCreateWithUTF8Bytes _TWStringCreateWithUTF8Bytes =
      _TWStringCreateWithUTF8Bytes_ptr.asFunction<
          _dart_TWStringCreateWithUTF8Bytes>();

  /// Creates a string from a raw byte array and size. It must be deleted at the end.
  ///
  /// \param bytes a raw byte array.
  /// \param size the size of the byte array.
  static Pointer<Utf8> TWStringCreateWithRawBytes(
    Pointer<Uint8> bytes,
    int size,
  ) {
    return _TWStringCreateWithRawBytes(
      bytes,
      size,
    );
  }

  static final _TWStringCreateWithRawBytes_ptr =
      lookup<NativeFunction<Pointer<Utf8> Function(Pointer<Uint8>, Int32)>>(
    'TWStringCreateWithRawBytes',
  );
  static final _dart_TWStringCreateWithRawBytes _TWStringCreateWithRawBytes =
      _TWStringCreateWithRawBytes_ptr.asFunction<
          _dart_TWStringCreateWithRawBytes>();

  /// Creates a hexadecimal string from a block of data. It must be deleted at the end.
  ///
  /// \param data a block of data.
  static Pointer<Utf8> TWStringCreateWithHexData(
    Pointer<Void> data,
  ) {
    return _TWStringCreateWithHexData(
      data,
    );
  }

  static final _TWStringCreateWithHexData_ptr =
      lookup<NativeFunction<Pointer<Utf8> Function(Pointer<Void>)>>(
    'TWStringCreateWithHexData',
  );
  static final _dart_TWStringCreateWithHexData _TWStringCreateWithHexData =
      _TWStringCreateWithHexData_ptr.asFunction<
          _dart_TWStringCreateWithHexData>();

  /// Returns the string size in bytes.
  ///
  /// \param string a TWString pointer.
  static int TWStringSize(
    Pointer<Utf8> string,
  ) {
    return _TWStringSize(
      string,
    );
  }

  static final _TWStringSize_ptr =
      lookup<NativeFunction<Int32 Function(Pointer<Utf8>)>>('TWStringSize');
  static final _dart_TWStringSize _TWStringSize =
      _TWStringSize_ptr.asFunction<_dart_TWStringSize>();

  /// Returns the byte at the provided index.
  ///
  /// \param string a TWString pointer.
  /// \param index the index of the byte.
  static int TWStringGet(
    Pointer<Utf8> string,
    int index,
  ) {
    return _TWStringGet(
      string,
      index,
    );
  }

  static final _TWStringGet_ptr =
      lookup<NativeFunction<Int8 Function(Pointer<Utf8>, Int32)>>(
          'TWStringGet');
  static final _dart_TWStringGet _TWStringGet =
      _TWStringGet_ptr.asFunction<_dart_TWStringGet>();

  /// Returns the raw pointer to the string's UTF8 bytes (null-terminated).
  ///
  /// \param string a TWString pointer.
  static Pointer<Utf8> TWStringUTF8Bytes(
    Pointer<Utf8> string,
  ) {
    return _TWStringUTF8Bytes(
      string,
    );
  }

  static final _TWStringUTF8Bytes_ptr =
      lookup<NativeFunction<Pointer<Utf8> Function(Pointer<Utf8>)>>(
          'TWStringUTF8Bytes');
  static final _dart_TWStringUTF8Bytes _TWStringUTF8Bytes =
      _TWStringUTF8Bytes_ptr.asFunction<_dart_TWStringUTF8Bytes>();

  /// Deletes a string created with a `TWStringCreate*` method and frees the memory.
  ///
  /// \param string a TWString pointer.
  static void TWStringDelete(
    Pointer<Utf8> string,
  ) {
    return _TWStringDelete(
      string,
    );
  }

  static final _TWStringDelete_ptr =
      lookup<NativeFunction<Void Function(Pointer<Utf8>)>>('TWStringDelete');
  static final _dart_TWStringDelete _TWStringDelete =
      _TWStringDelete_ptr.asFunction<_dart_TWStringDelete>();

  /// Determines whether two string blocks are equal.
  ///
  /// \param lhs a TWString pointer.
  /// \param rhs another TWString pointer.
  static int TWStringEqual(
    Pointer<Utf8> lhs,
    Pointer<Utf8> rhs,
  ) {
    return _TWStringEqual(
      lhs,
      rhs,
    );
  }

  static final _TWStringEqual_ptr =
      lookup<NativeFunction<Int32 Function(Pointer<Utf8>, Pointer<Utf8>)>>(
          'TWStringEqual');
  static final _dart_TWStringEqual _TWStringEqual =
      _TWStringEqual_ptr.asFunction<_dart_TWStringEqual>();
}

typedef _dart_TWStringCreateWithUTF8Bytes = Pointer<Utf8> Function(
  Pointer<Utf8> bytes,
);

typedef _dart_TWStringCreateWithRawBytes = Pointer<Utf8> Function(
  Pointer<Uint8> bytes,
  int size,
);

typedef _dart_TWStringCreateWithHexData = Pointer<Utf8> Function(
  Pointer<Void> data,
);

typedef _dart_TWStringSize = int Function(
  Pointer<Utf8> string,
);

typedef _dart_TWStringGet = int Function(
  Pointer<Utf8> string,
  int index,
);

typedef _dart_TWStringUTF8Bytes = Pointer<Utf8> Function(
  Pointer<Utf8> string,
);

typedef _dart_TWStringDelete = void Function(
  Pointer<Utf8> string,
);

typedef _dart_TWStringEqual = int Function(
  Pointer<Utf8> lhs,
  Pointer<Utf8> rhs,
);
