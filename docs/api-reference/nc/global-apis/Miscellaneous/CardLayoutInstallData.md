# CardLayoutInstallData class

Builder class for dealing with card layout custom settings. Intended for use in install scripts. This is a data factory, but please use sparingly and NOT in tests (TestData classes exist for that purpose).

---
## Constructors
### `CardLayoutInstallData()`

Default constructor. Calls SObjectInstallData's constructor.
---
## Properties

### `Instance` → `CardLayoutInstallData`

Gets an instance of CardLayoutInstallData. @return CardLayoutInstallData instance.

---
## Methods
### `allowInPlaceEditing()` → `CardLayoutInstallData`

Sets the AllowInPlaceEditing__c of this card layout to true.

#### Return

**Type**

CardLayoutInstallData

**Description**

The instance of CardLayoutInstallData.

### `buttonsOnSeparateRow()` → `CardLayoutInstallData`

Sets the ButtonsOnSeparateRow__c of this card layout to true.

#### Return

**Type**

CardLayoutInstallData

**Description**

The instance of CardLayoutInstallData.

### `create()` → `CardLayout`
### `displayHtml()` → `CardLayoutInstallData`

Sets the EscapeHtml__c of this card layout to false.

#### Return

**Type**

CardLayoutInstallData

**Description**

The instance of CardLayoutInstallData.

### `firstFieldAsHeading()` → `CardLayoutInstallData`

Sets the FirstFieldAsHeading__c of this card layout to true.

#### Return

**Type**

CardLayoutInstallData

**Description**

The instance of CardLayoutInstallData.

### `getSObjectType()` → `Schema.SObjectType`

Returns the SObject type for PageInstallData builder.

#### Return

**Type**

Schema.SObjectType

**Description**

Page__c.SObjectType

### `groupCards()` → `CardLayoutInstallData`

Sets the GroupCards__c of this card layout to true.

#### Return

**Type**

CardLayoutInstallData

**Description**

The instance of CardLayoutInstallData.

### `groupCards(Boolean groupCards)` → `CardLayoutInstallData`

Sets the GroupCards__c of this card layout.

#### Parameters
|Param|Description|
|-----|-----------|
|`groupCards` |  Boolean indicating if the cards should be grouped. |

#### Return

**Type**

CardLayoutInstallData

**Description**

The instance of CardLayoutInstallData.

### `includeFieldLabels()` → `CardLayoutInstallData`

Sets the IncludeFieldLabels__c of this card layout to true.

#### Return

**Type**

CardLayoutInstallData

**Description**

The instance of CardLayoutInstallData.

### `withName(String name)` → `CardLayoutInstallData`

Sets the Name of this card layout.

#### Parameters
|Param|Description|
|-----|-----------|
|`name` |  The name string to set. |

#### Return

**Type**

CardLayoutInstallData

**Description**

The instance of CardLayoutInstallData.

---
