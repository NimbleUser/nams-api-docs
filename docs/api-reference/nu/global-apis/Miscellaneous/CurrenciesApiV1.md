# CurrenciesApiV1 class

Version 1 implementation of a service that deals with currencies.

---
## Methods
### `format(Decimal numberToFormat)` → `String`

Formats the passed in amount to the user preferred currency.

#### Parameters
|Param|Description|
|-----|-----------|
|`numberToFormat` |  Amount to format. |

#### Return

**Type**

String

**Description**

Formatted amount to the user preferred currency.

### `format(Decimal numberToFormat, String isoCode)` → `String`

Formats the passed in amount to the currency for the passed in ISO code.

#### Parameters
|Param|Description|
|-----|-----------|
|`numberToFormat` |  Amount to format. |
|`isoCode` |  ISO Code whose currency will be used to format the amount. |

#### Return

**Type**

String

**Description**

Formatted amount.

### `format(CurrencyFormat formatOption)` → `String`

Formats the passed in amount according to the format option provided.

#### Parameters
|Param|Description|
|-----|-----------|
|`formatOption` |  Holds all the information needed to format the amount. |

#### Return

**Type**

String

**Description**

Formatted amount.

### `getAllConfigured()` → `List<CurrencyBase>`

Gets all configured currencies in the org. The configured currencies are based off of the available exchange rates.

#### Return

**Type**

List<CurrencyBase>

**Description**

All available currencies in the org.

### `getOrgDefaultCurrency()` → `CurrencyBase`

Gets the org's base currency.

#### Return

**Type**

CurrencyBase

**Description**

The org's base currency.

### `getUserDefaultCurrency()` → `CurrencyBase`

Gets the user preferred currency.

#### Return

**Type**

CurrencyBase

**Description**

Returns the user preferred currency.

### `isMultiCurrencyEnabled()` → `Boolean`

Whether multi-currency is enabled for usage.

#### Return

**Type**

Boolean

**Description**

True if multi-currency is enabled, false otherwise.

### `saveCurrentUserPreferredCurrency(String currencyIsoCode)` → `void`

Saves the specified preferred currency to the current user's record, if logged in.

#### Parameters
|Param|Description|
|-----|-----------|
|`currencyIsoCode` |  The ISO Code of the currency preference to save. |

---
