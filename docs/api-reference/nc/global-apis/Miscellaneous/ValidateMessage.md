# ValidateMessage class

A Message subclass that is used to notify subscribers to process any validation logic.

---
## Constructors
### `ValidateMessage()`

Constructor for the ValidateMessage that instantiates a ValidateCallback instance.
### `ValidateMessage(ValidateCallback callBack)`

Constructor for the ValidateMessage.
#### Parameters
|Param|Description|
|-----|-----------|
|`callBack` |  The instance of the ValidateCallback that will be used to collect any errors from subscribers. |

---
## Methods
### `getType()` → `Type`

Gets ValidateMessage type.

#### Return

**Type**

Type

**Description**

The ValidateMessage type.

---
