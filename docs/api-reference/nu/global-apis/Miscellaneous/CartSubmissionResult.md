# CartSubmissionResult class

Stores the result of a DML operation, along with other information 		pertaining to the cart submission that resulted in the DML operation.

---
## Properties

### `cartId` → `Id`

Holds the Id of the Cart being submitted.

### `donations` → `List<Donation__c>`

Holds the list of any Donations generated as a result of the Cart submission.

### `eventAnswers` → `List<EventAnswer__c>`

Holds the list of any Event Answers generated as a result of the Cart submission.

### `eventBadges` → `List<EventBadge__c>`

Holds the list of any Event Badges generated as a result of the Cart submission.

### `eventRegistrations` → `List<Registration__c>`

Deprecated. Use eventRegistrations2 instead.

### `eventRegistrations2` → `List<Registration2__c>`

Holds the list of any Registrations generated as a result of the Cart submission.

### `membershipEnrollments` → `List<Membership__c>`

Holds the list of any Memberships generated as a result of the Cart submission.

### `order` → `Order__c`

Holds the Order that corresponds to the Cart being submitted.

### `orderItemLines` → `List<OrderItemLine__c>`

Holds the list of Order Item Lines for all Order Items.

### `orderItems` → `List<OrderItem__c>`

Holds the list of Order Items for the Order.

### `paymentLines` → `List<PaymentLine__c>`

Holds the list of all Payment Lines for all Payments.

### `payments` → `List<Payment__c>`

Holds the list of all Payments for the Order.

### `result` → `OperationResult`

Holds the OperationResult of the BatchExportResult.

### `transactions` → `List<Transaction__c>`

Holds the list of any Transactions generated as a result of the Cart submission.

---
