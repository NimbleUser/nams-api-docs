# CardTypeInstallData class

Builder class for dealing with card type custom settings. Intended for use in install scripts. This is a data factory, but please use sparingly and NOT in tests (TestData classes exist for that purpose).

---
## Constructors
### `CardTypeInstallData()`

Default constructor. Calls SObjectInstallData's constructor.
---
## Properties

### `Instance` → `CardTypeInstallData`

Gets an instance of CardTypeInstallData. @return CardTypeInstallData instance.

---
## Methods
### `create()` → `CardType`
### `getSObjectType()` → `Schema.SObjectType`

Returns the SObject type for CardTypeInstallData builder.

#### Parameters
|Param|Description|
|-----|-----------|
|`tag` |  The tag string to set. |

#### Return

**Type**

Schema.SObjectType

**Description**

CardType__c.SObjectType

### `withClassName(String className)` → `CardTypeInstallData`

Sets the ClassName__c of this Card Type.

#### Parameters
|Param|Description|
|-----|-----------|
|`className` |  The string to set as the class name. |

#### Return

**Type**

CardTypeInstallData

**Description**

The instance of CardTypeInstallData.

### `withConstructorName(String constructorName)` → `CardTypeInstallData`

Sets the CardComponentConstructor__c of this Card Type.

#### Parameters
|Param|Description|
|-----|-----------|
|`constructorName` |  The name of the constructor to set. |

#### Return

**Type**

CardTypeInstallData

**Description**

The instance of CardTypeInstallData.

### `withControllerName(String controllerName)` → `CardTypeInstallData`

Sets the ControllerName__c of this Card Type.

#### Parameters
|Param|Description|
|-----|-----------|
|`controllerName` |  The name of the controller to set. |

#### Return

**Type**

CardTypeInstallData

**Description**

The instance of CardTypeInstallData.

### `withDisplayName(String displayName)` → `CardTypeInstallData`

Sets the DisplayName__c of this Card Type.

#### Parameters
|Param|Description|
|-----|-----------|
|`displayName` |  The string to set as the display name. |

#### Return

**Type**

CardTypeInstallData

**Description**

The instance of CardTypeInstallData.

### `withName(String name)` → `CardTypeInstallData`

Sets the Name of this Card Type.

#### Parameters
|Param|Description|
|-----|-----------|
|`name` |  The name string to set. |

#### Return

**Type**

CardTypeInstallData

**Description**

The instance of CardTypeInstallData.

---
