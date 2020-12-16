# ConditionalButton class

A button with a point and click configurable getShouldRender method.

---
## Constructors
### `ConditionalButton(Button.Request buttonRequest)`

Creates the button using the constructor for the ConditionalButton object.
#### Parameters
|Param|Description|
|-----|-----------|
|`buttonRequest` |  Button request used to create a Button instance. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if buttonRequest is null. |

---
## Methods
### `getConditional()` → `IConditional`

Returns an instance of the IConditional being used on this button.

#### Return

**Type**

IConditional

**Description**

An instance of DataSourceConditional.

### `getShouldRender()` → `Boolean`

Determines whether or not this button will be rendered based upon the configured IConditional implementation. If none is configured, falls back to the functionality of the DataSourceConditional class.

#### Return

**Type**

Boolean

**Description**

True if should be rendered, else false.

---
## Inner Classes

### ConditionalButton.Constructor class

Constructs a ConditionalButton instance.

---
#### Methods
##### `construct(Button.Request buttonRequest)` → `ConditionalButton`

Constructs a Button to display on a page.

###### Parameters
|Param|Description|
|-----|-----------|
|`buttonRequest` |  A request for a button instance. |

###### Return

**Type**

ConditionalButton

**Description**

ConditionalButton Button which has been constructed.

###### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if buttonRequest is null. |

---
