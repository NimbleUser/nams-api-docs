# IOptionSelections interface

An interface used to build generic list of options to choose from on the page.

---
## Methods
### `getDescription()` → `String`

Gets the description for the card.

#### Return

**Type**

String

**Description**

String.

### `getHeading()` → `String`

Gets the heading for the card.

#### Return

**Type**

String

**Description**

String.

### `getOptions()` → `List<Option>`

Gets a list of options.

#### Return

**Type**

List<Option>

**Description**

List<Option>.

### `getSelectedMessage()` → `Message`

Gets the message to send when an option has been selected.

#### Return

**Type**

Message

**Description**

Message.

### `getShouldRender()` → `Boolean`

Gets if the card should render.

#### Return

**Type**

Boolean

**Description**

Boolean.

### `toggleSelectedOption(String selectedValue)` → `void`

Sets which option should be selected.

#### Parameters
|Param|Description|
|-----|-----------|
|`selectedValue` |  The value of the Option which should be selected. |

---
