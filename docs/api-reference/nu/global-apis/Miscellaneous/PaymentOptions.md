# PaymentOptions class

Base class to deal with Payment Options.

---
## Constructors
### `PaymentOptions()`

Parameterless constructor.
---
## Methods
### `getPaymentOptions(PaymentOptionsService.Request request)` → `List<IOption>`

Returns the available options for the current request.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  The PaymentOptionsService.Request that will be used to gather the available payment options. |

#### Return

**Type**

List<IOption>

**Description**

List of PaymentOptions.IOption implementations for each payment option.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if the request is null. |

### `getSelectedPaymentOption(PaymentOptionsService.Request request)` → `IOption`

Returns the selected payment option for the cart in the current request.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  The PaymentOptionsService.Request that will be used to get the selected payment option. |

#### Return

**Type**

IOption

**Description**

PaymentOptions.IOption implementation that represents the selected payment option.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if the request is null. |
|`NUException` |  if the cart in the request is not found. |

---
## Inner Classes

### PaymentOptions.IOption interface

Interface that should be used when implementing a payment option.

---
#### Methods
##### `getIsAvailable()` → `Boolean`

Identifies if the payment option is available.

###### Return

**Type**

Boolean

**Description**

Boolean indicating if the payment option is available.

##### `getMessage()` → `String`

Message for the payment option.

###### Return

**Type**

String

**Description**

String with the message to use for the payment option.

##### `getName()` → `String`

Name of the payment option.

###### Return

**Type**

String

**Description**

String with the name of the payment option.

---
