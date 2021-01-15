# ToggleComponentController class

Controls the Toggle.component.

---
## Properties

### `IsToggleOn` → `Boolean`

True if the toggle is on, off otherwise.

---
## Methods
### `getDetail()` → `String`

The text that will appear on card description.

#### Return

**Type**

String

**Description**

Disclaimer text to display on the card.

### `getHeading()` → `String`

The text that will appear on card heading.

#### Return

**Type**

String

**Description**

String to use for the card heading.

### `getIsToggleOnByDefault()` → `Boolean`

Whether the toggle is On by default when the card loads.

### `getShouldRenderToggle()` → `Boolean`

Whether the toggle component should render or not. Override if you want to hide the toggle for any reason but want to still want to show the overall card. For example when there are warning messages.

#### Return

**Type**

Boolean

**Description**

True if the toggle should render, false otherwise.

### `getToggleDisplayText()` → `String`

The text that will appear next to the toggle.

#### Return

**Type**

String

**Description**

Text that will appear next to the toggle.

---
