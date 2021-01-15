# RenderButton class

A button with a point and click configurable getShouldRender method. WARNING: This has been deprecated. Use ConditionalButton instead.

---
## Constructors
### `RenderButton(Button.Request buttonRequest)`

Creates the button using the constructor for the RenderButton object. WARNING: This has been deprecated. Use ConditionalButton instead.
#### Parameters
|Param|Description|
|-----|-----------|
|`buttonRequest` |  Button request used to create a Button instance. |

---
## Methods
### `getShouldRender()` → `Boolean`

Determines whether or not this button will be rendered. If the data source or record id are empty, returns true. If the data source returns a record with an id of the button's record id, true. Otherwise false. Rendered buttons always show to an end user. If false, will not show to the end user. WARNING: This has been deprecated. Use ConditionalButton instead.

#### Return

**Type**

Boolean

**Description**

True if should be rendered, else false.

---
## Inner Classes

### RenderButton.Constructor class

Constructs a RenderButton instance.

---
#### Methods
##### `construct(Button.Request buttonRequest)` → `RenderButton`

Constructs a Button to display on a page. WARNING: This has been deprecated. Use ConditionalButton instead.

###### Parameters
|Param|Description|
|-----|-----------|
|`buttonRequest` |  A request for a button instance. |

###### Return

**Type**

RenderButton

**Description**

RenderButton Button which has been constructed.

---
