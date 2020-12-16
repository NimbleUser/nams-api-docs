# MembershipOrderItemTypeCartSubmitter class

Performs actions when Membership Order Items are submitted through the Nimble AMS Order Process.

---
## Methods
### `afterOrderItemLinesSaved()` → `OperationResult`

Uses the Membership Key and Order Item Line Value from the map 		created in beforeOrderItemLineSaved() and populates the Lookup field to 		the Order Item Line record on the Membership. The OperationResult() that 		is returned contains information on the result of saving the Membership 		records, specifically if the operation was successful or not.

#### Return

**Type**

OperationResult

**Description**

An instance of OperationResult().

### `afterOrderItemsSaved()` → `OperationResult`

Saves the Membership records that were created in the 		beforeOrderItemSaved() method, if any were created. 		Additionally, the Customer Accounts are updated to reflect 			the new Join On values if they are different. 		The OperationResult() that is returned contains information on the 			result of saving the Membership and Account records, specifically 			if the operations were successful or not.

#### Return

**Type**

OperationResult

**Description**

An instance of OperationResult().

### `beforeOrderItemLineSaved(CartItemLine__c cartItemLine, OrderItemLine__c orderItemLineToSave)` → `void`

Grabs the Membership record from the map created in beforeOrderItemSaved() 		and populates the Lookup field to the Membership record on the Order Item Line. 		Additionally, the Lookup field to the Membership Type Product Link record on the 			Order Item Line is also populated from the value set on the Cart Item Line. 		Because the Membership records will need to be updated later after the Order Item 			Line is saved, the Order Item Line is put in a map, using the Membership record 			as the key, but only if the Order Item Line is assigned the Primary Membership 			Type Product Link. The map is maintained throughout the cart submission process.

#### Parameters
|Param|Description|
|-----|-----------|
|`cartItemLine` |  The Cart Item Line used to retrieve the Membership record. |
|`orderItemLineToSave` |  The Order Item Line that has the Membership Lookup field. |

#### Return

**Type**

void

**Description**

void

### `beforeOrderItemSaved(CartItem__c cartItem, OrderItem__c orderItem)` → `OperationResult`

Creates a Membership record for the Cart Item and Order Item passed in. 		If a Membership already exists for the Cart Item, the existing Membership record 			is updated and a new record is NOT created. 		This method puts these Membership records into a map, using the Id of the Cart 			Item as the key, and is maintained throughout the cart submission process. 		The Order Item parameter is optional - it is not used in this implementation of 			the IOrderItemTypeCartSubmitter.

#### Parameters
|Param|Description|
|-----|-----------|
|`cartItem` |  The Cart Item that is being converted into an Order Item |
|`orderItem` |  The Order Item that the Cart Item is being converted to |

#### Return

**Type**

OperationResult

**Description**

A new instance of OperationResult().

### `populateCartSubmissionResult(CartSubmissionResult result)` → `void`

Populates the CartSubmissionResult with the new Membership records, if any were created.

#### Parameters
|Param|Description|
|-----|-----------|
|`result` |  The CartSubmissionResult instance of the current cart submission. |

---
