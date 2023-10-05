import './ffi_impl_imports.dart';

/// Represents a derivation path index in C++ with value and hardened flag.
class TWDerivationPathIndex {
  /// Creates a new Index with a value and hardened flag.
  /// Must be deleted with TWDerivationPathIndexDelete after use.
  ///
  /// \param value Index value
  /// \param hardened Indicates if the Index is hardened.
  /// \return A new Index.
  static Pointer<Void> TWDerivationPathIndexCreate(
    int value,
    int hardened,
  ) {
    return _TWDerivationPathIndexCreate(
      value,
      hardened,
    );
  }

  static final _TWDerivationPathIndexCreate_ptr =
      lookup<NativeFunction<Pointer<Void> Function(IntPtr, IntPtr)>>(
    'TWDerivationPathIndexCreate',
  );
  static final _dart_TWDerivationPathIndexCreate _TWDerivationPathIndexCreate =
      _TWDerivationPathIndexCreate_ptr.asFunction<
          _dart_TWDerivationPathIndexCreate>();

  /// Returns numeric value of an Index.
  ///
  /// \param index Index to get the numeric value of.
  static void TWDerivationPathIndexDelete(
    Pointer<Void> path,
  ) {
    return _TWDerivationPathIndexDelete(
      path,
    );
  }

  static final _TWDerivationPathIndexDelete_ptr =
      lookup<NativeFunction<Void Function(Pointer<Void>)>>(
    'TWDerivationPathIndexDelete',
  );
  static final _dart_TWDerivationPathIndexDelete _TWDerivationPathIndexDelete =
      _TWDerivationPathIndexDelete_ptr.asFunction<
          _dart_TWDerivationPathIndexDelete>();

  /// Deletes an Index.
  ///
  /// \param index Index to delete.
  static void TWDerivationPathIndexValue(
    Pointer<Void> path,
  ) {
    return _TWDerivationPathIndexValue(
      path,
    );
  }

  static final _TWDerivationPathIndexValue_ptr =
      lookup<NativeFunction<Void Function(Pointer<Void>)>>(
    'TWDerivationPathIndexValue',
  );
  static final _dart_TWDerivationPathIndexValue _TWDerivationPathIndexValue =
      _TWDerivationPathIndexValue_ptr.asFunction<
          _dart_TWDerivationPathIndexValue>();

  /// Returns hardened flag of an Index.
  ///
  /// \param index Index to get hardened flag.
  /// \return true if hardened, false otherwise.
  static void TWDerivationPathIndexHardened(
    Pointer<Void> path,
  ) {
    return _TWDerivationPathIndexHardened(
      path,
    );
  }

  static final _TWDerivationPathIndexHardened_ptr =
      lookup<NativeFunction<Void Function(Pointer<Void>)>>(
    'TWDerivationPathIndexHardened',
  );
  static final _dart_TWDerivationPathIndexHardened
      _TWDerivationPathIndexHardened = _TWDerivationPathIndexHardened_ptr
          .asFunction<_dart_TWDerivationPathIndexHardened>();

  /// Returns the string description of a derivation path index.
  ///
  /// \param path Index to get the address of.
  /// \return The string description of the derivation path index.
  static Pointer<Utf8> TWDerivationPathIndexDescription(
    Pointer<Void> path,
  ) {
    return _TWDerivationPathIndexDescription(
      path,
    );
  }

  static final _TWDerivationPathIndexDescription_ptr =
      lookup<NativeFunction<Pointer<Utf8> Function(Pointer<Void>)>>(
    'TWDerivationPathIndexDescription',
  );
  static final _dart_TWDerivationPathIndexDescription
      _TWDerivationPathIndexDescription = _TWDerivationPathIndexDescription_ptr
          .asFunction<_dart_TWDerivationPathIndexDescription>();
}

typedef _dart_TWDerivationPathIndexCreate = Pointer<Void> Function(
  int value,
  int hardened,
);

typedef _dart_TWDerivationPathIndexDelete = void Function(
  Pointer<Void> index,
);

typedef _dart_TWDerivationPathIndexValue = void Function(
  Pointer<Void> index,
);

typedef _dart_TWDerivationPathIndexHardened = void Function(
  Pointer<Void> index,
);

typedef _dart_TWDerivationPathIndexDescription = Pointer<Utf8> Function(
  Pointer<Void> index,
);
