# HostedCheckoutUrlGenerator class

The wrapper class for generating hosted checkout URL.

---
## Enums
### CustomParams


An enum representation of custom query string params.

### HostedCheckoutType


Enum that represents the different Hosted Checkout types.

### TransactionType


Enum that represents the different Transaction types.

---
## Properties

### `CUSTOM_PARAMS_NAME_BY_CUSTOM_PARAMS` → `String>`

The map of custom params name by its params.

### `HOSTED_CHECKOUT_TYPE_BY_HOSTED_CHECKOUT_TYPE_NAME` → `HostedCheckoutType>`

The map of hosted checkout type by its name.

### `HOSTED_CHECKOUT_TYPE_NAME_BY_HOSTED_CHECKOUT_TYPE` → `String>`

The map of hosted checkout type name by its type.

### `TRANSACTION_TYPE_NAME_BY_TRANSACTION_TYPE` → `String>`

The map of transaction type name by its type.

---
## Methods
### `getHostedCheckoutUrl(HostedCheckoutUrlGeneratorRequest request)` → `HostedCheckoutUrlGeneratorResponse`

Retrieves the hosted checkout URL from hosted checkout class configured on payment gateway.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  An instance of HostedCheckoutUrlGeneratorRequest with the information needed to build the hosted |

#### Return

**Type**

HostedCheckoutUrlGeneratorResponse

**Description**

The HostedCheckoutUrlGeneratorResponse wrapping the result of the result of hosted checkout generate URL

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  is request is null. |

### `newInstance()` → `HostedCheckoutUrlGenerator`

Constructs the new instance of HostedCheckoutUrlGenerator.

#### Return

**Type**

HostedCheckoutUrlGenerator

**Description**

An instance of HostedCheckoutUrlGenerator.

---
