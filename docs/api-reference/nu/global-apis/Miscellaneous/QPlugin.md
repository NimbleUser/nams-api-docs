# QPlugin class

Plugin class that introduces Q behavior for use in retrievers.

---
## Methods
### `appendToQuery(Q query)` → `void`

Modifies the Q query instance with the plugin information.

#### Parameters
|Param|Description|
|-----|-----------|
|`query` |  The query to append/modify. |

---
## Inner Classes

### QPlugin.Condition class

Plugin class to allow adding conditions to a query.

---
#### Constructors
##### `Condition()`

Constructs a new Condition instance with no condition.
##### `Condition(QCondition condition)`

Constructs a new Condition instance with the provided QCondition instance.
###### Parameters
|Param|Description|
|-----|-----------|
|`condition` |  QCondition instance to add as a query condition. |

---
#### Methods
##### `appendToQuery(Q query)` → `void`

Modifies the Q query instance with the condition.

###### Parameters
|Param|Description|
|-----|-----------|
|`query` |  The query to append/modify. |

##### `getCondition()` → `QCondition`

Gets the QCondition condition instance in this instance.

###### Return

**Type**

QCondition

**Description**

The QCondition condition instance.

---
### QPlugin.FieldSet class

Plugin class to allow adding field sets to a query.

---
#### Constructors
##### `FieldSet(String fieldSetName, SObjectType objectType)`

Constructs a new Fields instance with the provided set of field names.
###### Parameters
|Param|Description|
|-----|-----------|
|`fieldList` |  Set<String> of field names to add to the query. |

---
#### Methods
##### `appendToQuery(Q query)` → `void`

Modifies the Q query instance with the fieldset to select.

###### Parameters
|Param|Description|
|-----|-----------|
|`query` |  The query to append/modify. |

##### `getFieldSetName()` → `String`

Gets the field set name in this instance.

###### Return

**Type**

String

**Description**

Name of the field set to add to the query.

##### `getObjectType()` → `SObjectType`

Gets the SObjectType in this instance.

###### Return

**Type**

SObjectType

**Description**

SObjectType to add the field set from.

---
### QPlugin.Fields class

Plugin class to allow adding fields to a query.

---
#### Constructors
##### `Fields()`

Constructs a new Fields instance with no fields.
##### `Fields(Set<String> fieldList)`

Constructs a new Fields instance with the provided set of field names.
###### Parameters
|Param|Description|
|-----|-----------|
|`fieldList` |  Set<String> of field names to add to the query. |

##### `Fields(Set<SObjectField> schemaFieldList)`

Constructs a new Fields instance with the provided set of field names.
###### Parameters
|Param|Description|
|-----|-----------|
|`schemaFieldList` |  Set<SObjectField> of fields to add to the query. |

---
#### Methods
##### `appendToQuery(Q query)` → `void`

Modifies the Q query instance with the fields to select.

###### Parameters
|Param|Description|
|-----|-----------|
|`query` |  The query to append/modify. |

##### `getFields()` → `Object`

Gets the fields to select in this instance.

###### Return

**Type**

Object

**Description**

Fields to add to the query.

---
### QPlugin.Limits class

Plugin class to allow adding limits to a query.

---
#### Constructors
##### `Limits()`

Constructs a new Limits instance with no limit.
##### `Limits(Integer limits)`

Constructs a new Limits instance with the provided limits integer.
###### Parameters
|Param|Description|
|-----|-----------|
|`limits` |  Integer limit to add as a limit to the query. |

---
#### Methods
##### `appendToQuery(Q query)` → `void`

Modifies the Q query instance with the limit.

###### Parameters
|Param|Description|
|-----|-----------|
|`query` |  The query to append/modify. |

##### `getLimits()` → `Integer`

Gets the limit to apply to the query.

###### Return

**Type**

Integer

**Description**

The limit value.

---
### QPlugin.Offset class

Plugin class to allow adding an offset to a query.

---
#### Constructors
##### `Offset()`

Constructs a new Offset instance with no offset.
##### `Offset(Integer offset)`

Constructs a new Offset instance with the provided offset integer.
###### Parameters
|Param|Description|
|-----|-----------|
|`offset` |  Integer offset to add as an offset to the query. |

---
#### Methods
##### `appendToQuery(Q query)` → `void`

Modifies the Q query instance with the offset.

###### Parameters
|Param|Description|
|-----|-----------|
|`query` |  The query to append/modify. |

##### `getOffset()` → `Integer`

Gets the offset to apply to the query.

###### Return

**Type**

Integer

**Description**

The offset value.

---
### QPlugin.Order class

Plugin class to allow adding order to a query.

---
#### Constructors
##### `Order()`

Constructs a new Order instance with no order.
##### `Order(QOrder order)`

Constructs a new Order instance with the provided QOrder instance.
###### Parameters
|Param|Description|
|-----|-----------|
|`condition` |  QOrder instance to add as an order by. |

---
#### Methods
##### `appendToQuery(Q query)` → `void`

Modifies the Q query instance with the order.

###### Parameters
|Param|Description|
|-----|-----------|
|`query` |  The query to append/modify. |

##### `getOrder()` → `QOrder`

Gets the QOrder instance in this instance.

###### Return

**Type**

QOrder

**Description**

The QOrder instance.

---
### QPlugin.RelatedFields class

Plugin class to allow adding relationship (__r) fields of a related object to a query.

---
#### Constructors
##### `RelatedFields(String relationshipName)`

Constructs a new RelatedFields instance with no fields.
###### Parameters
|Param|Description|
|-----|-----------|
|`relationshipName` |  The name of the relationship name using the __r notation. |

##### `RelatedFields(String relationshipName, Set<String> fieldList)`

Constructs a new RelatedFields instance with the provided set of field names.
###### Parameters
|Param|Description|
|-----|-----------|
|`relationshipName` |  The name of the relationship name using the __r notation. |
|`fieldList` |  Set<String> of field names to add to the query. |

##### `RelatedFields(String relationshipName, Set<SObjectField> schemaFieldList)`

Constructs a new RelatedFields instance with the provided set of field names.
###### Parameters
|Param|Description|
|-----|-----------|
|`relationshipName` |  The name of the relationship name using the __r notation. |
|`schemaFieldList` |  Set<SObjectField> of fields to add to the query. |

---
#### Methods
##### `appendToQuery(Q query)` → `void`

Modifies the Q query instance with the fields to select.

###### Parameters
|Param|Description|
|-----|-----------|
|`query` |  The query to append/modify. |

##### `getFields()` → `Object`

Gets the fields to select in this instance.

###### Return

**Type**

Object

**Description**

Fields to add to the query.

##### `getRelationshipName()` → `String`

Returns the name of the relationship name using the __r notation.

###### Return

**Type**

String

**Description**

The name of the relationship name using the __r notation.

---
### QPlugin.SubQuery class

Plugin class to allow adding sub-queries to a query.

---
#### Constructors
##### `SubQuery()`

Constructs a new SubQuery instance with no sub-query.
##### `SubQuery(Q subQuery)`

Constructs a new SubQuery instance with the provided Q sub-query instance.
###### Parameters
|Param|Description|
|-----|-----------|
|`subQuery` |  Q instance to add as a sub-query. |

---
#### Methods
##### `appendToQuery(Q query)` → `void`

Modifies the Q query instance with the sub-query to select.

###### Parameters
|Param|Description|
|-----|-----------|
|`query` |  The query to append/modify. |

##### `getSubQuery()` → `Q`

Gets the Q sub-query instance in this instance.

###### Return

**Type**

Q

**Description**

The Q sub-query instance.

---
