# BillMeDetailsComponentController class

Controls the Bill Me Details Card

---
## Methods
### `doHandleMessage(Message message)` → `void`

When a PaymentOptionSelectedMessage is received, identifies if the card should render or not.

#### Parameters
|Param|Description|
|-----|-----------|
|`message` |  Message implementation to handle. |

### `getShouldRender()` → `Boolean`

Identifies if the card should render.

#### Return

**Type**

Boolean

**Description**

True if Bill Me was selected as the payment option, false otherwise.

### `initialize()` → `void`

Subscribes to the PaymentOptionSelectedMessage to handle hiding and showing this card when Bill Me is selected or deselected.

### `submit(UnitOfWork unitOfWork)` → `void`

Process the Bill Me Request, and if successful save the changes made, if any, to the Cart's Bill Me Detail fieldset fields.

#### Parameters
|Param|Description|
|-----|-----------|
|`unitOfWork` |  The Unit of Work to handle DML operations with. |

### `validate()` → `OperationResult`

Determines whether the user has entered the required fields on the BillMeAddress fieldset.

#### Return

**Type**

OperationResult

**Description**

A successful OperationResult if the fields in the BillMeAddress

---
