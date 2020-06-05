## PaymentsWithPaymentLinesPlugins class

Plugin that extends the PaymentsApi to be able to retrieve PaymentLine__c records alongside Payment__c records being queried.

---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `getSubQuery()` → `Q`

Returns a ProductAttributeLinks__r subquery for a Product__c query.
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `onCreate(Object originalRecord, Object generatedWrapper)` → `void`

Modifies the PaymentBase wrapper by setting the payment lines.
##### Parameters
|Param|Description|
|-----|-----------|
|`originalRecord` |  Source SObject from which the wrapper was created. |
|`generatedWrapper` |  The generated wrapper that will be modified. |

<!-- panels:end -->
---
