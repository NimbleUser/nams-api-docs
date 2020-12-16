# TermBasedItemDetailsComponentController class

Controls TermBasedItemDetails.component

---
## Methods
### `doHandleMessage(Message message)` → `void`

Handles messages sent by other components.

#### Parameters
|Param|Description|
|-----|-----------|
|`message` |  The message to handle, containing information on the event that occurred. |

### `getItemsForDisplay()` → `List<ItemDisplay>`

List of Items to display.

### `getRecordTypeName()` → `String`

Implement this to set name of the record type the instance of TermBasedItemDetails.component intends to display.

#### Return

**Type**

String

**Description**

The name of the record type this component intends to display.

### `getShouldRenderCard()` → `Boolean`

Determines visibility of this component based upon the presence of items and lines to display.

#### Return

**Type**

Boolean

**Description**

True if this component has items to display, else false.

### `initialize()` → `void`

Initialization handling.

---
