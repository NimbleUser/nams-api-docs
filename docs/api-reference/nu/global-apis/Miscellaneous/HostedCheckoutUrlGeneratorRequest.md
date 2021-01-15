# HostedCheckoutUrlGeneratorRequest class

The wrapper class containing the information needed for generating the hosted checkout url.

---
## Constructors
### `HostedCheckoutUrlGeneratorRequest(HostedCheckoutUrlGenerator.HostedCheckoutType checkoutType,String hostedCheckoutClassName)`

Creates a new instance of HostedCheckoutUrlGeneratorRequest with hosted checkout class string.
#### Parameters
|Param|Description|
|-----|-----------|
|`checkoutType` |  The hosted checkout type. |
|`hostedCheckoutClassName` |  The fully qualified name of hosted checkout url generator class. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any argument is null or if hostedCheckoutClassName is empty. |

---
## Properties

### `Amount` → `Decimal`

The amount to pay.

### `BillingAddress` → `Address`

The billing address of the customer.

### `CCSwipe` → `Boolean`

True to display the card reader button, false otherwise.

### `CustomId` → `String`

The custom Identifier to carry over to the gateway.

### `CustomId2` → `String`

The custom Identifier to carry over to the gateway.

### `DisableSavePayments` → `Boolean`

Whether or not the save payments checkbox should be disabled.

### `FirstName` → `String`

The first name of the billing account.

### `GatewaySettingName` → `String`

The name of gateway setting to use for hosted checkout. If not provided, the first available gateway setting is used.

### `IsSavePaymentsChecked` → `Boolean`

Whether or not the save payments checkbox should be checked.

### `LastName` → `String`

The last name of the billing account.

### `PaymentTemplate` → `String`

The name of the custom hosted payment page template configured on the gateway.

### `ProtectAmount` → `Boolean`

True to protect the Amount and not allow editing, false otherwise.

### `ProtectCustomId` → `Boolean`

True to protect the CustomId, false otherwise.

### `ProtectCustomId2` → `Boolean`

True to protect the CustomId, false otherwise.

### `ReturnUrl` → `String`

The URL of the hosted checkout response page.

### `ShowSavePayments` → `Boolean`

Whether or not the save payments checkbox should be rendered.

### `TransactionType` → `String`

The type of the transaction the hosted request will perform.

---
## Methods
### `getCallableParams()` → `Object>`

Builds and return the params for hosted checkout callable.

#### Return

**Type**

Object>

**Description**

A Map of callable params object by key.

### `getHostedCheckoutClassName()` → `String`

Returns the hosted checkout url generator class name.

#### Return

**Type**

String

**Description**

The hosted checkout url generator class name.

### `getHostedCheckoutType()` → `String`

Returns the hosted checkout type string.

#### Return

**Type**

String

**Description**

The hosted checkout type string.

---
