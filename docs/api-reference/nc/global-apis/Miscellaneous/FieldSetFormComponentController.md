# FieldSetFormComponentController class

Controls FieldSetForm.component.

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

### `getIsEdit()` → `Boolean`

Controls when the fields should be shown as editable or read-only. Override this method to implement custom logic.

#### Return

**Type**

Boolean

**Description**

True by default.

### `getShouldRender()` → `Boolean`

Determines if the card should render

#### Return

**Type**

Boolean

**Description**

True if

### `initialize()` → `void`

Registers additional fields to query using a field set.

### `submit(UnitOfWork unitOfWork)` → `void`

Saves the record if card is not in edit mode.

#### Parameters
|Param|Description|
|-----|-----------|
|`unitOfWork` |  The transaction context that the saving occurs within. |

---
