# OptionSelectionComponentController class

Controls OptionSelection.component.

---
## Methods
### `doHandleMessage(Message message)` → `void`

Handles messages sent by other components, specifically messages indicating which option was selected. This determines the options that will be available in this sub-list by providing an implementation of IOptionSelection to inform this component.

#### Parameters
|Param|Description|
|-----|-----------|
|`message` |  The message to handle, containing information on the event that occurred. |

### `getDescription()` → `String`

Gets the description for the card.

#### Return

**Type**

String

**Description**

null.

### `getHeading()` → `String`

Gets the heading for the card.

#### Return

**Type**

String

**Description**

String.

### `getOptionSelections()` → `IOptionSelections`

Gets a class implementing IOptionSelection that will represent the choices presented to the user.

#### Return

**Type**

IOptionSelections

**Description**

A class implementing IOptionSelections.

### `getOptions()` → `List<Option>`

The list of options to display in the UI for selection.

#### Return

**Type**

List<Option>

**Description**

A list of options that a user can choose from.

### `getShouldRender()` → `Boolean`

Determines if this card should render.

#### Return

**Type**

Boolean

**Description**

False if optionSelection is null, otherwise uses the

### `initialize()` → `void`

Called after the card is set to subscribe to events. Subscribes to to the OPTIONS_SELECTION_OPTIONS message to determine which options this list should display.

### `selectOption()` → `PageReference`

Selects the chosen option from the UI.

#### Return

**Type**

PageReference

**Description**

Always a null page reference as the method is called asynchronously.

### `submit(UnitOfWork unitOfWork)` → `void`

Override to perform submit logic.

#### Parameters
|Param|Description|
|-----|-----------|
|`unitOfWork` |  A transaction context for DML. |

### `validate()` → `OperationResult`

Override to perform custom validation.

#### Return

**Type**

OperationResult

**Description**

The result of the validation.

---
