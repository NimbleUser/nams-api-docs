# CardTestData class

Builder class for dealing with Card__c records. Solely used for testing, NOT a data factory.

---
## Properties

### `Instance` → `CardTestData`

Gets an instance of CardTestData. @return CardTestData instance.

---
## Methods
### `createCard(Card__c cardRecord)` → `Card`

Creates a single instance of Card.cls containing a Card__c record 	and default card data.

#### Parameters
|Param|Description|
|-----|-----------|
|`cardRecord` |  A Card__c record. |

#### Return

**Type**

Card

**Description**

Instance of Card.cls.

### `insertAndSetCard(ICardComponentController controller)` → `void`

Inserts a card and sets the card on the specified controller.

#### Parameters
|Param|Description|
|-----|-----------|
|`controller` |  The card component controller. |

### `insertCard()` → `Card__c`

Inserts the built Card__c.

#### Return

**Type**

Card__c

**Description**

The inserted Card__c object.

### `withCardLayout(String cardLayout)` → `CardTestData`

Sets the Card Layout for the Card__c being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`cardLayout` |  The value for the Card Layout field. |

#### Return

**Type**

CardTestData

**Description**

The instance of CardTestData.

### `withConfiguration(String configuration)` → `CardTestData`

Sets the Configuration__c for the Card__c being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`configuration` |  The value for the Configuration__c field. |

#### Return

**Type**

CardTestData

**Description**

The instance of CardTestData.

### `withCssClass(String cssClass)` → `CardTestData`

Sets the CSS Class for the Card__c being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`cssClass` |  The value for the CSS Class field. |

#### Return

**Type**

CardTestData

**Description**

The instance of CardTestData.

### `withDataSource(String dataSource)` → `CardTestData`

Sets the Data Source class name for the Card__c being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`dataSource` |  The value for the Data Source field. |

#### Return

**Type**

CardTestData

**Description**

The instance of CardTestData.

### `withDescriptionLabel(String descriptionLabel)` → `CardTestData`

Sets the Description Label for the Card__c being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`descriptionLabel` |  The value for the Description Label field. |

#### Return

**Type**

CardTestData

**Description**

The instance of CardTestData.

### `withFieldSet(String fieldSet)` → `CardTestData`

Sets the Field Set for the Card__c being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`fieldSet` |  The value for the Field Set field. |

#### Return

**Type**

CardTestData

**Description**

The instance of CardTestData.

### `withHeadingLabel(String headingLabel)` → `CardTestData`

Sets the Heading Label for the Card__c being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`headingLabel` |  The value for the Heading Label field. |

#### Return

**Type**

CardTestData

**Description**

The instance of CardTestData.

### `withName(String name)` → `CardTestData`

Sets the Name for the Card__c being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`name` |  The value for the Name field. |

#### Return

**Type**

CardTestData

**Description**

The instance of CardTestData.

### `withNoRecordsLabel(String noRecordsLabel)` → `CardTestData`

Sets the No Records Label for the Card__c being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`noRecordsLabel` |  The value for the No Records Label field. |

#### Return

**Type**

CardTestData

**Description**

The instance of CardTestData.

### `withRecordTypeNames(List<String> recordTypeNames)` → `CardTestData`

Sets the Record Type Names for the Card__c being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`recordTypeNames` |  The list of Record Type Name values for the Record Type Names field. |

#### Return

**Type**

CardTestData

**Description**

The instance of CardTestData.

### `withTag(String tag)` → `CardTestData`

Sets the Tag for the Card__c being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`tag` |  The value for the Tag field. |

#### Return

**Type**

CardTestData

**Description**

The instance of CardTestData.

### `withType(String type)` → `CardTestData`

Sets the Type for the Card__c being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`type` |  The value for the Type field. |

#### Return

**Type**

CardTestData

**Description**

The instance of CardTestData.

---
