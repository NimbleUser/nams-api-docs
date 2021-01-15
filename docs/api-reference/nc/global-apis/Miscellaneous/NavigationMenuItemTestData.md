# NavigationMenuItemTestData class

Builder class for dealing with NavigationMenuItem__c records. Solely used for testing, NOT a data factory.

---
## Properties

### `Instance` → `NavigationMenuItemTestData`

Gets an instance of NavigationMenuItemTestData. @return NavigationMenuItemTestData instance.

---
## Methods
### `create()` → `NavigationMenuItem__c`

Builds the NavigationMenuItem__c object.

#### Return

**Type**

NavigationMenuItem__c

**Description**

The created NavigationMenuItem__c object.

### `displayForCompanyManagersOnly()` → `NavigationMenuItemTestData`

Sets DisplayForCompanyManagersOnly__c to true.

#### Return

**Type**

NavigationMenuItemTestData

**Description**

The instance of NavigationMenuItemTestData.

### `hideForLoggedInUsers()` → `NavigationMenuItemTestData`

Sets DisplayForLoggedIn__c to false.

#### Return

**Type**

NavigationMenuItemTestData

**Description**

The updated instance of NavigationMenuItemTestData.

### `hideForLoggedOutUsers()` → `NavigationMenuItemTestData`

Sets DisplayForLoggedOut__c to false.

#### Return

**Type**

NavigationMenuItemTestData

**Description**

The updated instance of NavigationMenuItemTestData.

### `inMenu(String menu)` → `NavigationMenuItemTestData`

Sets the Menu__c to be used when building the NavigationMenuItem__c.

#### Parameters
|Param|Description|
|-----|-----------|
|`menu` |  Value of the Menu__c field. |

#### Return

**Type**

NavigationMenuItemTestData

**Description**

The instance of NavigationMenuItemTestData.

### `inSortOrder(Integer order)` → `NavigationMenuItemTestData`

Sets the SortOrder__c to be used when building the NavigationMenuItem__c.

#### Parameters
|Param|Description|
|-----|-----------|
|`order` |  Value of the SortOrder__c field. |

#### Return

**Type**

NavigationMenuItemTestData

**Description**

The instance of NavigationMenuItemTestData.

### `insertNavigationMenuItem()` → `NavigationMenuItem__c`

Builds and inserts a NavigationMenuItem.

#### Return

**Type**

NavigationMenuItem__c

**Description**

The built and inserted NavigationMenuItem.

### `insertNavigationMenuItems(Integer numRecords)` → `List<NavigationMenuItem__c>`

Inserts as many navigationMenuItem__c objects as specified with numRecords.

#### Parameters
|Param|Description|
|-----|-----------|
|`numRecords` |  The number of navigationMenuItem__c records to insert. |

#### Return

**Type**

List<NavigationMenuItem__c>

**Description**

A list of new navigationMenuItems.

### `withName(String name)` → `NavigationMenuItemTestData`

Sets the Name to be used when building the NavigationMenuItem__c.

#### Parameters
|Param|Description|
|-----|-----------|
|`sObj` |  The built SObject. |
|`name` |  Value of the Name field. |

#### Return

**Type**

NavigationMenuItemTestData

**Description**

The instance of NavigationMenuItemTestData.

### `withTitle(String title)` → `NavigationMenuItemTestData`

Sets the Title__c to be used when building the NavigationMenuItem__c.

#### Parameters
|Param|Description|
|-----|-----------|
|`title` |  Value of the Title__c field. |

#### Return

**Type**

NavigationMenuItemTestData

**Description**

The instance of NavigationMenuItemTestData.

### `withUrl(String url)` → `NavigationMenuItemTestData`

Sets the Url__c to be used when building the NavigationMenuItem__c.

#### Parameters
|Param|Description|
|-----|-----------|
|`url` |  Value of the Url__c field. |

#### Return

**Type**

NavigationMenuItemTestData

**Description**

The instance of NavigationMenuItemTestData.

### `withVisibilitySetting(String visibilitySetting)` → `NavigationMenuItemTestData`

Sets the VisibilitySetting__c to be used when building the NavigationMenuItem__c.

#### Parameters
|Param|Description|
|-----|-----------|
|`visibilitySetting` |  Value of the VisibilitySetting__c field. |

#### Return

**Type**

NavigationMenuItemTestData

**Description**

The instance of NavigationMenuItemTestData.

---
