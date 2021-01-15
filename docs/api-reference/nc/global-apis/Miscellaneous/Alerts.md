# Alerts class

Allows any class to add alerts to be displayed on cards.

---
## Enums
### AlertType


Allows alerts to specify the type to render.

---
## Methods
### `add(Alert alertToAdd)` → `void`

Adds the specified alert.

#### Parameters
|Param|Description|
|-----|-----------|
|`alertToAdd` |  The alert to add. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if alertToAdd is null. |

### `clear()` → `void`

Clears all alerts.

### `getAll()` → `List<Alert>`

Gets all alerts.

#### Return

**Type**

List<Alert>

**Description**

A List<Alert> containing all alerts.

### `getByType(AlertType type)` → `List<Alert>`

Gets a list of alerts by AlertType.

#### Return

**Type**

List<Alert>

**Description**

A List<Alert> containing all the alerts for the specified AlertType.

### `getErrors()` → `List<Alert>`

A shortcut to retrieve all AlertType.ERROR alerts.

#### Return

**Type**

List<Alert>

**Description**

A List<Alert> of all alerts of AlertType.ERROR.

### `getHasAlerts()` → `Boolean`

Determines if there are alerts available for display.

#### Return

**Type**

Boolean

**Description**

True if there are alerts, else false.

### `getInfos()` → `List<Alert>`

A shortcut to retrieve all AlertType.INFO alerts.

#### Return

**Type**

List<Alert>

**Description**

A List<Alert> of all alerts of AlertType.INFO.

### `getSuccesses()` → `List<Alert>`

A shortcut to retrieve all AlertType.SUCCESS alerts.

#### Return

**Type**

List<Alert>

**Description**

A List<Alert> of all alerts of AlertType.SUCCESS.

### `getWarnings()` → `List<Alert>`

A shortcut to retrieve all AlertType.WARNING alerts.

#### Return

**Type**

List<Alert>

**Description**

A List<Alert> of all alerts of AlertType.WARNING.

### `newInstance()` → `Alerts`

Static accessor for constructing a new instance of Alerts.

#### Return

**Type**

Alerts

**Description**

A new instance of Alerts.

---
## Inner Classes

### Alerts.Alert class

Determines the type and message for a given alert being displayed on a card.

---
#### Constructors
##### `Alert(AlertType type, String message)`

Constructs an Alert instance with the specified type and message.
###### Parameters
|Param|Description|
|-----|-----------|
|`type` |  The AlertType for the Alert being constructed. |
|`message` |  The message for the Alert being constructed. |

###### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if type is null. |
|`ArgumentNullException` |  if message is null or blank. |

---
#### Methods
##### `getMessage()` → `String`

Gets the message set for this Alert.

###### Return

**Type**

String

**Description**

The message set for this Alert.

##### `getType()` → `AlertType`

Gets the type set for this Alert.

###### Return

**Type**

AlertType

**Description**

The type set for this Alert.

##### `getTypeClass()` → `String`

Gets Bootstrap friendly CSS class based upon the set AlertType.

###### Return

**Type**

String

**Description**

A Bootstrap friendly CSS class based upon the set AlertType.

---
