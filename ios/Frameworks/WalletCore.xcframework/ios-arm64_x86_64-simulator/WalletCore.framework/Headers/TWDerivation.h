// SPDX-License-Identifier: Apache-2.0
//
// Copyright © 2017 Trust Wallet.
//
// This is a GENERATED FILE from \registry.json, changes made here WILL BE LOST.
//

#pragma once

#include "TWBase.h"

TW_EXTERN_C_BEGIN

/// Non-default coin address derivation names (default, unnamed derivations are not included).
TW_EXPORT_ENUM()
enum TWDerivation {
    TWDerivationDefault = 0, // default, for any coin
    TWDerivationCustom = 1, // custom, for any coin
    TWDerivationBitcoinSegwit = 2,
    TWDerivationBitcoinLegacy = 3,
    TWDerivationBitcoinTestnet = 4,
    TWDerivationBitcoinTestnetSegwit = 5,
    TWDerivationBitcoinTestnetLegacy = 6,
    TWDerivationLitecoinLegacy = 7,
    TWDerivationLitecoinTestnetLegacy = 8,
    TWDerivationSolanaSolana = 9,
};

TW_EXTERN_C_END
