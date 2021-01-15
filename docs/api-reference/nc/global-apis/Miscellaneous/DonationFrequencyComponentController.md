# DonationFrequencyComponentController class

ButtonGroupComponentController implementation to control the DonationFrequencySelection card type.

---
## Methods
### `doHandleMessage(Message message)` → `void`

Handles messages sent by other components. On receiving the the BundleSavedMessage it updates the CartItem to auto-renew it or not.

#### Parameters
|Param|Description|
|-----|-----------|
|`message` |  The message to handle, containing information on the event that occurred. |

### `getOptions()` → `List<Option>`

The list of options to display in the UI for selection.

#### Return

**Type**

List<Option>

**Description**

A list of options that a user can choose from.

### `getShouldRender()` → `Boolean`

Determines the visibility of this component.

#### Parameters
|Param|Description|
|-----|-----------|
|`True` |  if should be visible, false otherwise. |

### `getShouldRenderButtons()` → `Boolean`

Whether the buttons for this component should render or not. The buttons should only render if the user has stored payment methods.

#### Return

**Type**

Boolean

**Description**

True if the user has stored payment methods, false otherwise.

### `initialize()` → `void`

Called after the card is set to subscribe to events.

---
