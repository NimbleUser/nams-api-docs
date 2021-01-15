# EventQuestionsCompController class

The controller for the Event Questions component.

---
## Methods
### `enterEditMode()` → `PageReference`

Sets isInEditMode to true and returns a null PageReference.

#### Return

**Type**

PageReference

**Description**

null.

### `exitEditMode()` → `PageReference`

Sets isInEditMode to false and returns a null PageReference.

#### Return

**Type**

PageReference

**Description**

null.

### `exitEditModeAndSubmit()` → `PageReference`

Saves the record being displayed, sets isInEditMode to false and returns a null PageReference.

#### Return

**Type**

PageReference

**Description**

null.

### `getAllowsInPlaceEditing()` → `Boolean`

Determines if the card layout allows inline editing.

#### Return

**Type**

Boolean

**Description**

True if the card layout allows inline editing, else false.

### `getIsInEditMode()` → `Boolean`

Controls when the fields should be shown as editable or read-only.

#### Return

**Type**

Boolean

**Description**

False by default.

### `initialize()` → `void`

Determines the initial value of getIsInEditMode based upon the card layout.

### `submit(UnitOfWork unitOfWork)` → `void`

Saves event answers to cart item then saves cart item using the unit of work.

#### Parameters
|Param|Description|
|-----|-----------|
|`unitOfWork` |  The unit of work instance used to commit changes to the cart item record. |

#### Return

**Type**

void

**Description**

Whether or not this component should be rendered.

### `validate()` → `OperationResult`

Checks that all required questions have answers.

---
