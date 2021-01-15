# DonationOrderItemTypeCartSubmitter class

Performs actions when Donation Order Items are submitted through the Nimble AMS Order Process.

---
## Methods
### `afterOrderItemLinesSaved()` → `OperationResult`

Uses the Donation Key and Order Item Line Value from the map created in 		beforeOrderItemLineSaved() and populates the Lookup field to the Order Item Line 		record on the Donation. The OperationResult() that is returned contains information 		on the result of saving the Donation records, specifically if the operation was 		successful or not.

#### Return

**Type**

OperationResult

**Description**

an instance of OperationResult()

### `afterOrderItemsSaved()` → `OperationResult`

Saves the Donation records that were created in the beforeOrderItemSaved() method, 			if any were created. 		The OperationResult() that is returned contains information on the result of saving the 			Donation records, specifically if the operation was successful or not.

#### Return

**Type**

OperationResult

**Description**

An instance of OperationResult().

### `beforeOrderItemLineSaved(CartItemLine__c cartItemLine, OrderItemLine__c orderItemLineToSave)` → `void`

Grabs the Donation record from the map created in beforeOrderItemSaved() and 			populates the Lookup field to the Donation record on the Order Item Line. 		Because the Donation records will need to be updated later after the Order Item Line 			is saved, the Order Item Line is put in a map, using the Donation record as the key. 		This method also puts the Cart Item Line in a map, using the Id of the Cart Item Line 			as the key. Both maps are maintained throughout the cart submission process.

#### Parameters
|Param|Description|
|-----|-----------|
|`cartItemLine` |  the Cart Item Line used to retrieve the Donation record |
|`orderItemLineToSave` |  the Order Item Line that has the Donation Lookup field |

#### Return

**Type**

void

**Description**

void

### `beforeOrderItemSaved(CartItem__c cartItem, OrderItem__c orderItem)` → `OperationResult`

Creates a Donation record for all Cart Item Lines belonging to the Cart Item and 			Order Item passed in. 		If a Donation already exists for the Cart Item Line, the existing Donation record is 			updated and a new record is NOT created. 		This method puts these Donation records into a map, using the Id of the Cart Item Line 			as the key, and is maintained throughout the cart submission process. 		The Order Item parameter is optional - it is not used in this implementation of the 			IOrderItemTypeCartSubmitter.

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

Populates the CartSubmissionResult with the new Donation records, if any were created. 		Additionally, all memberships for the Order are returned. 		If the Membership Type Product Link is set on any of the records in the map of Donation Cart 			Item Lines those Donation record's Membership Lookup fields are populated with the 			corresponding Membership record.

#### Parameters
|Param|Description|
|-----|-----------|
|`result` |  The CartSubmissionResult instance of the current cart submission. |

#### Return

**Type**

void

**Description**

void

---
