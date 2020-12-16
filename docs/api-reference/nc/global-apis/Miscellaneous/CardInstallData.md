# CardInstallData class

Builder class for dealing with card custom settings. Intended for use in install scripts. This is a data factory, but please use sparingly and NOT in tests (TestData classes exist for that purpose).

---
## Constructors
### `CardInstallData()`

Default constructor. Calls SObjectInstallData's constructor.
---
## Properties

### `Instance` → `CardInstallData`

Gets an instance of CardInstallData. @return CardInstallData instance.

---
## Methods
### `create()` → `Card`
### `getSObjectType()` → `Schema.SObjectType`

Returns the SObject type for CardInstallData builder.

#### Return

**Type**

Schema.SObjectType

**Description**

Card__c.SObjectType

### `withButtonNames(String buttonNames)` → `CardInstallData`

Sets the Buttons__c of this Card.

#### Parameters
|Param|Description|
|-----|-----------|
|`buttonNames` |  Expects a comma-delimited string of button names. |

#### Return

**Type**

CardInstallData

**Description**

The instance of CardInstallData.

### `withButtonNames(List<Button> buttons)` → `CardInstallData`

Sets the Buttons__c of this cards to a string-list of button names as formatted by the getListAsString method.

#### Parameters
|Param|Description|
|-----|-----------|
|`buttons` |  A list of Button wrappers to use the names of. |

#### Return

**Type**

CardInstallData

**Description**

The instance of CardInstallData.

### `withButtonNames(List<String> buttonNames)` → `CardInstallData`

Sets the Buttons__c of this cards to a string-list of button names as formatted by the delimitCardNameSet method.

#### Parameters
|Param|Description|
|-----|-----------|
|`buttonNames` |  A list of button names as strings. |

#### Return

**Type**

CardInstallData

**Description**

The instance of CardInstallData.

### `withCardLayoutName(String cardLayoutName)` → `CardInstallData`

Sets the CardLayout__c of this Card.

#### Parameters
|Param|Description|
|-----|-----------|
|`cardLayoutName` |  The name of the card layout this card will use. |

#### Return

**Type**

CardInstallData

**Description**

The instance of CardInstallData.

### `withCardTypeName(String cardTypeName)` → `CardInstallData`

Sets the Card Type Name (Type__c) of this Card.

#### Parameters
|Param|Description|
|-----|-----------|
|`cardTypeName` |  The name of this card's type. |

#### Return

**Type**

CardInstallData

**Description**

The instance of CardInstallData.

### `withCssClass(String cssClass)` → `CardInstallData`

Sets the CSSClass__c of this Card.

#### Parameters
|Param|Description|
|-----|-----------|
|`cssClass` |  The CSS class this card will use. |

#### Return

**Type**

CardInstallData

**Description**

The instance of CardInstallData.

### `withDataSourceName(String dataSourceName)` → `CardInstallData`

Sets the DataSource__c of this Card.

#### Parameters
|Param|Description|
|-----|-----------|
|`dataSourceName` |  The name of the data source this card will use. |

#### Return

**Type**

CardInstallData

**Description**

The instance of CardInstallData.

### `withDescriptionLabel(String descriptionLabel)` → `CardInstallData`

Sets the DescriptionLabel__c of this Card.

#### Parameters
|Param|Description|
|-----|-----------|
|`descriptionLabel` |  the description label string to set. |

#### Return

**Type**

CardInstallData

**Description**

The instance of CardInstallData.

### `withFieldSetName(String fieldSetName)` → `CardInstallData`

Sets the FieldSet__c of this Card.

#### Parameters
|Param|Description|
|-----|-----------|
|`fieldSetName` |  The field set name string to set. |

#### Return

**Type**

CardInstallData

**Description**

The instance of CardInstallData.

### `withHeadingLabel(String headingLabel)` → `CardInstallData`

Sets the HeadingLabel__c of this Card.

#### Parameters
|Param|Description|
|-----|-----------|
|`headingLabel` |  the heading label string to set. |

#### Return

**Type**

CardInstallData

**Description**

The instance of CardInstallData.

### `withName(String name)` → `CardInstallData`

Sets the Name of this Card.

#### Parameters
|Param|Description|
|-----|-----------|
|`cardNames` |  A set of card name strings. |
|`name` |  The name string to set. |

#### Return

**Type**

CardInstallData

**Description**

The instance of CardInstallData.

### `withNoRecordsLabel(String noRecordsLabel)` → `CardInstallData`

Sets the NoRecordsLabel__c of this Card.

#### Parameters
|Param|Description|
|-----|-----------|
|`noRecordsLabel` |  The label to display when no records are returned by the data source. |

#### Return

**Type**

CardInstallData

**Description**

The instance of CardInstallData.

---
