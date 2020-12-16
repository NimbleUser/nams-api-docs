# RegistrationTypeComponentController class

Controller for RegistrationType.component.

---
## Methods
### `getHeading()` → `String`

Overridable method that defines the value to plug into the card heading field. If a data source is configured, and does not return null, or an instance of NullData, this returns the value of the label configured on the card, merged with that data. Otherwise, just returns the value of the label itself.

#### Return

**Type**

String

**Description**

String to use for the heading.

### `initialize()` → `void`

Called after the RegistrationType card has been set.

### `submit(UnitOfWork unitOfWork)` → `void`

Sets the Registration Type on the Cart Item for this registration.

---
