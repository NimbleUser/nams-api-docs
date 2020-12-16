# NavigationMenuService class

Utility methods for dealing with NavigationMenuItem__c custom setting objects.

---
## Properties

### `Instance` → `NavigationMenuService`

Gets an instance of NavigationMenuService. @return NavigationMenuService instance.

---
## Methods
### `getAll()` → `List<NavigationMenuItem>`

Gets all NavigationMenuItems.

#### Return

**Type**

List<NavigationMenuItem>

**Description**

List<NavigationMenuItem> of all navigation menu items.

### `getAll(Id communityId)` → `List<NavigationMenuItem>`

Gets all NavigationMenuItems for a specific community. @communityId The Id of the community to limit the result set to.

#### Return

**Type**

List<NavigationMenuItem>

**Description**

List<NavigationMenuItem> of all navigation menu items.

### `getById(Id navigationMenuItemId)` → `NavigationMenuItem`

Gets a NavigationMenuItem__c by id.

#### Parameters
|Param|Description|
|-----|-----------|
|`communityId` |  The Id of the community to return menus for. |
|`menuName` |  The menu name to search on. |
|`menuName` |  The menu name to search on. |
|`communityId` |  The community Id to filter results to. |
|`navigationMenuItemId` |  The Id of the NavigationMenuItem__c to retrieve. |

#### Return

**Type**

NavigationMenuItem

**Description**

A single NavigationMenuItem__c whose id matches the input param.

### `getGlobalNav()` → `List<NavigationMenuItem>`

Gets the global nav a Community Hub site.

#### Return

**Type**

List<NavigationMenuItem>

**Description**

The list of menu items to display

### `getNavItems(String prefix)` → `List<NavigationMenuItem>`

Gets all nav items whose Menu__c == the prefix you send in

#### Parameters
|Param|Description|
|-----|-----------|
|`String` |  prefix of the menu to get. |

#### Return

**Type**

List<NavigationMenuItem>

**Description**

A list of NavigationMenuItem to display on a page filtered by access visibility.

### `getNavigationMenuItemByName(String name)` → `NavigationMenuItem`

Gets a NavigationMenuItem__c by name.

#### Parameters
|Param|Description|
|-----|-----------|
|`name` |  The name of the NavigationMenuItem__c to retrieve. |

#### Return

**Type**

NavigationMenuItem

**Description**

A single NavigationMenuItem__c whose name matches the input param.

### `updateNavigationMenuItemOrder(List<String> navItemNames)` → `void`

Updates the sort order of navigation menu items on a page.

#### Parameters
|Param|Description|
|-----|-----------|
|`navItemNames` |  List of navigation item names you would like to update the order of. |

### `updateNavigationMenuItemOrder(List<String> navItemNames, Id communityId)` → `void`

Updates the sort order of navigation menu items on a page for the specified Community Hub.

#### Parameters
|Param|Description|
|-----|-----------|
|`navItemNames` |  List of navigation item names you would like to update the order of. |
|`communityId` |  The id of the selected community when using multiple communities |

---
