## PaymentsApiService class

Manages interactions with the PaymentsApi.

---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `process(PaymentBase paymentObject)` → `void`

Runs the passed in PaymentBase through all of the registered IPaymentProcessor.
##### Parameters
|Param|Description|
|-----|-----------|
|`paymentObject` |  The PaymentBase object to process. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `process(List<PaymentBase> paymentsToProcess)` → `void`

Runs the passed in PaymentBase objects through all of the registered IPaymentProcessor.
##### Parameters
|Param|Description|
|-----|-----------|
|`paymentsToProcess` |  The PaymentBase objects to process. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `registerProcessor(IPaymentProcessor processor, Set<String> paymentTypes)` → `void`

Registers a new IPaymentProcessor for it to be used process PaymentBase objects.
##### Parameters
|Param|Description|
|-----|-----------|
|`processor` |  The IPaymentProcessor to register. |
|`paymentTypes` |  The payment types the processor supports. |

<!-- panels:end -->
---
