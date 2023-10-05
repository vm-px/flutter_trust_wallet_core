import './ffi_impl_imports.dart';

/// Wrapper class for Ethereum ABI encoding & decoding.
abstract class TWEthereumAbi {
  /// Encode function to Eth ABI binary
  ///
  /// \param fn Non-null Eth abi function
  /// \return Non-null encoded block of data
  static Pointer<Void> TWEthereumAbiEncode(
    Pointer<Void> fn,
  ) {
    return _TWEthereumAbiEncode(
      fn,
    );
  }

  static final _TWEthereumAbiEncode_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>)>>(
          'TWEthereumAbiEncode');
  static final _dart_TWEthereumAbiEncode _TWEthereumAbiEncode =
      _TWEthereumAbiEncode_ptr.asFunction<_dart_TWEthereumAbiEncode>();

  /// Decode function output from Eth ABI binary, fill output parameters
  ///
  /// \param[in] fn Non-null Eth abi function
  /// \param[out] encoded Non-null block of data
  /// \return true if encoded have been filled correctly, false otherwise
  static int TWEthereumAbiDecodeOutput(
    Pointer<Void> fn,
    Pointer<Void> encoded,
  ) {
    return _TWEthereumAbiDecodeOutput(
      fn,
      encoded,
    );
  }

  static final _TWEthereumAbiDecodeOutput_ptr =
      lookup<NativeFunction<Int32 Function(Pointer<Void>, Pointer<Void>)>>(
    'TWEthereumAbiDecodeOutput',
  );
  static final _dart_TWEthereumAbiDecodeOutput _TWEthereumAbiDecodeOutput =
      _TWEthereumAbiDecodeOutput_ptr.asFunction<
          _dart_TWEthereumAbiDecodeOutput>();

  /// Decode function call data to human readable json format, according to input abi json
  ///
  /// \param data Non-null block of data
  /// \param abi Non-null string
  /// \return Non-null json string function call data
  static Pointer<Utf8> TWEthereumAbiDecodeCall(
    Pointer<Void> data,
    Pointer<Utf8> abi,
  ) {
    return _TWEthereumAbiDecodeCall(
      data,
      abi,
    );
  }

  static final _TWEthereumAbiDecodeCall_ptr = lookup<
      NativeFunction<Pointer<Utf8> Function(Pointer<Void>, Pointer<Utf8>)>>(
    'TWEthereumAbiDecodeCall',
  );
  static final _dart_TWEthereumAbiDecodeCall _TWEthereumAbiDecodeCall =
      _TWEthereumAbiDecodeCall_ptr.asFunction<_dart_TWEthereumAbiDecodeCall>();

  /// Compute the hash of a struct, used for signing, according to EIP712 ("v4").
  /// Input is a Json object (as string), with following fields:
  /// - types: map of used struct types (see makeTypes())
  /// - primaryType: the type of the message (string)
  /// - domain: EIP712 domain specifier values
  /// - message: the message (object).
  /// Throws on error.
  /// Example input:
  ///  R"({
  ///     "types": {
  ///         "EIP712Domain": [
  ///             {"name": "name", "type": "string"},
  ///             {"name": "version", "type": "string"},
  ///             {"name": "chainId", "type": "uint256"},
  ///             {"name": "verifyingContract", "type": "address"}
  ///         ],
  ///         "Person": [
  ///             {"name": "name", "type": "string"},
  ///             {"name": "wallet", "type": "address"}
  ///         ]
  ///     },
  ///     "primaryType": "Person",
  ///     "domain": {
  ///         "name": "Ether Person",
  ///         "version": "1",
  ///         "chainId": 1,
  ///         "verifyingContract": "0xCcCCccccCCCCcCCCCCCcCcCccCcCCCcCcccccccC"
  ///     },
  ///     "message": {
  ///         "name": "Cow",
  ///         "wallet": "CD2a3d9F938E13CD947Ec05AbC7FE734Df8DD826"
  ///     }
  ///  })");
  /// On error, empty Data is returned.
  /// Returned data must be deleted (hint: use WRAPD() macro).
  ///
  /// \param messageJson Non-null json abi input
  /// \return Non-null block of data, encoded abi input
  static Pointer<Void> TWEthereumAbiEncodeTyped(
    Pointer<Utf8> messageJson,
  ) {
    return _TWEthereumAbiEncodeTyped(
      messageJson,
    );
  }

  static final _TWEthereumAbiEncodeTyped_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Utf8>)>>(
    'TWEthereumAbiEncodeTyped',
  );
  static final _dart_TWEthereumAbiEncodeTyped _TWEthereumAbiEncodeTyped =
      _TWEthereumAbiEncodeTyped_ptr.asFunction<
          _dart_TWEthereumAbiEncodeTyped>();
}

typedef _dart_TWEthereumAbiEncode = Pointer<Void> Function(
  Pointer<Void> fn,
);

typedef _dart_TWEthereumAbiDecodeOutput = int Function(
  Pointer<Void> fn,
  Pointer<Void> encoded,
);

typedef _dart_TWEthereumAbiDecodeCall = Pointer<Utf8> Function(
  Pointer<Void> data,
  Pointer<Utf8> abi,
);

typedef _dart_TWEthereumAbiEncodeTyped = Pointer<Void> Function(
  Pointer<Utf8> messageJson,
);
