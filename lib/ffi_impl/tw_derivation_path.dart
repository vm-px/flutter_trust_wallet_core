import './ffi_impl_imports.dart';

/// Represents a BIP44 DerivationPath in C++.
class TWDerivationPath {
  /// Creates a new DerivationPath with a purpose, coin, account, change and address.
  /// Must be deleted with TWDerivationPathDelete after use.
  ///
  /// \param purpose The purpose of the Path.
  /// \param coin The coin type of the Path.
  /// \param account The derivation of the Path.
  /// \param change The derivation path of the Path.
  /// \param address hex encoded public key.
  /// \return A new DerivationPath.
  static Pointer<Void> TWDerivationPathCreate(
    int purpose,
    int coin,
    int account,
    int change,
    int address,
  ) {
    return _TWDerivationPathCreate(
      purpose,
      coin,
      account,
      change,
      address,
    );
  }

  static final _TWDerivationPathCreate_ptr = lookup<
      NativeFunction<
          Pointer<Void> Function(IntPtr, IntPtr, IntPtr, IntPtr, IntPtr)>>(
    'TWDerivationPathCreate',
  );
  static final _dart_TWDerivationPathCreate _TWDerivationPathCreate =
      _TWDerivationPathCreate_ptr.asFunction<_dart_TWDerivationPathCreate>();

  /// Creates a new DerivationPath with a string
  ///
  /// \param string The string of the Path.
  /// \return A new DerivationPath or null if string is invalid.
  static Pointer<Void> TWDerivationPathCreateWithString(
    Pointer<Utf8> string,
  ) {
    return _TWDerivationPathCreateWithString(
      string,
    );
  }

  static final _TWDerivationPathCreateWithString_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Utf8>)>>(
    'TWDerivationPathCreateWithString',
  );
  static final _dart_TWDerivationPathCreateWithString
      _TWDerivationPathCreateWithString = _TWDerivationPathCreateWithString_ptr
          .asFunction<_dart_TWDerivationPathCreateWithString>();

  /// Deletes a DerivationPath.
  ///
  /// \param path DerivationPath to delete.
  static void TWDerivationPathDelete(
    Pointer<Void> path,
  ) {
    return _TWDerivationPathDelete(
      path,
    );
  }

  static final _TWDerivationPathDelete_ptr =
      lookup<NativeFunction<Void Function(Pointer<Void>)>>(
    'TWDerivationPathDelete',
  );
  static final _dart_TWDerivationPathDelete _TWDerivationPathDelete =
      _TWDerivationPathDelete_ptr.asFunction<_dart_TWDerivationPathDelete>();

  /// Returns the index component of a DerivationPath.
  ///
  /// \param path DerivationPath to get the index of.
  /// \param index The index component of the DerivationPath.
  /// \return DerivationPathIndex or null if index is invalid.
  void TWDerivationPathIndexAt(
    Pointer<Void> path,
    int index,
  ) {
    return _TWDerivationPathIndexAt(
      path,
      index,
    );
  }

  late final _TWDerivationPathIndexAt_ptr =
      lookup<NativeFunction<Void Function(Pointer<Void>, IntPtr)>>(
    'TWDerivationPathIndexAt',
  );
  late final _dart_TWDerivationPathIndexAt _TWDerivationPathIndexAt =
      _TWDerivationPathIndexAt_ptr.asFunction<_dart_TWDerivationPathIndexAt>();

  /// Returns the indices count of a DerivationPath.
  ///
  /// \param path DerivationPath to get the indices count of.
  /// \return The indices count of the DerivationPath.
  static int TWDerivationPathIndicesCount(
    Pointer<Void> path,
  ) {
    return _TWDerivationPathIndicesCount(
      path,
    );
  }

  static final _TWDerivationPathIndicesCount_ptr =
      lookup<NativeFunction<IntPtr Function(Pointer<Void>)>>(
    'TWDerivationPathIndicesCount',
  );
  static final _dart_TWDerivationPathIndicesCount
      _TWDerivationPathIndicesCount = _TWDerivationPathIndicesCount_ptr
          .asFunction<_dart_TWDerivationPathIndicesCount>();

  /// Returns the purpose enum of a DerivationPath.
  ///
  /// \param path DerivationPath to get the purpose of.
  /// \return DerivationPathPurpose.
  Pointer<Void> TWDerivationPathPurpose(
    Pointer<Void> path,
  ) {
    return _TWDerivationPathPurpose(
      path,
    );
  }

  late final _TWDerivationPathPurpose_ptr =
      lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>)>>(
    'TWDerivationPathPurpose',
  );
  late final _dart_TWDerivationPathPurpose _TWDerivationPathPurpose =
      _TWDerivationPathPurpose_ptr.asFunction<_dart_TWDerivationPathPurpose>();

  /// Returns the coin value of a derivation path.
  ///
  /// \param path DerivationPath to get the coin of.
  /// \return The coin part of the DerivationPath.
  static int TWDerivationPathCoin(
    Pointer<Void> path,
  ) {
    return _TWDerivationPathCoin(
      path,
    );
  }

  static final _TWDerivationPathCoin_ptr =
      lookup<NativeFunction<IntPtr Function(Pointer<Void>)>>(
          'TWDerivationPathCoin');
  static final _dart_TWDerivationPathCoin _TWDerivationPathCoin =
      _TWDerivationPathCoin_ptr.asFunction<_dart_TWDerivationPathCoin>();

  /// Returns the account value of a derivation path.
  ///
  /// \param path DerivationPath to get the account of.
  /// \return the account part of a derivation path.
  static int TWDerivationPathAccount(
    Pointer<Void> path,
  ) {
    return _TWDerivationPathAccount(
      path,
    );
  }

  static final _TWDerivationPathAccount_ptr =
      lookup<NativeFunction<IntPtr Function(Pointer<Void>)>>(
    'TWDerivationPathAccount',
  );
  static final _dart_TWDerivationPathAccount _TWDerivationPathAccount =
      _TWDerivationPathAccount_ptr.asFunction<_dart_TWDerivationPathAccount>();

  /// Returns the change value of a derivation path.
  ///
  /// \param path DerivationPath to get the change of.
  /// \return The change part of a derivation path.
  static int TWDerivationPathChange(
    Pointer<Void> path,
  ) {
    return _TWDerivationPathChange(
      path,
    );
  }

  static final _TWDerivationPathChange_ptr =
      lookup<NativeFunction<IntPtr Function(Pointer<Void>)>>(
    'TWDerivationPathChange',
  );
  static final _dart_TWDerivationPathChange _TWDerivationPathChange =
      _TWDerivationPathChange_ptr.asFunction<_dart_TWDerivationPathChange>();

  /// Returns the address value of a derivation path.
  ///
  /// \param path DerivationPath to get the address of.
  /// \return The address part of the derivation path.
  static int TWDerivationPathAddress(
    Pointer<Void> path,
  ) {
    return _TWDerivationPathAddress(
      path,
    );
  }

  static final _TWDerivationPathAddress_ptr =
      lookup<NativeFunction<IntPtr Function(Pointer<Void>)>>(
    'TWDerivationPathAddress',
  );
  static final _dart_TWDerivationPathAddress _TWDerivationPathAddress =
      _TWDerivationPathAddress_ptr.asFunction<_dart_TWDerivationPathAddress>();

  /// Returns the string description of a derivation path.
  ///
  /// \param path DerivationPath to get the address of.
  /// \return The string description of the derivation path.
  static Pointer<Utf8> TWDerivationPathDescription(
    Pointer<Void> path,
  ) {
    return _TWDerivationPathDescription(
      path,
    );
  }

  static final _TWDerivationPathDescription_ptr =
      lookup<NativeFunction<Pointer<Utf8> Function(Pointer<Void>)>>(
    'TWDerivationPathDescription',
  );
  static final _dart_TWDerivationPathDescription _TWDerivationPathDescription =
      _TWDerivationPathDescription_ptr.asFunction<
          _dart_TWDerivationPathDescription>();
}

typedef _dart_TWDerivationPathCreate = Pointer<Void> Function(
  int purpose,
  int coin,
  int account,
  int change,
  int address,
);

typedef _dart_TWDerivationPathCreateWithString = Pointer<Void> Function(
  Pointer<Utf8> string,
);

typedef _dart_TWDerivationPathIndicesCount = int Function(
  Pointer<Void> path,
);

typedef _dart_TWDerivationPathPurpose = Pointer<Void> Function(
  Pointer<Void> path,
);

typedef _dart_TWDerivationPathIndexAt = void Function(
  Pointer<Void> path,
  int index,
);

typedef _dart_TWDerivationPathDelete = void Function(
  Pointer<Void> path,
);

typedef _dart_TWDerivationPathCoin = int Function(
  Pointer<Void> path,
);

typedef _dart_TWDerivationPathAccount = int Function(
  Pointer<Void> path,
);

typedef _dart_TWDerivationPathChange = int Function(
  Pointer<Void> path,
);

typedef _dart_TWDerivationPathAddress = int Function(
  Pointer<Void> path,
);

typedef _dart_TWDerivationPathDescription = Pointer<Utf8> Function(
  Pointer<Void> path,
);
