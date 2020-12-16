# VisualforcePage class

This object represents a Visualforce page wrapping a Page__c or Page2__mdt record.

---
## Methods
### `getDescriptionLabel()` → `String`

The name of the label to use for the page description.

#### Return

**Type**

String

**Description**

String The name of the label to use for the page description.

### `getHeaderImage()` → `String`

The name of the header image static resource.

#### Return

**Type**

String

**Description**

String The name of the header image static resource.

### `getHeadingLabel()` → `String`

The name of the label to use for the page heading.

#### Parameters
|Param|Description|
|-----|-----------|
|`pageRecord` |  What this instance will be wrapping. |
|`pageRecord` |  What this instance will be wrapping. |
|`cards` |  A comma-separated list of the cards on the page. |

#### Return

**Type**

String

**Description**

String The name of the label to use for the page heading.

### `getShouldRenderDescription()` → `Boolean`

The description of a page should render if the description label is not blank.

#### Return

**Type**

Boolean

**Description**

True if the description label is not blank, false otherwise.

### `getShouldRenderHeading()` → `Boolean`

The heading of a page should render if the heading label is not blank.

#### Return

**Type**

Boolean

**Description**

True if the heading label is not blank, false otherwise.

---
