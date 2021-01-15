# CountMeInButton class

Controls the "Count Me In" donation page button, returning the URL field from the record.

---
## Constructors
### `CountMeInButton(Button.request buttonRequest)`

Creates the button using the constructor for the Button object.
#### Parameters
|Param|Description|
|-----|-----------|
|`buttonRequest` |  Button request used to create a Button instance. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if buttonRequest is null. |

---
## Methods
### `getShouldRender()` → `Boolean`

Determines if this instance of CountMeInButton should be rendered. It should render if getRecord returns a non-null record.

#### Return

**Type**

Boolean

**Description**

True if this CountMeInButton should be rendered, else false.

### `getUrl()` → `String`

Gets the URL this button should go to when a user clicks on it. We utilize the znu__CheckoutURL__c field from the associated znu__Product__c record.

#### Return

**Type**

String

**Description**

The checkout URL for the znu__Product__c record associated with this instance.

### `shouldBypassUrlDisplayLogic()` → `Boolean`

Whether or not a Button should bypass URL display logic in ButtonComponentController.cls

#### Return

**Type**

Boolean

**Description**

True as this button is only intended to be used with custom URL logic.

---
