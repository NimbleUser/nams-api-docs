# SubscriptionOrderItemTypeCartSubmitter class

Performs actions when Subscription Order Items are submitted through the Nimble AMS Order Process.

---
## Methods
### `afterOrderItemLinesSaved()` → `OperationResult`

Uses the Subscription Key and Order Item Line Value from the map created in 		beforeOrderItemLineSaved() and populates the Lookup field to the Order Item Line 		record on the Subscription record. The OperationResult() that is returned contains 		information on the result of saving the Subscription records, specifically if the 		operation was successful or not.

#### Return

**Type**

OperationResult

**Description**

An instance of OperationResult().

### `afterOrderItemsSaved()` → `OperationResult`

Saves the Subscription records that were created in the beforeOrderItemSaved() 		method, if any were created. The OperationResult() that is returned contains 		information on the result of saving the Subscription records, specifically if 		the operation was successful or not.

#### Return

**Type**

OperationResult

**Description**

An instance of OperationResult().

### `beforeOrderItemLineSaved(CartItemLine__c cartItemLine, OrderItemLine__c orderItemLineToSave)` → `void`

Grabs the Subscription record from the map created in beforeOrderItemSaved() 		and populates the Lookup field to the Subscription record on the Order Item Line. 		Because the Subscriptions will need to be updated later after the Order Item Line 		is saved, the Order Item Line is put in a map, using the Subscription record as the 		key, and is maintained throughout the cart submission process.

#### Parameters
|Param|Description|
|-----|-----------|
|`cartItemLine` |  The Cart Item Line used to retrieve the Subscription record. |
|`orderItemLineToSave` |  The Order Item Line that has the Subscription Lookup field. |

### `beforeOrderItemSaved(CartItem__c cartItem, OrderItem__c orderItem)` → `OperationResult`

Creates a Subscription record for all Cart Item Lines belonging to the 		Cart Item and Order Item passed in. If a Subscription already exists for the 		Cart Item Line, the existing Subscription record is updated and a new record 		is NOT created. This method puts these Subscription records into a map, using 		the Id of the Cart Item Line as the key and maintained throughout the cart 		submission process. The Order Item parameter is optional - it is not used in 		this implementation of the IOrderItemTypeCartSubmitter.

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

Not implemented; Does not do anything at this time.

#### Parameters
|Param|Description|
|-----|-----------|
|`The` |  CartSubmissionResult instance of the current cart submission. |

---
