import './ffi_impl_imports.dart';

/// Represents a WalletConnect signing request.
class TWWalletConnectRequest {
  const TWWalletConnectRequest();

  /// Parses the WalletConnect signing request as a `SigningInput`.
  ///
  /// \param coin The given coin type to plan the transaction for.
  /// \param input The serialized data of a `WalletConnect::Proto::ParseRequestInput` proto object.
  /// \return The serialized data of `WalletConnect::Proto::ParseRequestOutput` proto object.
  static Pointer<Void> TWWalletConnectRequestParse(
    int coin,
    Pointer<Void> input,
  ) {
    return _TWWalletConnectRequestParse(coin, input);
  }

  static final _TWWalletConnectRequestParse_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Int32, Pointer<Void>)>>(
    'TWWalletConnectRequestParse',
  );

  static final _dart_TWWalletConnectRequestParse _TWWalletConnectRequestParse =
      _TWWalletConnectRequestParse_ptr.asFunction<
          _dart_TWWalletConnectRequestParse>();
}

typedef _dart_TWWalletConnectRequestParse = Pointer<Void> Function(
  int coin,
  Pointer<Void> input,
);
