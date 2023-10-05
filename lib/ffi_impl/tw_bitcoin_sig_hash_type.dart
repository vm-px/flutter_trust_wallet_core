import './ffi_impl_imports.dart';

/// Bitcoin SIGHASH type.
abstract class TWBitcoinSigHashType {
  static const int TWBitcoinSigHashTypeAll = 0x01;
  static const int TWBitcoinSigHashTypeNone = 0x02;
  static const int TWBitcoinSigHashTypeSingle = 0x03;
  static const int TWBitcoinSigHashTypeFork = 0x40;
  static const int TWBitcoinSigHashTypeForkBTG = 0x4f40;
  static const int TWBitcoinSigHashTypeAnyoneCanPay = 0x80;

  /// Determines if the given sig hash is single
  ///
  /// \param type sig hash type
  /// \return true if the sigh hash type is single, false otherwise
  static int TWBitcoinSigHashTypeIsSingle(
    int type,
  ) {
    return _TWBitcoinSigHashTypeIsSingle(
      type,
    );
  }

  static final _TWBitcoinSigHashTypeIsSingle_ptr =
      lookup<NativeFunction<Int32 Function(Int32)>>(
    'TWBitcoinSigHashTypeIsSingle',
  );
  static final _dart_TWBitcoinSigHashTypeIsSingle
      _TWBitcoinSigHashTypeIsSingle = _TWBitcoinSigHashTypeIsSingle_ptr
          .asFunction<_dart_TWBitcoinSigHashTypeIsSingle>();

  /// Determines if the given sig hash is none
  ///
  /// \param type sig hash type
  /// \return true if the sigh hash type is none, false otherwise
  static int TWBitcoinSigHashTypeIsNone(
    int type,
  ) {
    return _TWBitcoinSigHashTypeIsNone(
      type,
    );
  }

  static final _TWBitcoinSigHashTypeIsNone_ptr =
      lookup<NativeFunction<Int32 Function(Int32)>>(
    'TWBitcoinSigHashTypeIsNone',
  );
  static final _dart_TWBitcoinSigHashTypeIsNone _TWBitcoinSigHashTypeIsNone =
      _TWBitcoinSigHashTypeIsNone_ptr.asFunction<
          _dart_TWBitcoinSigHashTypeIsNone>();
}

typedef _dart_TWBitcoinSigHashTypeIsSingle = int Function(
  int type,
);

typedef _dart_TWBitcoinSigHashTypeIsNone = int Function(
  int type,
);
