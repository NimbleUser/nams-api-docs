# IPaymentOptionConstructor interface

Interface to construct PaymentOptions.IOption instances. Used by the PaymentOptionsFactory to dynamically construct PaymentOptions.IOption using the constructors defined in the PaymentOption__mdt object.

---
## Methods
### `construct(PaymentOptionsService.Request request)` → `PaymentOptions.IOption`

Constructs a PaymentOptions.IOption instance.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  The PaymentOptionsService.Request that will be used to construct the instance. |

#### Return

**Type**

PaymentOptions.IOption

**Description**

PaymentOptions.IOption instance.

---
