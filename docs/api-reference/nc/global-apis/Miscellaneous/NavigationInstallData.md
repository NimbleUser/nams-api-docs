# NavigationInstallData class

Builder class for dealing with navigation menu item custom settings. Intended for use in install scripts. This is a data factory, but please use sparingly and NOT in tests (TestData classes exist for that purpose).

---
## Properties

### `Instance` → `NavigationInstallData`

Gets an instance of NavigationInstallData. @return NavigationInstallData instance.

---
## Methods
### `create()` → `NavigationMenuItem`

Default constructor. Calls SObjectInstallData's constructor.

### `forCompanyManagersOnly()` → `NavigationInstallData`

Sets the DisplayForCompanyManagersOnly__c of this navigation menu item to true.

#### Return

**Type**

NavigationInstallData

**Description**

The instance of NavigationInstallData.

### `forLoggedInUsers()` → `NavigationInstallData`

Sets the DisplayForLoggedIn__c of this navigation menu item to true.

#### Return

**Type**

NavigationInstallData

**Description**

The instance of NavigationInstallData.

### `forLoggedOutUsers()` → `NavigationInstallData`

Sets the DisplayForLoggedOut__c of this navigation menu item to true.

#### Parameters
|Param|Description|
|-----|-----------|
|`shouldDisplay` |  Whether or not to display for logged in users. |

#### Return

**Type**

NavigationInstallData

**Description**

The instance of NavigationInstallData.

### `getSObjectType()` → `Schema.SObjectType`

Returns the SObject type for NavigationInstallData builder.

#### Parameters
|Param|Description|
|-----|-----------|
|`tag` |  The tag string to set. |
|`menuName` |  The name of the menu to set. |

#### Return

**Type**

Schema.SObjectType

**Description**

NavigationMenuItem__c.SObjectType

### `inAccountMenu()` → `NavigationInstallData`

Sets the Menu__c of this navigation menu item to NavigationMenuService.ACCOUNT_NAV_PREFIX.

#### Return

**Type**

NavigationInstallData

**Description**

The instance of NavigationInstallData.

### `inGlobalMenu()` → `NavigationInstallData`

Sets the Menu__c of this navigation menu item to NavigationMenuService.GLOBAL_NAV_PREFIX.

#### Return

**Type**

NavigationInstallData

**Description**

The instance of NavigationInstallData.

### `notForCompanyManagersOnly()` → `NavigationInstallData`

Sets the DisplayForCompanyManagersOnly__c of this navigation menu item to false.

#### Return

**Type**

NavigationInstallData

**Description**

The instance of NavigationInstallData.

### `notForLoggedInUsers()` → `NavigationInstallData`

Sets the DisplayForLoggedIn__c of this navigation menu item to false.

#### Return

**Type**

NavigationInstallData

**Description**

The instance of NavigationInstallData.

### `notForLoggedOutUsers()` → `NavigationInstallData`

Sets the DisplayForLoggedOut__c of this navigation menu item to false.

#### Return

**Type**

NavigationInstallData

**Description**

The instance of NavigationInstallData.

### `withCssClass(String cssClass)` → `NavigationInstallData`

Sets the CssClass__c of this navigation menu item.

#### Parameters
|Param|Description|
|-----|-----------|
|`shouldDisplay` |  Whether or not to display for logged out users. |
|`cssClass` |  The CSS class to set. |

#### Return

**Type**

NavigationInstallData

**Description**

The instance of NavigationInstallData.

### `withName(String name)` → `NavigationInstallData`

Sets the Name of this navigation menu item.

#### Parameters
|Param|Description|
|-----|-----------|
|`name` |  The name string to set. |

#### Return

**Type**

NavigationInstallData

**Description**

The instance of NavigationInstallData.

### `withSortOrder(Integer sortOrder)` → `NavigationInstallData`

Sets the SortOrder__c of this navigation menu item.

#### Parameters
|Param|Description|
|-----|-----------|
|`sortOrder` |  The Integer sort order of this menu item. |

#### Return

**Type**

NavigationInstallData

**Description**

The instance of NavigationInstallData.

### `withTitle(String title)` → `NavigationInstallData`

Sets the Title__c of this navigation menu item.

#### Parameters
|Param|Description|
|-----|-----------|
|`title` |  The title string to set. |

#### Return

**Type**

NavigationInstallData

**Description**

The instance of NavigationInstallData.

### `withURL(String url)` → `NavigationInstallData`

Sets the Url__c of this navigation menu item.

#### Parameters
|Param|Description|
|-----|-----------|
|`url` |  The URL string to set. |

#### Return

**Type**

NavigationInstallData

**Description**

The instance of NavigationInstallData.

---
