## PaymentsApiPaymentFactory class

Allows for the creation of PaymentBase objects.

---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `create(SObject record)` → `PaymentBase`

Creates a PaymentBase object from an SObject.
##### Parameters
|Param|Description|
|-----|-----------|
|`record` |  SObject to turn into a PaymentBase. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `create(List<SObject> records)` → `List<PaymentBase>`

Creates PaymentBase objects from SObjects.
##### Parameters
|Param|Description|
|-----|-----------|
|`records` |  SObjects to turn into PaymentBase objects. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `createNew()` → `PaymentBase`

Creates a new, empty PaymentBase object.
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `with(Pluggable plugin)` → `PaymentsApiPaymentFactory`

Extends the PaymentBase being created based on the passed in Pluggable.
##### Parameters
|Param|Description|
|-----|-----------|
|`plugin` |  Pluggable instance with the extension logic. |

<!-- panels:end -->
---
