# TransactionGenerator class

This class performs calculations to generate Transaction records based on payments being applied (or no payments being applied) to Order Items or prepayments being applied to an account.

---
## Methods
### `generate(TransactionGenerationRequest request)` → `TransactionGenerationResult`

Generates Transaction records based on the TransactionGenerationRequest. Assumes that all order item lines and payment lines have already been saved to the database before this is called.

#### Parameters
|Param|Description|
|-----|-----------|
|`TransactionGenerationRequest` |  The TransactionGenerationRequest for which to generate Transactions. |

#### Return

**Type**

TransactionGenerationResult

**Description**

The TransactionGenerationResult of the execution.

### `generate(List<TransactionGenerationRequest> requests)` → `List<TransactionGenerationResult>`

Generates Transaction records based on the TransactionGenerationRequests. Assumes that all order item lines and payment lines have already been saved to the database before this is called.

#### Parameters
|Param|Description|
|-----|-----------|
|`requests` |  The TransactionGenerationRequests for which to generate Transactions. |

#### Return

**Type**

List<TransactionGenerationResult>

**Description**

The list of TransactionGenerationResult of the execution.

---
## Inner Classes

### TransactionGenerator.TransactionGenerationRequest class

Holds information that the TransactionGenerator needs in order to correctly generate transactions.

---
#### Properties

##### `batchId` → `Id`

The Id of the Primary Entity's Batch to which Transactions should be applied. If there are order item lines belonging to a secondary entity, or a payment is being applied to a secondary entity, then automatic secondary batches will be used in addition to the primary entity batch specified here.

##### `deletedPaymentAmountByOrderItemIdMap` → `Decimal>`

A map of deleted Payment Amounts keyed to Order Item Ids to properly calculate AR transactions that may need to be created or updated as a result of deleting payment(s).

##### `orderItemLines` → `List<OrderItemLine__c>`

A list of new or updated Order Item Lines for which transactions should be generated.

##### `orderItems` → `List<OrderItem__c>`

List of new or updated Order Items for which transactions should be generated.

##### `paymentLines` → `List<PaymentLine__c>`

A list of Payment Lines that are being applied.

##### `previousOrderItemLines` → `List<OrderItemLine__c>`

A list of Order Item Lines that were purchased in a prior cart. Will be empty unless this request is for an adjustment order.

##### `previousOrderItems` → `List<OrderItem__c>`

A list of Order Items that were purchased in a prior cart. Will be empty unless this request is for an adjustment order.

##### `referenceGroup` → `Integer`

If specified, this is the Reference Group Number that will be used for all new transactions. Otherwise, the next incremental Reference Group Number will be calculated and used.

##### `transactionDate` → `Date`

The Date to be set on any new Transaction records.

---
### TransactionGenerator.TransactionGenerationResult class

Stores the result of the transaction generation DML operation, along with other information pertaining to the transaction request.

---
#### Properties

##### `deferredOrderItemLines` → `List<OrderItemLine__c>`

The list of deferred Order Item Lines pertaining to the TransactionGenerationResult. These order item lines are what drive the update or creation of the deferred schedules.

##### `deferredSchedules` → `List<DeferredSchedule__c>`

The list of Deferred Schedules pertaining to the TransactionGenerationResult. These are the deferred schedules that were updated or created.

##### `result` → `OperationResult`

The OperationResult of the TransactionGenerationResult.

##### `transactions` → `List<Transaction__c>`

The list of Transactions pertaining to the TransactionGenerationResult. These are the new transactions that were generated.

---
