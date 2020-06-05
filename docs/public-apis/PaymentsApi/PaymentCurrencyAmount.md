## PaymentCurrencyAmount class

Represents an Amount and Currency for use with Payments.

---
### Constructors
<!-- panels:start -->
<!-- div:left-panel -->
#### `PaymentCurrencyAmount()`

No-arg constructor.
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `PaymentCurrencyAmount(String currencyIsoCode, Decimal amount)`

Constructs a new PaymentCurrencyAmount from the currency and amount.
##### Parameters
|Param|Description|
|-----|-----------|
|`currencyIsoCode` |  Currency ISO code for the amount. |
|`amount` |  Value of the amount. |

<!-- panels:end -->
---
### Properties

#### `currencyIsoCode` → `String`

The currency ISO code to send to the lightning component.

#### `value` → `Decimal`

The value to send/recieve from the lightning component.

---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `getCurrency()` → `String`

Amount currency ISO code.
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getValue()` → `Decimal`

Amount value.
<!-- panels:end -->
---
