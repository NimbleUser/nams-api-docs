# NavigationMenuItem class

Represents a NavigationMenuItem__c custom setting. Specifically for install data.

---
## Methods
### `getAccessControlSetting()` → `String`

AccessControlSetting__mdt lookup on the record this object wraps. Null is returned for non-MDT implementation(s).

#### Return

**Type**

String

**Description**

A String representation of an AccessControlSetting__mdt lookup Id.

### `getCssClass()` → `String`

CSS Class set on the record this object wraps. If none is set, a blank String is returned.

#### Return

**Type**

String

**Description**

A String CSS class.

### `getId()` → `Id`

Retrieves the Id of the wrapped navigation menu item.

#### Parameters
|Param|Description|
|-----|-----------|
|`navigationMenuItem` |  The custom setting record to wrap. |
|`navigationMenuItem` |  The custom metadata record to wrap. |
|`communityNavigationLink` |  The custom metadata record to wrap. |

#### Return

**Type**

Id

**Description**

The id.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if the navigationMenuItem parameter is null. |
|`ArgumentNullException` |  if the navigationMenuItem parameter is null. |
|`ArgumentNullException` |  if the communityNavigationLink parameter is null. |

### `getMenu()` → `String`

Returns the name of the menu this navigation menu item is presented on.

#### Return

**Type**

String

**Description**

The name of a menu as a string.

### `getName()` → `String`

Retrieves the name of the wrapped navigation menu item.

#### Return

**Type**

String

**Description**

The name as a string.

### `getRawUrl()` → `String`

Gets the URL for this Item as stored on the record.

#### Return

**Type**

String

**Description**

The raw URL.

### `getShouldDisplayForCompanyManagersOnly()` → `Boolean`

Returns whether or not the wrapped navigation menu item should display for company managers only.

#### Return

**Type**

Boolean

**Description**

A boolean value -- true if the item should display for company managers only, false otherwise.

### `getShouldDisplayForLoggedInUsers()` → `Boolean`

Returns whether or not the wrapped navigation menu item should display for logged in users.

#### Return

**Type**

Boolean

**Description**

A boolean value -- true if the item should display for logged in users, false otherwise.

### `getShouldDisplayForLoggedOutUsers()` → `Boolean`

Returns whether or not the wrapped navigation menu item should display for logged out users.

#### Return

**Type**

Boolean

**Description**

A boolean value -- true if the item should display for logged out users, false otherwise.

### `getSortOrder()` → `Integer`

Returns the sort order value of the wrapped navigation menu item.

#### Return

**Type**

Integer

**Description**

The sort order as an integer.

### `getTarget()` → `String`

Target set on the record this object wraps. If none is set, a blank String is returned.

#### Return

**Type**

String

**Description**

A String anchor target

### `getTitle()` → `String`

Retrieves the Title__c of the wrapped navigation menu item.

#### Return

**Type**

String

**Description**

The title as a string.

### `getUrl()` → `String`

Gets the URL for this Item by calling UrlService.cls with a stub. For a login item, the URL will include a redirect to the current page.

#### Return

**Type**

String

**Description**

The full URL for linking.

### `getVisibilitySetting()` → `String`

Retrieves the VisibilitySetting__c of the wrapped navigation menu item.

#### Return

**Type**

String

**Description**

The visibility setting as a string.

---
