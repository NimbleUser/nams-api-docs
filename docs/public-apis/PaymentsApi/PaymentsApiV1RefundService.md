## PaymentsApiV1RefundService class

Service in charge of payment refunding operations.

---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `generateRefundPayments(List<PaymentBase> sourcePayments)` → `List<PaymentBase>`

Generates refund payments instances for the passed in refunded payments. A refund payment is a payment that reverts a previously made payment by negating its payment amount.
##### Parameters
|Param|Description|
|-----|-----------|
|`sourcePayments` |  Refunded payments for which new refund payments will be created. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `refund(Set<Id> paymentIds)` → `List<RefundResponse>`

Refunds the payments that correspond to the passed in Payment Ids.
##### Parameters
|Param|Description|
|-----|-----------|
|`paymentIds` |  The Ids of the payments to refund. |

<!-- panels:end -->
---
