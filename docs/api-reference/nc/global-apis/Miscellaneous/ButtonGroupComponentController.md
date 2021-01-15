# ButtonGroupComponentController class

Controls the ButtonGroup.component.

---
## Methods
### `getOptions()` → `List<Option>`

The list of options to display in the UI for selection.

#### Return

**Type**

List<Option>

**Description**

A list of options that a user can choose from.

### `getSelectedOption()` → `Option`

The selected option in the UI.

#### Return

**Type**

Option

**Description**

A Option object.

### `getShouldRender()` → `Boolean`

Whether this component should render or not. The component should not render if there are no options to display.

#### Return

**Type**

Boolean

**Description**

True if there are options to display, false otherwise.

### `getShouldRenderButtons()` → `Boolean`

Whether the buttons should render or not. Override if you want to hide the toggle for any reason but want to still want to show the overall card. For example when there are warning messages.

#### Return

**Type**

Boolean

**Description**

True if the buttons should render, false otherwise.

### `selectOption()` → `PageReference`

Selects the chosen option from the UI.

#### Return

**Type**

PageReference

**Description**

Always a null page reference as the method is called asynchronously.

---
