# CurrentAccountRenderButton class

A render button that returns the current logged in user's account id when getRecordId is called.

---
## Constructors
### `CurrentAccountRenderButton(Button.Request buttonRequest)`

Creates the button using the constructor for the CurrentAccountRenderButton object.
#### Parameters
|Param|Description|
|-----|-----------|
|`buttonRequest` |  Button request used to create a Button instance. |

---
## Methods
### `getRecordId()` → `Id`

Returns the current Account Id so that queries can be written against it.

#### Return

**Type**

Id

**Description**

The Current User's Account Id.

---
## Inner Classes

### CurrentAccountRenderButton.Constructor class

Constructs a CurrentAccountRenderButton instance.

---
#### Methods
##### `construct(Button.Request buttonRequest)` → `CurrentAccountRenderButton`

Constructs a Button to display on a page.

###### Parameters
|Param|Description|
|-----|-----------|
|`buttonRequest` |  A request for a button instance. |

###### Return

**Type**

CurrentAccountRenderButton

**Description**

CurrentAccountRenderButton Button which has been constructed.

---
