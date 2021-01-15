# RenderCreditCardExtProfButton class

A button which only renders if the record it is being displayed with is a credit card external payment profile.

---
## Constructors
### `RenderCreditCardExtProfButton(Button.Request buttonRequest)`

Creates the button using the constructor for the RenderCreditCardExtProfButton object.
#### Parameters
|Param|Description|
|-----|-----------|
|`buttonRequest` |  Button request used to create a Button instance. |

---
## Methods
### `getExternalPaymentProfileType()` → `String`

Specifies that we should only render for credit cards.

#### Return

**Type**

String

**Description**

The type of external payment profile we expect this button to render for. Credit Card.

---
