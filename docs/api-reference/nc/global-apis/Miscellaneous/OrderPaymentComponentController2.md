# OrderPaymentComponentController2 class

Used for controlling OrderPayment.component and facilitates authorizing credit card payments on znu.Order wrapper instances.

---
## Methods
### `getEntityId()` → `Id`

Gets the znu__Entity__c Id related to the order being authorized. Used to populate the list of credit card issuers.

#### Return

**Type**

Id

**Description**

The Entity Id related to the order being paid for.

### `handleAuthorizationMessage(Message message)` → `void`

Handles an AuthorizePaymentMessage, providing an opportunity to override the functionality.

#### Return

**Type**

void

**Description**

message An instance of AuthorizePaymentMessage.

---
