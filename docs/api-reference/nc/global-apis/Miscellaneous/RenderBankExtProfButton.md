# RenderBankExtProfButton class

A button which only renders if the record it is being displayed with is a bank account external payment profile.

---
## Constructors
### `RenderBankExtProfButton(Button.Request buttonRequest)`

Creates the button using the constructor for the RenderBankExtProfButton object.
#### Parameters
|Param|Description|
|-----|-----------|
|`buttonRequest` |  Button request used to create a Button instance. |

---
## Methods
### `getExternalPaymentProfileType()` → `String`

Specifies that we should only render for bank accounts.

#### Return

**Type**

String

**Description**

The type of external payment profile we expect this button to render for. Bank Account.

---
