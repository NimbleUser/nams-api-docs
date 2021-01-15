# Button class

This object represents a button on a card.

---
## Constructors
### `Button(Request buttonRequest)`

Creates an instance of Button for the given request.
#### Parameters
|Param|Description|
|-----|-----------|
|`buttonRequest` |  A request for a button instance. |
|`buttonRequest` |  Button request used to create a Button instance. |

---
## Properties

### `CardDataSourceName` → `String`

Retrieves the name of the data source assigned to the card containing this Button instance.

### `Messages` → `MessageService`

Returns the MessageService instance from the internal CardData instance. If the card data instance has not been set, this will return null.

### `Name` → `String`

Gets the name of the Button__c record this button wraps. @return The name of the Button__c record.

### `Querier` → `QueryService`

The QueryService instance, allowing buttons to access records that have been cached by the QueryService singleton. If the card data instance has not been set, this will return null.

---
## Methods
### `execute()` → `Action.Result`

Executes an Action. If getCanExecuteAction() is false or the action variable is null, a configuration exception is thrown.

#### Return

**Type**

Action.Result

**Description**

The Action.Result returned from the action executing.

### `getCanExecuteAction()` → `Boolean`

Whether or not a Button can execute an action as opposed to linking directly to a url. Default value is false but it may be overridden.

#### Return

**Type**

Boolean

**Description**

False unless overridden.

### `getConfirmationMessage()` → `String`

Gets the confirmation message which should be confirmed when getNeedsConfirmation evaluates to true.

#### Return

**Type**

String

**Description**

The value of Label.AreYouSure by default.

### `getDataSource()` → `String`

Gets the name of the data source for this button record.

#### Return

**Type**

String

**Description**

Data Source for this button record.

### `getIsEnabled()` → `Boolean`

Determines whether or not this button will be enabled. Defaults to true, override in subclass. Enabled buttons show to the user and are clickable. Disabled buttons show to the user and are not clickable. https://developer.mozilla.org/en-US/docs/Web/CSS/:disabled

#### Return

**Type**

Boolean

**Description**

True if will be enabled, else false.

### `getLabel()` → `String`

Gets the name of the label for this button record.

#### Return

**Type**

String

**Description**

Label for this button record.

### `getNeedsConfirmation()` → `Boolean`

Whether or not a Button should have an "are you sure" confirmation popup when clicked. Default value is false but may be overridden.

#### Return

**Type**

Boolean

**Description**

False unless overridden.

### `getPlacementLocation()` → `String`

Gets the Location__c of the record.

#### Return

**Type**

String

**Description**

The Location__c of the record.

### `getRecordId()` → `Id`

Get the record Id associated with this button.

### `getShouldRender()` → `Boolean`

Determines whether or not this button will be rendered. Defaults to true, override in subclass. Rendered buttons always show to an end user. If false, will not show to the end user.

#### Return

**Type**

Boolean

**Description**

True if should be rendered, else false.

### `getUrl()` → `String`

Gets the URL for this button record by passing it through UrlService.getUrlForStub.

#### Return

**Type**

String

**Description**

A string that represents the url this button navigates to after being clicked.

### `initialize()` → `void`

Called after the corresponding button has been set. Override this to perform initialization such as subscribing to events.

### `setRecordId(Id recordId)` → `void`

Set the recordId associated with this button.

#### Parameters
|Param|Description|
|-----|-----------|
|`recordId` |  The recordId to use. |

---
## Inner Classes

### Button.Request class

Request used for button creation.

---
#### Constructors
##### `Request(String name, String label, String url, String location, Boolean isPrimaryAction)`

Constructs a Request object.
###### Parameters
|Param|Description|
|-----|-----------|
|`record` |  A button record that a Button class will be built from. |
|`record` |  A button record that a Button class will be built from. |
|`dataInstance` |  A parameter that allows a CardData instance to be shared with buttons. |
|`record` |  A button record that a Button class will be built from. |
|`dataInstance` |  A parameter that allows a CardData instance to be shared with buttons. |
|`recordArg` |  A button record that a Button class will be built from. |
|`dataInstance` |  A parameter that allows a CardData instance to be shared with buttons. |
|`name` |  The name of the button. |
|`label` |  The name of the label used for button text. |
|`url` |  The url used for this button. |
|`location` |  The location of this button. |
|`isPrimaryAction` |  Indicates whether or not this button is the primary action. |

###### Throws
|Exception|Description|
|---------|-----------|
|`An` |  ArgumentNullException if the button record is null. |
|`An` |  ArgumentNullException if the button record is null. |
|`An` |  ArgumentNullException if the button record is null. |

##### `Request(String name, String label, String url, String location, Boolean isPrimaryAction,String dataSource)`

Constructs a Request object.
###### Parameters
|Param|Description|
|-----|-----------|
|`name` |  The name of the button. |
|`label` |  The name of the label used for button text. |
|`url` |  The url used for this button. |
|`location` |  The location of this button. |
|`isPrimaryAction` |  Indicates whether or not this button is the primary action. |
|`dataSource` |  Name of the data source record. |

###### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any parameter is null. |

---
