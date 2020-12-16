# MiscellaneousOrderItemTypeCartSubmitter class

Performs actions when Miscellaneous Order Items are submitted through 			the Nimble AMS Order Process.

---
## Methods
### `afterOrderItemLinesSaved()` → `OperationResult`

Uses the Miscellaneous Key and Order Item Line Value from the 		map created in beforeOrderItemLineSaved() and populates the Lookup 		field to the Order Item Line record on the Miscellaneous record. The 		OperationResult() that is returned contains information on the result 		of saving the Miscellaneous records, specifically if the operation was 		successful or not.

#### Return

**Type**

OperationResult

**Description**

An instance of OperationResult().

### `afterOrderItemsSaved()` → `OperationResult`

Saves the Miscellaneous records that were created in the 			beforeOrderItemSaved() method, if any were created. 		The OperationResult() that is returned contains information on the 			result of saving the Miscellaneous records, specifically if the 			operation was successful or not.

#### Return

**Type**

OperationResult

**Description**

An instance of OperationResult().

### `beforeOrderItemLineSaved(CartItemLine__c cartItemLine, OrderItemLine__c orderItemLineToSave)` → `void`

Grabs the Miscellaneous record from the map created in 			beforeOrderItemSaved() and populates the Lookup field to the 			Miscellaneous record on the Order Item Line. 		Because the Miscellaneous records will need to be updated later 			after the Order Item Line is saved, the Order Item Line is 			put in a map, using the Miscellaneous record as the key, 			and is maintained throughout the cart submission process.

#### Parameters
|Param|Description|
|-----|-----------|
|`cartItemLine` |  The Cart Item Line used to retrieve the Miscellaneous record. |
|`orderItemLineToSave` |  the Order Item Line that has the Miscellaneous Lookup field. |

#### Return

**Type**

void

**Description**

void

### `beforeOrderItemSaved(CartItem__c cartItem, OrderItem__c orderItem)` → `OperationResult`

Creates a Miscellaneous record for all Cart Item Lines belonging to 			the Cart Item and Order Item passed in. 		If a Miscellaneous already exists for the Cart Item Line, the existing 			Miscellaneous record is updated and a new record is NOT created. 		This method puts these Miscellaneous records into a map, using the Id of the 			Cart Item Line as the key, and is maintained throughout the cart 			submission process.. 		The Order Item parameter is optional - it is not used in this implementation 			of the IOrderItemTypeCartSubmitter.

#### Parameters
|Param|Description|
|-----|-----------|
|`cartItem` |  the Cart Item that is being converted into an Order Item. |
|`orderItem` |  the Order Item that the Cart Item is being converted to. |

#### Return

**Type**

OperationResult

**Description**

A new instance of OperationResult().

### `populateCartSubmissionResult(CartSubmissionResult result)` → `void`

Not implemented; does not do anything at this time.

#### Parameters
|Param|Description|
|-----|-----------|
|`result` |  The CartSubmissionResult instance of the current cart submission. |

---
