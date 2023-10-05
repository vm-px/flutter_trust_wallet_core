import './ffi_impl_imports.dart';

/// Cardano helper functions
class TWCardano {
  /// Calculates the minimum ADA amount needed for a UTXO.
  ///
  /// \see reference https://docs.cardano.org/native-tokens/minimum-ada-value-requirement
  /// \param tokenBundle serialized data of TW.Cardano.Proto.TokenBundle.
  /// \return the minimum ADA amount.
  static int TWCardanoMinAdaAmount(
    Pointer<Void> tokenBundle,
  ) {
    return _TWCardanoMinAdaAmount(
      tokenBundle,
    );
  }

  static final _TWCardanoMinAdaAmount_ptr =
      lookup<NativeFunction<Uint64 Function(Pointer<Void>)>>(
    'TWCardanoMinAdaAmount',
  );
  static final _dart_TWCardanoMinAdaAmount _TWCardanoMinAdaAmount =
      _TWCardanoMinAdaAmount_ptr.asFunction<_dart_TWCardanoMinAdaAmount>();

  /// Return the staking address associated to (contained in) this address. Must be a Base address.
  /// Empty string is returned on error. Result must be freed.
  /// \param baseAddress A valid base address, as string.
  /// \return the associated staking (reward) address, as string, or empty string on error.
  static Pointer<Utf8> TWCardanoGetStakingAddress(
    Pointer<Utf8> baseAddress,
  ) {
    return _TWCardanoGetStakingAddress(
      baseAddress,
    );
  }

  static final _TWCardanoGetStakingAddress_ptr =
      lookup<NativeFunction<Pointer<Utf8> Function(Pointer<Utf8>)>>(
    'TWCardanoGetStakingAddress',
  );
  static final _dart_TWCardanoGetStakingAddress _TWCardanoGetStakingAddress =
      _TWCardanoGetStakingAddress_ptr.asFunction<
          _dart_TWCardanoGetStakingAddress>();
}

typedef _dart_TWCardanoMinAdaAmount = int Function(
  Pointer<Void> tokenBundle,
);

typedef _dart_TWCardanoGetStakingAddress = Pointer<Utf8> Function(
  Pointer<Utf8> baseAddress,
);
