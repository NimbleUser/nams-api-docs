## PaymentsApiApplier class

Manages applying payments through the PaymentsApi.

---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `apply(PaymentBase payment)` → `void`

Applies the payment with manually generated lines.
##### Parameters
|Param|Description|
|-----|-----------|
|`payment` |  The PaymentBase object to apply. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `apply(List<PaymentBase> payments)` → `void`

Applies a list of payments with manually generated lines.
##### Parameters
|Param|Description|
|-----|-----------|
|`payments` |  The list of PaymentBase objects to apply. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `apply(PaymentBase payment, PaymentApplierStrategyBase strategy)` → `void`

Applies the payment using the provided strategy.
##### Parameters
|Param|Description|
|-----|-----------|
|`payment` |  The PaymentBase object to apply. |
|`strategy` |  The PaymentApplierStrategyBase to use for generating lines. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `apply(Map<PaymentBase, PaymentApplierStrategyBase> paymentStrategyMap)` → `void`

Applies the payments using the mapped strategies.
##### Parameters
|Param|Description|
|-----|-----------|
|`paymentStrategyMap` |  Map of PaymentBase to PaymentApplierStrategyBase to use for generating lines. |

<!-- panels:end -->
---
