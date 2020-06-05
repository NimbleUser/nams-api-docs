## PaymentWithPaymentDetailsPlugin class

PaymentsApiPaymentRetriever plugin that populates Payment Details information to the PaymentBase being retrieved.

---
### Constructors
<!-- panels:start -->
<!-- div:left-panel -->
#### `PaymentWithPaymentDetailsPlugin()`

Constructs a new PaymentWithPaymentDetailsPlugin.
<!-- panels:end -->
---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `getFields()` → `Object`

Returns EntityPaymentMethod__r fields.
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `onCreate(Object originalRecord, Object generatedWrapper)` → `void`

Called during PaymentBase creation and populates the PaymentDetails information for the PaymentBase wrapper being built.
##### Parameters
|Param|Description|
|-----|-----------|
|`originalRecord` |  The queried Payment__c record. |
|`generatedWrapper` |  The PaymentBase being built. |

<!-- panels:end -->
---
