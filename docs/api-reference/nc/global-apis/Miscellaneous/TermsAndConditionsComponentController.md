# TermsAndConditionsComponentController class

Controls TermsAndConditions.component

---
## Properties

### `TermsAccepted` → `Boolean`

Gets the current state of the Terms Accepted checkbox. @return Boolean for the state of the Terms Accepted checkbox.

---
## Methods
### `getAcceptanceText()` → `String`

Gets text to display next to the checkbox on the card.

#### Return

**Type**

String

**Description**

String for the text to display next to the checkbox.

### `getShouldRender()` → `Boolean`

Checks if the card should render.

#### Return

**Type**

Boolean

**Description**

Boolean indicating if the card should render.

### `getTermsAndConditions()` → `String`

Gets the main text body to display on the Terms And Conditions card.

#### Return

**Type**

String

**Description**

String for the main text body to be displayed on the card.

### `getTitle()` → `String`

Gets the title to display on the Terms And Conditions card.

#### Return

**Type**

String

**Description**

String for the title to be displayed on the card.

### `validate()` → `OperationResult`

Validates that the Terms and Conditions have been accepted.

#### Return

**Type**

OperationResult

**Description**

Successful OperationResult if the Terms and Conditions have been accepted,

---
