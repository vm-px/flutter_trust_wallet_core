import './ffi_impl_imports.dart';

/// THORChain swap functions
class TWTHORChainSwap {
  /// Creates a TWString from a null-terminated UTF8 byte array. It must be deleted at the end.
  ///
  /// \param bytes a null-terminated UTF8 byte array.
  static Pointer<Void> TWTHORChainSwapBuildSwap(
    Pointer<Void> input,
  ) {
    return _TWTHORChainSwapBuildSwap(
      input,
    );
  }

  static final _TWTHORChainSwapBuildSwap_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>)>>(
    'TWTHORChainSwapBuildSwap',
  );

  static final _dart_TWTHORChainSwapBuildSwap _TWTHORChainSwapBuildSwap =
      _TWTHORChainSwapBuildSwap_ptr.asFunction<
          _dart_TWTHORChainSwapBuildSwap>();
}

typedef _dart_TWTHORChainSwapBuildSwap = Pointer<Void> Function(
  Pointer<Void> input,
);
