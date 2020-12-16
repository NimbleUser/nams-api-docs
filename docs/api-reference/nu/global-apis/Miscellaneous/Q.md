# Q class

Q is used to build SOQL statements.

---
## Constructors
### `Q(SObjectType fromType)`

Constructs a new instance of Q for the provided SObjectType.
#### Parameters
|Param|Description|
|-----|-----------|
|`fromType` |  The SObjectType to select from. |

### `Q(String fromText)`

Constructs a new instance of Q for the provided from text.
#### Parameters
|Param|Description|
|-----|-----------|
|`fromText` |  The from text to select from. |

---
## Methods
### `add(QOrder orderBy)` → `Q`

Add an OrderBy statement to this query.

#### Parameters
|Param|Description|
|-----|-----------|
|`orderBy` |  The QCondition to add to this query's orders. |

#### Return

**Type**

Q

**Description**

The current instance of Q.

### `add(QCondition condition)` → `Q`

Add a Condition statement to this query.

#### Parameters
|Param|Description|
|-----|-----------|
|`condition` |  The QCondition to add to this query's conditions. |

#### Return

**Type**

Q

**Description**

The current instance of Q.

### `add(QICondition condition)` → `Q`

Add a Condition statement to this query.

#### Parameters
|Param|Description|
|-----|-----------|
|`condition` |  The QICondition to add to this query's conditions. |

#### Return

**Type**

Q

**Description**

The current instance of Q.

### `addLimit(Integer i)` → `Q`

Add a LIMIT statement to this query.

#### Parameters
|Param|Description|
|-----|-----------|
|`i` |  The number to limit by. |

#### Return

**Type**

Q

**Description**

The current instance of Q.

### `addOffset(Integer i)` → `Q`

Add an OFFSET statement to this query.

#### Parameters
|Param|Description|
|-----|-----------|
|`i` |  The number to offset by. |

#### Return

**Type**

Q

**Description**

The current instance of Q.

### `addSubQuery(Q subQuery)` → `Q`

Add an SELECT sub-query to this query.

#### Parameters
|Param|Description|
|-----|-----------|
|`subQuery` |  The Q sub-query instance to add to this query's sub-queries. |

#### Return

**Type**

Q

**Description**

The current instance of Q.

### `andGroup()` → `QConditionGroup`

Instantiate a parenthetical AND condition group

#### Return

**Type**

QConditionGroup

**Description**

The instance of QConditionGroup

### `build()` → `String`

Build the SOQL query.

#### Return

**Type**

String

**Description**

The fully built SOQL query.

### `buildConditions()` → `String`

Build the WHERE statement.

#### Return

**Type**

String

**Description**

The built WHERE statement.

### `buildCount()` → `String`

Build the SOQL Count query. buildCount() can't be used with ORDERBY()/GROUPBY()

#### Return

**Type**

String

**Description**

The fully built SOQL Count query.

### `buildOrderBy()` → `String`

Build the ORDER BY statement.

#### Return

**Type**

String

**Description**

The built ORDER BY statement.

### `buildSelect()` → `String`

Build the SELECT statement.

#### Return

**Type**

String

**Description**

The built SELECT statement.

### `condition(String fieldName)` → `QCondition`

Instantiate a Condition object with the provided field name.

#### Parameters
|Param|Description|
|-----|-----------|
|`fieldName` |  The name of the field to create a condition for by. |

#### Return

**Type**

QCondition

**Description**

New QCondition instance for the provided field name.

### `getFieldNameSet(Set<SObjectField> schemaFieldList)` → `Set<String>`

Helper method to convert a Set<SObjectField> -> Set<String>.

#### Parameters
|Param|Description|
|-----|-----------|
|`schemaFieldList` |  Set<SObjectField> of fields to get the string name for. |

#### Return

**Type**

Set<String>

**Description**

Set of field names.

### `getFieldNameSet(Set<SObjectField> schemaFieldList, String relationshipName)` → `Set<String>`

Helper method to convert a Set<SObjectField> -> Set<String>.

#### Parameters
|Param|Description|
|-----|-----------|
|`schemaFieldList` |  Set<SObjectField> of fields to get the string name for. |
|`relationshipName` |  The name of the relationship to prepend each field name. |

#### Return

**Type**

Set<String>

**Description**

Set of field names, prepended by the relationship name.

### `orGroup()` → `QConditionGroup`

Instantiate a parenthetical OR condition group

#### Return

**Type**

QConditionGroup

**Description**

The instance of QConditionGroup

### `orderBy(String fieldName)` → `QOrder`

Instantiate an OrderBy object with the provided field name.

#### Parameters
|Param|Description|
|-----|-----------|
|`fieldName` |  The name of the field to order by. |

#### Return

**Type**

QOrder

**Description**

New QOrder instance for the provided field name.

### `removeConditions()` → `Q`

Removes all conditions added to the query.

#### Return

**Type**

Q

**Description**

The current instance of Q.

### `removeLimit()` → `Q`

Removes any limit added to the query.

#### Return

**Type**

Q

**Description**

The current instance of Q.

### `removeOffset()` → `Q`

Removes any offset added to the query.

#### Return

**Type**

Q

**Description**

The current instance of Q.

### `selectFields(String fieldSetName, SObjectType objectType)` → `Q`

Add fields to the SELECT statement from the provided Schema.FieldSet.

#### Parameters
|Param|Description|
|-----|-----------|
|`fieldSetName` |  The name of the fieldset to add fields for. |
|`objectType` |  The type of SObject this fieldset relates to. |

#### Return

**Type**

Q

**Description**

The current instance of Q.

### `selectFields(Set<Schema.SObjectField> fields)` → `Q`

Add fields to the SELECT statement from the provided Set of Schema.SObjectFields.

#### Parameters
|Param|Description|
|-----|-----------|
|`fields` |  The set of Schema.SObjectFields to add to this query's field list. |

#### Return

**Type**

Q

**Description**

The current instance of Q.

### `selectFields(Set<String> fields)` → `Q`

Add fields to the SELECT statement from the provided Set of Strings.

#### Parameters
|Param|Description|
|-----|-----------|
|`fields` |  The set of string field names to add to this query's field list. |

#### Return

**Type**

Q

**Description**

The current instance of Q.

---
