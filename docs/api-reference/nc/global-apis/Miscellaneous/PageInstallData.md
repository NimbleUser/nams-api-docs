# PageInstallData class

Builder class for dealing with page custom settings. Intended for use in install scripts. This is a data factory, but please use sparingly and NOT in tests (TestData classes exist for that purpose).

---
## Constructors
### `PageInstallData()`

Default constructor. Calls SObjectInstallData's constructor.
---
## Properties

### `Instance` → `PageInstallData`

Gets an instance of PageInstallData. @return PageInstallData instance.

---
## Methods
### `create()` → `VisualforcePage`
### `getSObjectType()` → `Schema.SObjectType`

Returns the SObject type for PageInstallData builder.

#### Return

**Type**

Schema.SObjectType

**Description**

Page__c.SObjectType

### `withCardNames(List<Card> cards)` → `PageInstallData`

Sets the Cards__c of this page to a string-list of card names as formatted by CardInstallData's getListAsString method.

#### Parameters
|Param|Description|
|-----|-----------|
|`cards` |  A list of Card wrappers to use the names of. |

#### Return

**Type**

PageInstallData

**Description**

The instance of PageInstallData.

### `withCardNames(List<String> cardNames)` → `PageInstallData`

Sets the Cards__c of this page to a string-list of card names as formatted by CardInstallData's delimitCardNameSet method.

#### Parameters
|Param|Description|
|-----|-----------|
|`cardNames` |  A list of card names as strings. |

#### Return

**Type**

PageInstallData

**Description**

The instance of PageInstallData.

### `withDisplayName(String displayName)` → `PageInstallData`

Sets the DisplayName__c of this page.

#### Parameters
|Param|Description|
|-----|-----------|
|`displayName` |  The string to set as the display name. |

#### Return

**Type**

PageInstallData

**Description**

The instance of PageInstallData.

### `withName(String name)` → `PageInstallData`

Sets the Name of this page.

#### Parameters
|Param|Description|
|-----|-----------|
|`name` |  The name string to set. |

#### Return

**Type**

PageInstallData

**Description**

The instance of PageInstallData.

---
