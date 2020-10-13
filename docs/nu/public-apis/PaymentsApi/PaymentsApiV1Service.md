## PaymentsApiV1Service class

Manages interactions with the v1 of the PaymentsApi.

---
### Constructors
<!-- panels:start -->
<!-- div:left-panel -->
#### `PaymentsApiV1Service()`

Constructor for new service instance. Used to set service defaults. This should never be called directly.
<!-- panels:end -->
---
### Methods
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
