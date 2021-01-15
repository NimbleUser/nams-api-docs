# DuplicateCompanySearchButton class

Controls the Duplicate Company Search button.

---
## Constructors
### `DuplicateCompanySearchButton(Button.Request buttonRequest)`

Constructs a DuplicateCompanySearchButton.
#### Parameters
|Param|Description|
|-----|-----------|
|`buttonRequest` |  Button.Request to construct this button. |

---
## Methods
### `execute()` → `Action.Result`

Executes the DupeSearchAction action.

#### Return

**Type**

Action.Result

**Description**

An Action.Result.

### `getCanExecuteAction()` → `Boolean`

Determines if this button can execute an action.

#### Return

**Type**

Boolean

**Description**

Always true.

### `getConfirmationMessage()` → `String`

Gets the confirmation message which should be confirmed when getNeedsConfirmation evaluates to true. Uses the default behavior. Overridden to prevent packaging issues.

#### Return

**Type**

String

**Description**

The value of Label.AreYouSure by default.

### `getDataSource()` → `String`

Gets the name of the data source for this button record. Uses the default behavior. Overridden to prevent packaging issues.

#### Return

**Type**

String

**Description**

Data Source for this button record.

### `getIsEnabled()` → `Boolean`

Determines whether or not this button will be enabled. Defaults to true, override in subclass. Enabled buttons show to the user and are clickable. Disabled buttons show to the user and are not clickable. Uses the default behavior. Overridden to prevent packaging issues.

#### Return

**Type**

Boolean

**Description**

True if will be enabled, else false.

### `getLabel()` → `String`

Gets the name of the label for this button record. Uses the default behavior. Overridden to prevent packaging issues.

#### Return

**Type**

String

**Description**

Label for this button record.

### `getNeedsConfirmation()` → `Boolean`

Whether or not a Button should have an "are you sure" confirmation popup when clicked. Default value is false but may be overridden. Uses the default behavior. Overridden to prevent packaging issues.

#### Return

**Type**

Boolean

**Description**

False unless overridden.

### `getPlacementLocation()` → `String`

Gets the Location__c of the record. Uses the default behavior. Overridden to prevent packaging issues.

#### Return

**Type**

String

**Description**

The Location__c of the record.

### `getRecordId()` → `Id`

Get the record Id associated with this button. Uses the default behavior. Overridden to prevent packaging issues.

### `getShouldRender()` → `Boolean`

Determines whether or not this button will be rendered. Defaults to true, override in subclass. Rendered buttons always show to an end user. If false, will not show to the end user. Uses the default behavior. Overridden to prevent packaging issues.

#### Return

**Type**

Boolean

**Description**

True if should be rendered, else false.

### `getUrl()` → `String`

Gets the URL for this button record by passing it through UrlService.getUrlForStub. Uses the default behavior. Overridden to prevent packaging issues.

#### Return

**Type**

String

**Description**

A string that represents the url this button navigates to after being clicked.

### `setRecordId(Id recordId)` → `void`

Set the recordId associated with this button. Uses the default behavior. Overridden to prevent packaging issues.

#### Parameters
|Param|Description|
|-----|-----------|
|`recordId` |  The recordId to use. |

---
