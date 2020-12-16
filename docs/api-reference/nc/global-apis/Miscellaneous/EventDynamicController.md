# EventDynamicController class

Controls the dynamic event page, providing functionality to determine if cards should render as well as heading, and description labels based upon the event.

---
## Methods
### `allowAccess()` → `Boolean`

Identifies if the user has access to the dynamic page.

#### Return

**Type**

Boolean

**Description**

Always returns true.

### `getDescriptionText()` → `String`

Gets the short description of the event to display in the description section.

#### Return

**Type**

String

**Description**

The string short description of the event being displayed.

### `getEvent()` → `znu__Event__c`
### `getFallbackPage()` → `PageReference`

Page where users will be redirected to if, for some reason, the dynamic page can't display correctly.

#### Return

**Type**

PageReference

**Description**

A null PageReference to keep them on the page.

### `getHeadingText()` → `String`

Gets the name of the event to display in the heading section.

#### Return

**Type**

String

**Description**

The string name of the event being displayed.

### `getNoAccessPage()` → `PageReference`

If the allowAccess() method returns false, this is the page the user shall be redirected to.

#### Return

**Type**

PageReference

**Description**

A null PageReference as everyone has access.

### `getShouldRenderCards()` → `Boolean`

Determines if the dynamic page should render cards.

#### Return

**Type**

Boolean

**Description**

True if the event being displayed is not null and is self service enabled. Otherwise, false.

### `getShouldRenderDescription()` → `Boolean`

Determines if the description should render.

#### Return

**Type**

Boolean

**Description**

True in all instances.

### `getShouldRenderHeading()` → `Boolean`

Determines if the heading should render.

#### Return

**Type**

Boolean

**Description**

True in all instances.

### `isEventValidForDisplay()` → `Boolean`
### `onLoad()` → `PageReference`

Gets executed when the dynamic page loads. If the event in the query string is not found, returns the not found page. If the event is found, returns null to load the page.

#### Return

**Type**

PageReference

**Description**

If the event in the query string is not found, returns the not found page. If the event is found,

---
