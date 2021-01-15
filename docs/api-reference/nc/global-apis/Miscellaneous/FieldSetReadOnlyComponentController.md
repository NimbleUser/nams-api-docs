# FieldSetReadOnlyComponentController class

Controls FieldSetReadOnly.component.

---
## Methods
### `getShouldRender()` → `Boolean`

This method determines whether or not the card should render as normal but with extra conditions. 	It will return false if there are no field set members for the fieldset and if there are no buttons for the 	card. If either are present the method will return true. If neither are present it will return false.

#### Return

**Type**

Boolean

**Description**

True if there are things to be displayed on the card, false otherwise.

### `initialize()` → `void`

Registers additional fields to query with the query service.

---
