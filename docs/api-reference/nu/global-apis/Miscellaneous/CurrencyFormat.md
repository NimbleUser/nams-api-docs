# CurrencyFormat class

Represents a currency format that is being used.

---
## Properties

### `Amount` → `Decimal`

The Amount to be displayed.

### `AutoCurrencyConversionEnabled` → `Boolean`

Returns AutoCurrencyConversionEnabled if specified otherwise true.

### `ExchangeCurrencyIsoCode` → `String`

Returns ExchangeCurrencyIsoCode if specified otherwise gets from User.

### `MultiCurrencyDisplayFormat` → `String`

Returns MultiCurrencyDisplayFormat if specified otherwise uses the default one.

### `ValueIsoCode` → `String`

Returns ValueIsoCode if specified otherwise gets from Org.

---
## Methods
### `newInstance(Decimal amount)` → `CurrencyFormat`

Creates a new instance of the CurrencyFormat class.

#### Parameters
|Param|Description|
|-----|-----------|
|`amount` |  The amount to be formatted. |

#### Return

**Type**

CurrencyFormat

**Description**

A CurrencyFormat instance.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if amount is null. |

---
