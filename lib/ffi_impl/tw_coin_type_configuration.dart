import './ffi_impl_imports.dart';

/// CoinTypeConfiguration functions
abstract class TWCoinTypeConfiguration {
  /// Returns stock symbol of coin
  ///
  /// \param type A coin type
  /// \return A non-null TWString stock symbol of coin
  /// \note Caller must free returned object
  static Pointer<Utf8> TWCoinTypeConfigurationGetSymbol(
    int type,
  ) {
    return _TWCoinTypeConfigurationGetSymbol(
      type,
    );
  }

  static final _TWCoinTypeConfigurationGetSymbol_ptr =
      lookup<NativeFunction<Pointer<Utf8> Function(Int32)>>(
    'TWCoinTypeConfigurationGetSymbol',
  );
  static final _dart_TWCoinTypeConfigurationGetSymbol
      _TWCoinTypeConfigurationGetSymbol = _TWCoinTypeConfigurationGetSymbol_ptr
          .asFunction<_dart_TWCoinTypeConfigurationGetSymbol>();

  /// Returns max count decimal places for minimal coin unit
  ///
  /// \param type A coin type
  /// \return Returns max count decimal places for minimal coin unit
  static int TWCoinTypeConfigurationGetDecimals(
    int type,
  ) {
    return _TWCoinTypeConfigurationGetDecimals(
      type,
    );
  }

  static final _TWCoinTypeConfigurationGetDecimals_ptr =
      lookup<NativeFunction<Int32 Function(Int32)>>(
    'TWCoinTypeConfigurationGetDecimals',
  );
  static final _dart_TWCoinTypeConfigurationGetDecimals
      _TWCoinTypeConfigurationGetDecimals =
      _TWCoinTypeConfigurationGetDecimals_ptr.asFunction<
          _dart_TWCoinTypeConfigurationGetDecimals>();

  /// Returns transaction url in blockchain explorer
  ///
  /// \param type A coin type
  /// \param transactionID A transaction identifier
  /// \return Returns a non-null TWString transaction url in blockchain explorer
  static Pointer<Utf8> TWCoinTypeConfigurationGetTransactionURL(
    int type,
    Pointer<Utf8> transactionID,
  ) {
    return _TWCoinTypeConfigurationGetTransactionURL(
      type,
      transactionID,
    );
  }

  static final _TWCoinTypeConfigurationGetTransactionURL_ptr =
      lookup<NativeFunction<Pointer<Utf8> Function(Int32, Pointer<Utf8>)>>(
    'TWCoinTypeConfigurationGetTransactionURL',
  );
  static final _dart_TWCoinTypeConfigurationGetTransactionURL
      _TWCoinTypeConfigurationGetTransactionURL =
      _TWCoinTypeConfigurationGetTransactionURL_ptr.asFunction<
          _dart_TWCoinTypeConfigurationGetTransactionURL>();

  /// Returns account url in blockchain explorer
  ///
  /// \param type A coin type
  /// \param accountID an Account identifier
  /// \return Returns a non-null TWString account url in blockchain explorer
  static Pointer<Utf8> TWCoinTypeConfigurationGetAccountURL(
    int type,
    Pointer<Utf8> accountID,
  ) {
    return _TWCoinTypeConfigurationGetAccountURL(
      type,
      accountID,
    );
  }

  static final _TWCoinTypeConfigurationGetAccountURL_ptr =
      lookup<NativeFunction<Pointer<Utf8> Function(Int32, Pointer<Utf8>)>>(
    'TWCoinTypeConfigurationGetAccountURL',
  );
  static final _dart_TWCoinTypeConfigurationGetAccountURL
      _TWCoinTypeConfigurationGetAccountURL =
      _TWCoinTypeConfigurationGetAccountURL_ptr.asFunction<
          _dart_TWCoinTypeConfigurationGetAccountURL>();

  /// Returns full name of coin in lower case
  ///
  /// \param type A coin type
  /// \return Returns a non-null TWString, full name of coin in lower case
  static Pointer<Utf8> TWCoinTypeConfigurationGetID(
    int type,
  ) {
    return _TWCoinTypeConfigurationGetID(
      type,
    );
  }

  static final _TWCoinTypeConfigurationGetID_ptr =
      lookup<NativeFunction<Pointer<Utf8> Function(Int32)>>(
    'TWCoinTypeConfigurationGetID',
  );
  static final _dart_TWCoinTypeConfigurationGetID
      _TWCoinTypeConfigurationGetID = _TWCoinTypeConfigurationGetID_ptr
          .asFunction<_dart_TWCoinTypeConfigurationGetID>();

  /// Returns full name of coin
  ///
  /// \param type A coin type
  /// \return Returns a non-null TWString, full name of coin
  static Pointer<Utf8> TWCoinTypeConfigurationGetName(
    int type,
  ) {
    return _TWCoinTypeConfigurationGetName(
      type,
    );
  }

  static final _TWCoinTypeConfigurationGetName_ptr =
      lookup<NativeFunction<Pointer<Utf8> Function(Int32)>>(
    'TWCoinTypeConfigurationGetName',
  );
  static final _dart_TWCoinTypeConfigurationGetName
      _TWCoinTypeConfigurationGetName = _TWCoinTypeConfigurationGetName_ptr
          .asFunction<_dart_TWCoinTypeConfigurationGetName>();
}

typedef _dart_TWCoinTypeConfigurationGetSymbol = Pointer<Utf8> Function(
  int type,
);

typedef _dart_TWCoinTypeConfigurationGetDecimals = int Function(
  int type,
);

typedef _dart_TWCoinTypeConfigurationGetTransactionURL = Pointer<Utf8> Function(
  int type,
  Pointer<Utf8> transactionID,
);

typedef _dart_TWCoinTypeConfigurationGetAccountURL = Pointer<Utf8> Function(
  int type,
  Pointer<Utf8> accountID,
);

typedef _dart_TWCoinTypeConfigurationGetID = Pointer<Utf8> Function(
  int type,
);

typedef _dart_TWCoinTypeConfigurationGetName = Pointer<Utf8> Function(
  int type,
);
