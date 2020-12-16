# PaymentService class

Handles requests for payment.

---
## Properties

### `Instance` → `PaymentService`

Maintains an instance of the PaymentService.

---
## Methods
### `process(PaymentServiceRequest request)` → `OperationResult`

Processes a single payment request.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  A payment request. |

#### Return

**Type**

OperationResult

**Description**

The result of the operation.

### `processRefund(Set<Id> paymentIds)` → `List<Payment__c>`

Refunds one or more payment records with their configured gateway. Successful Payment records are saved.

#### Parameters
|Param|Description|
|-----|-----------|
|`paymentIds` |  A Set of Ids for Payment__c records to refund. |

#### Return

**Type**

List<Payment__c>

**Description**

A List<Payment__c> containing all the refund details.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if paymentsToRefund is null. |

---
