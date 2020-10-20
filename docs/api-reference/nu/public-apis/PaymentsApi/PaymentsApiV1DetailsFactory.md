## PaymentsApiV1DetailsFactory class

PaymentsApiDetailsFactory implementation for the V1 of the PaymentsApi.

---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `create(String paymentType, Map<String, Object> data)` → `PaymentDetailsBase`

Creates a new PaymentDetailsBase object from the provided type and data.
##### Parameters
|Param|Description|
|-----|-----------|
|`paymentType` |  The type of payment details to construct. |
|`data` |  The data specific to the payment type. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `create(SObject paymentRecord)` → `PaymentDetailsBase`

Creates a new PaymentDetailsBase object from a provided record.
##### Parameters
|Param|Description|
|-----|-----------|
|`paymentRecord` |  The record from which to create the PaymentDetailsBase. |

<!-- panels:end -->
---
