# ItemDisplayComponentController class

This class is used to retrieve and interact with instances of the ItemDisplay class.

---
## Constructors
### `ItemDisplayComponentController()`

Constructs an instance of ItemDisplayComponentController.
---
## Properties

### `ItemLineToDelete` → `String`

The Id of the item line being deleted, stored as a string.

### `ItemLineToDeleteParent` → `String`

The Id of the parent of the item line being deleted, stored as a string.

### `ItemLineToUpdate` → `String`

The Id of the item line being updated, stored as a string.

---
## Methods
### `deleteItemLine()` → `PageReference`

Delete a Cart Item Line.

#### Return

**Type**

PageReference

**Description**

A null PageReference. We want the page to update /without/ a full refresh, after all!

### `doHandleMessage(Message message)` → `void`

Handles messages that this component is subscribed to.

#### Parameters
|Param|Description|
|-----|-----------|
|`message` |  The message instance that this component will respond to. |

### `getItems()` → `List<ItemDisplay>`

Retrieves records via the querier and wraps them in the ItemDisplay wrapper class. Override to change this behavior.

#### Return

**Type**

List<ItemDisplay>

**Description**

A list of records wrapped as ItemDisplay objects.

### `getRecordTypeName()` → `String`

Implement to specify the record type of the Cart Item and Order Item records that will be displayed by this component.

#### Return

**Type**

String

**Description**

The record type name as a string.

### `getShouldRender()` → `Boolean`

Whether or not the managed item(s) should be displayed. By default just checks if the querier has any results. Override to change this behavior.

#### Return

**Type**

Boolean

**Description**

True if the item(s) managed by this controller should display. False otherwise.

### `initialize()` → `void`

Initialization handling.

### `submit(UnitOfWork uow)` → `void`

Passes a unit of work into the CardComponentController submit class. Override to change or customize this behavior.

### `updateItemLineQuantity()` → `PageReference`

Update the quantity of a Cart Item Line. Before updating, the quantities are validated and any errors are displayed to the user before we attempt DML.

#### Return

**Type**

PageReference

**Description**

A null PageReference. We want the page to update /without/ a full refresh, after all!

### `validate()` → `OperationResult`

Returns an error if an item display is not marked as completed.

#### Return

**Type**

OperationResult

**Description**

The result of the validation.

---
