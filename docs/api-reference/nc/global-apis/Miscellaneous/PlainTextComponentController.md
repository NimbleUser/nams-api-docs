# PlainTextComponentController class

A controller for the Plain Text Component.

---
## Methods
### `getDetail()` → `String`

Overridable method that sets the card detail to use if getUseDescriptionLabel is set to false.

#### Return

**Type**

String

**Description**

String to use for the detail.

### `getHeading()` → `String`

Overridable method that defines the card heading to use if getUseHeadingLabel is set to false.

#### Return

**Type**

String

**Description**

String to use for the heading.

### `getShouldRender()` → `Boolean`

Overridable method which determines if this card should render. It renders in the following scenarios 1.) It is intended to be displayed to the current record type. 2.) The DataSource__c is blank. 3.) The DataSource__c is not blank, and does not return an instance of NullData.

#### Return

**Type**

Boolean

**Description**

True if the card should be rendered, else false.

### `getUseDescriptionLabel()` → `Boolean`

Overridable method that should be set to true if the DescriptionLabel defined on the card settings should be used for the card description.

#### Return

**Type**

Boolean

**Description**

True if there is a DescriptionLabel defined in the card, otherwise false.

### `getUseHeadingLabel()` → `Boolean`

Overridable method that should be set to true if the HeadingLabel defined on the card settings should be used for the card heading.

#### Return

**Type**

Boolean

**Description**

True if there is a HeadingLabel defined in the card, otherwise false.

---
