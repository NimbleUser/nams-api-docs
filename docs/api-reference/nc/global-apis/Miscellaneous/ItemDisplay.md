# ItemDisplay class

Base class for the different sub-classes used to display order items and cart items.

---
## Constructors
### `ItemDisplay(List<SObject> records)`

Class constructor for the ItemDisplay class.
#### Parameters
|Param|Description|
|-----|-----------|
|`records` |  A list of SObjects. |

---
## Properties

### `CustomerId` → `Id`

Id of the customer account.

### `CustomerName` → `String`

String representing the name of the customer account.

### `Id` → `global`

Id of the Item sObject this instance wraps.

### `ItemLines` → `List<ItemLineDisplay>`

The item lines that belong to the item record wrapped by this instance.

### `ItemSObjectType` → `Schema.SObjectType`

The item's SObject type.

---
## Methods
### `buildItemLineDisplay(SObject itemLine)` → `ItemLineDisplay`

Builds a new ItemLineDisplay for the itemLine passed in.

#### Parameters
|Param|Description|
|-----|-----------|
|`itemLine` |  the item line for which to build a display. |

#### Return

**Type**

ItemLineDisplay

**Description**

the ItemLineDisplay object.

### `buildItemLineDisplayObjects(SObject record)` → `List<ItemLineDisplay>`

Builds a list of ItemLineDisplay from the display item SObject record.

#### Parameters
|Param|Description|
|-----|-----------|
|`record` |  The parent SObject to build item lines for. |

#### Return

**Type**

List<ItemLineDisplay>

**Description**

A list of ItemLineDisplay that will display for the parent item.

### `deleteItem()` → `void`

Delete a Cart Item record.

### `getAlerts()` → `Alerts`

Any alerts to be displayed to the current item. The current criteria is as follows: 1.) If the item looks up to an order item which is canceled, returns an already canceled alert. 2.) If the item itself is in a canceled state (no item lines), returns a will be canceled alert. 3.) All other conditions return an empty Alerts instance.

#### Return

**Type**

Alerts

**Description**

An instance of Alerts with zero or more alerts related to this item.

### `getDescription()` → `String`

Implement this method to return the text that should be displayed as the description for a group of products within this item.

#### Return

**Type**

String

**Description**

An empty string unless overridden.

### `getHeading()` → `String`

Implement this method to return the text that should be displayed as the heading for the products grouped within this item.

#### Return

**Type**

String

**Description**

This method returns the value returned by getRecordTypeName() unless overridden.

### `getIdStrings()` → `List<String>`

A list of Id's (as strings) to use as URL parameters for button submission.

#### Return

**Type**

List<String>

**Description**

The list of Id's as strings.

### `getIsEditable()` → `Boolean`

Determines if this item should be editable on the page based upon the following criteria. 1. The item is derived from a znu__CartItem__c record. 2. The item is not being displayed as part of an express payment 3. The znu__IsCommunityEditable__c field is set to true.

#### Return

**Type**

Boolean

**Description**

True if this item is editable, else false.

### `getIsOrderItemDisplay()` → `Boolean`

 @deprecated Deprecated in favor of the more generic, getIsEditable().

### `getItemLines(SObject record)` → `List<SObject>`

Gets a list of all item lines for a given SObject record.

#### Parameters
|Param|Description|
|-----|-----------|
|`record` |  The parent SObject to build item lines for. |

#### Return

**Type**

List<SObject>

**Description**

A list of line item SObject records.

### `getName()` → `String`

Implement to return a custom name for this ItemDisplay. Returns the empty string by default. It is used on the TermBasedItemDetails.component for the individual cart / order item types. e.g. Registration, Membership, etc.

#### Return

**Type**

String

**Description**

The empty string unless overridden.

### `getRecordTypeName()` → `String`

Retrieves the RecordTypeName of this Display object's item.

#### Return

**Type**

String

**Description**

The RecordTypeName as a string.

### `getSupportsQuantityEdits()` → `Boolean`

Determines whether quantity edits are allowed for the record type.

#### Return

**Type**

Boolean

**Description**

True if the record type should allow quantity edits, else false.

### `isComplete()` → `OperationResult`

Checks for order item or cart item completeness. Will validate Merchandise Item Line quantities and that any products without Self-Service enabled are also not Community Editable. Returns success by default for other record types. This method can be overridden to return failure if certain conditions of the cart item are not met, such as not having a primary product selected for a membership cart item.

#### Return

**Type**

OperationResult

**Description**

The result of the validation.

---
