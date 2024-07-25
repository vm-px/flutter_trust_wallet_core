import './ffi_impl_imports.dart';

/// TON address operations.
abstract class TWTONAddressConverter {
  /// Converts any TON address format to user friendly with the given parameters.
  ///
  /// \param address raw or user-friendly address to be converted.
  /// \param bounceable whether the result address should be bounceable.
  /// \param testnet whether the result address should be testnet.
  static Pointer<Void> TWTONAddressConverterToUserFriendly(
    Pointer<Utf8> address,
    int bounceable,
    int testnet,
  ) {
    return _TWTONAddressConverterToUserFriendly(
      address,
      bounceable,
      testnet,
    );
  }

  static final _TWTONAddressConverterToUserFriendly_ptr = lookup<
      NativeFunction<
          Pointer<Void> Function(
            Pointer<Utf8>,
            Int32,
            Int32,
          )>>(
    'TWTONAddressConverterToUserFriendly',
  );
  static final _dart_TWTONAddressConverterToUserFriendly
      _TWTONAddressConverterToUserFriendly =
      _TWTONAddressConverterToUserFriendly_ptr.asFunction<
          _dart_TWTONAddressConverterToUserFriendly>();
}

typedef _dart_TWTONAddressConverterToUserFriendly = Pointer<Void> Function(
  Pointer<Utf8> address,
  int bounceable,
  int testnet,
);
