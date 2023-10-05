import './ffi_impl_imports.dart';

/// Base64 encode / decode functions
abstract class TWBase64 {
  /// Decode a Base64 input with the default alphabet (RFC4648 with '+', '/')
  ///
  /// \param string Encoded input to be decoded
  /// \return The decoded data, empty if decoding failed.
  static Pointer<Void> TWBase64Decode(
    Pointer<Utf8> string,
  ) {
    return _TWBase64Decode(
      string,
    );
  }

  static final _TWBase64Decode_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Utf8>)>>(
          'TWBase64Decode');
  static final _dart_TWBase64Decode _TWBase64Decode =
      _TWBase64Decode_ptr.asFunction<_dart_TWBase64Decode>();

  static final _TWBase64Encode_ptr =
      lookup<NativeFunction<Pointer<Utf8> Function(Pointer<Void>)>>(
          'TWBase64Encode');
  static final _dart_TWBase64Encode _TWBase64Encode =
      _TWBase64Encode_ptr.asFunction<_dart_TWBase64Encode>();

  /// Decode a Base64 input with the alphabet safe for URL-s and filenames (RFC4648 with '-', '_')
  ///
  /// \param string Encoded base64 input to be decoded
  /// \return The decoded data, empty if decoding failed.
  static Pointer<Void> TWBase64DecodeUrl(
    Pointer<Utf8> string,
  ) {
    return _TWBase64DecodeUrl(
      string,
    );
  }

  static final _TWBase64DecodeUrl_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Utf8>)>>(
          'TWBase64DecodeUrl');
  static final _dart_TWBase64DecodeUrl _TWBase64DecodeUrl =
      _TWBase64DecodeUrl_ptr.asFunction<_dart_TWBase64DecodeUrl>();

  /// Encode an input to Base64 with the default alphabet (RFC4648 with '+', '/')
  ///
  /// \param data Data to be encoded (raw bytes)
  /// \return The encoded data
  static Pointer<Utf8> TWBase64Encode(
    Pointer<Void> data,
  ) {
    return _TWBase64Encode(
      data,
    );
  }

  /// Encode an input to Base64 with the alphabet safe for URL-s and filenames (RFC4648 with '-', '_')
  ///
  /// \param data Data to be encoded (raw bytes)
  /// \return The encoded data
  static Pointer<Utf8> TWBase64EncodeUrl(
    Pointer<Void> data,
  ) {
    return _TWBase64EncodeUrl(
      data,
    );
  }

  static final _TWBase64EncodeUrl_ptr =
      lookup<NativeFunction<Pointer<Utf8> Function(Pointer<Void>)>>(
          'TWBase64EncodeUrl');
  static final _dart_TWBase64EncodeUrl _TWBase64EncodeUrl =
      _TWBase64EncodeUrl_ptr.asFunction<_dart_TWBase64EncodeUrl>();
}

typedef _dart_TWBase64Encode = Pointer<Utf8> Function(
  Pointer<Void> data,
);

typedef _dart_TWBase64EncodeUrl = Pointer<Utf8> Function(
  Pointer<Void> data,
);

typedef _dart_TWBase64Decode = Pointer<Void> Function(
  Pointer<Utf8> string,
);

typedef _dart_TWBase64DecodeUrl = Pointer<Void> Function(
  Pointer<Utf8> string,
);
