# RenderExternalPaymentProfileTypeButton class

An abstract button which provides a mechanism for subclasses to specify the type of external payment profile they are expecting a given record to be in order to render.

---
## Constructors
### `RenderExternalPaymentProfileTypeButton(Button.Request buttonRequest)`

Creates the button using the constructor for the RenderExternalPaymentProfileTypeButton object. Not possible to be used as it is abstract, but necessary due to parent class inheritance requirements.
#### Parameters
|Param|Description|
|-----|-----------|
|`buttonRequest` |  Button request used to create a Button instance. |

---
## Methods
### `getExternalPaymentProfileType()` → `String`

Specifies the type of external payment profile we expect this button to render for.

#### Return

**Type**

String

**Description**

The type of external payment profile we expect this button to render for.

---
