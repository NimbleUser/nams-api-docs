## PaymentsApiV1Applier class

Applies payments and generates transactions for the applied payments.

---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `apply(Map<PaymentBase, PaymentApplierStrategyBase> paymentStrategyMap)` → `void`

Applies the payment using the mapped strategy. After creating the lines, payments are saved and transactions are generated.
##### Parameters
|Param|Description|
|-----|-----------|
|`paymentStrategyMap` |  Map of PaymentBase to PaymentApplierStrategyBase to use for generating lines. |

##### Throws
|Exception|Description|
|---------|-----------|
|`PaymentsApiException` |  if any validation errors. |

<!-- panels:end -->
---
