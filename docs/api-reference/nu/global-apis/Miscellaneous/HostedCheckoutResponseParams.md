# HostedCheckoutResponseParams class

A class representation of hosted checkout response params.

---
## Constructors
### `HostedCheckoutResponseParams(Map<String, String> params)`

Constructs the HostedCheckoutResponseParams object by the hosted checkout response params.
#### Parameters
|Param|Description|
|-----|-----------|
|`params` |  The hosted checkout response params. |

---
## Properties

### `Amount` → `String`

The amount paid using hosted transaction.

### `AuthCode` → `String`

The auth code of a hosted transaction.

### `Avs` → `String`

The AVS of a hosted transaction.

### `CardExpire` → `String`

The Expiry of a card used for hosted transaction.

### `CardPresent` → `Boolean`

The Payment was done via Point Of Sale device.

### `CardType` → `String`

The Card Type used for hosted transaction.

### `FirstName` → `String`

The First Name of the hosted transaction.

### `HostedCheckoutType` → `HostedCheckoutUrlGenerator.`

The hosted checkout type enum from the type response param.

### `InvoiceId` → `String`

The invoice identifier of a hosted transaction.

### `IsApproved` → `Boolean`

True if the hosted transaction is succeeded, False otherwise.

### `LastName` → `String`

The Last Name of the hosted transaction.

### `Message` → `String`

The message of a hosted transaction.

### `PaymentAccount` → `String`

The account to paid in hosted transaction.

### `RRNumber` → `String`

The RR number of a hosted transaction.

### `RecordId` → `Id`

The Id response param.

### `ResponseMode` → `String`

The response mode to handle the response received.

### `Result` → `String`

The Result of hosted transaction.

### `SavePaymentMethod` → `Boolean`

True if BluePay returns 'true / on / 1' in response when selected save the payment method, false otherwise.

### `TargetDomain` → `String`

The hosted checkout target domain for JavaScript response handler.

### `TransactionAddress` → `Address`

The Address returned by hosted transaction

---
## Methods
### `getParam(String key)` → `String`

Returns the param value by its key.

#### Parameters
|Param|Description|
|-----|-----------|
|`key` |  The param key to retrieve the value. |

#### Return

**Type**

String

**Description**

The param value.

---
