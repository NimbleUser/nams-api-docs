# CardComponentController class

The base class for controllers for card components. Holds the corresponding Card and provides access to the MessageService.

---
## Properties

### `CardAlerts` → `Alerts`

Accessible instance of Alerts to allow for alerts per-card. @return An instance of Alerts for use by this card component controller.

### `Messages` → `MessageService`

The MessageService instance, allowing communication between components and the page controller.

### `Querier` → `QueryService`

The QueryService instance, allowing components to access records with the specified set of fields queried.

---
## Methods
### `doHandleMessage(Message message)` → `void`

Override to handle events that have been subscribed to.

#### Parameters
|Param|Description|
|-----|-----------|
|`message` |  The message to handle, containing information on the event that occurred. |

### `getCard()` → `Card`

Gets the card corresponding to the component using this controller.

#### Return

**Type**

Card

**Description**

The corresponding card.

### `getConfiguration()` → `String`

Returns the custom configuration for this card.

#### Return

**Type**

String

**Description**

A string representing the custom configuration for this card.

### `getDetail()` → `String`

Overridable method that sets the card detail to use if getUseDescriptionLabel is set to false. Defaults to an empty string.

#### Return

**Type**

String

**Description**

String to use for the detail.

### `getHeading()` → `String`

Overridable method that defines the card heading to use if getUseHeadingLabel is set to false. Defaults to an empty string.

#### Return

**Type**

String

**Description**

String to use for the heading.

### `getShouldEscape()` → `Boolean`

Defines if the detail portion of the card should escape HTML.

#### Return

**Type**

Boolean

**Description**

True if the detail should escape HTML, false otherwise.

### `getShouldRender()` → `Boolean`

Check the active datasource viewing the card and checks to see if it is of a record type for which the card should render.

#### Parameters
|Param|Description|
|-----|-----------|
|`message` |  The message to handle. |

### `getShouldRenderDetail()` → `Boolean`

Overridable method that should return true if the defined Detail Label is not blank or if the getDetail method is overridden to return a detailed description.

#### Return

**Type**

Boolean

**Description**

True if the defined Detail Label is not blank or if getDetail

### `getShouldRenderHeading()` → `Boolean`

Overridable method that should return true if the defined Heading Label is not blank or if the getHeading method is overridden to return a heading.

#### Return

**Type**

Boolean

**Description**

True if the defined Heading Label is not blank or if getHeading

### `getUseDescriptionLabel()` → `Boolean`

Overridable method that should be set to true if the DescriptionLabel defined on the card settings should be used for the card description.

#### Return

**Type**

Boolean

**Description**

True if there is a DescriptionLabel defined in the card, otherwise false.

### `getUseHeadingLabel()` → `Boolean`

Overridable method that should be set to true if the HeadingLabel defined on the card settings should be used for the card heading.

#### Return

**Type**

Boolean

**Description**

True if there is a HeadingLabel defined in the card, otherwise false.

### `initialize()` → `void`

Called after the corresponding card has been set. Override this to perform initialization such as subscribing to events

### `setCard(Card card)` → `void`

Sets the card corresponding to the component using this controller.

#### Parameters
|Param|Description|
|-----|-----------|
|`card` |  The corresponding card. |

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
