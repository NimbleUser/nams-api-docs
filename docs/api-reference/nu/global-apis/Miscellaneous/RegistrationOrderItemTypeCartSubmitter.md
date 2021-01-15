# RegistrationOrderItemTypeCartSubmitter class

Performs actions when Registration Order Items are submitted through 		the Nimble AMS Order Process.

---
## Methods
### `afterOrderItemLinesSaved()` → `OperationResult`

Creates and inserts all Registration and Event-related information 			including Registration records, Event Answers, and Event Badges. 		If a Registration already exists for a Cart Item, the existing Registration 			record is updated and a new record is NOT created. The same is true for 			Event Answers and Event Badges. 		The returned OperationResult() contains information on the result of saving 			the Registration and Event-related records, specifically if the 			operations were successful or not.

#### Return

**Type**

OperationResult

**Description**

An instance of OperationResult().

### `afterOrderItemsSaved()` → `OperationResult`

Does not do anything at this time.

#### Return

**Type**

OperationResult

**Description**

An instance of OperationResult().

### `beforeOrderItemLineSaved(CartItemLine__c cartItemLine, OrderItemLine__c orderItemLineToSave)` → `void`

Puts the Order Item Line records into a map, using the Id of the Cart 		Item Line as the key, and is maintained throughout the cart submission process.

#### Parameters
|Param|Description|
|-----|-----------|
|`cartItemLine` |  The Cart Item Line used to retrieve the Subscription record. |
|`orderItemLineToSave` |  The Order Item Line that has the Subscription Lookup field. |

#### Return

**Type**

void

**Description**

void

### `beforeOrderItemSaved(CartItem__c cartItem, OrderItem__c orderItem)` → `OperationResult`

Puts the Registration Cart Item into a List of Registration Cart Items. 		Also puts the Order Item records into a map, using the Id of the Cart Item as the key. 		Both are maintained throughout the cart submission process.

#### Parameters
|Param|Description|
|-----|-----------|
|`cartItem` |  The Cart Item that is being converted into an Order Item. |
|`orderItem` |  The Order Item that the Cart Item is being converted to. |

#### Return

**Type**

OperationResult

**Description**

A new instance of OperationResult().

### `populateCartSubmissionResult(CartSubmissionResult result)` → `void`

Populates the CartSubmissionResult with the new Registration, 		Event Answer, and Event Badge records, if any were created.

#### Parameters
|Param|Description|
|-----|-----------|
|`result` |  The CartSubmissionResult instance of the current cart submission. |

---
