# QCondition class

QCondition is used to build WHERE for SOQL statements.

---
## Constructors
### `QCondition(String field)`

Constructs a new instance of QCondition for the provided field.
#### Parameters
|Param|Description|
|-----|-----------|
|`field` |  The name of the field to create the condition for. |

---
## Enums
### ComparisonOperator


The operator to use in the comparison.

---
## Methods
### `build()` → `String`

Build the condition for use in the query.

#### Return

**Type**

String

**Description**

The fully built condition.

### `excludes(List<Object> values)` → `QCondition`

Adds the EXCLUDES operator for the provided field values.

#### Parameters
|Param|Description|
|-----|-----------|
|`values` |  The field values. |

#### Return

**Type**

QCondition

**Description**

The current instance of QCondition.

### `includes(List<Object> values)` → `QCondition`

Adds the INCLUDES operator for the provided field values.

#### Parameters
|Param|Description|
|-----|-----------|
|`values` |  The field values. |

#### Return

**Type**

QCondition

**Description**

The current instance of QCondition.

### `isEqualTo(Object value)` → `QCondition`

Adds the EQUALS operator for the provided field value.

#### Parameters
|Param|Description|
|-----|-----------|
|`value` |  The field value. |

#### Return

**Type**

QCondition

**Description**

The current instance of QCondition.

### `isGreaterOrEquals(Object value)` → `QCondition`

Adds the GREATER_OR_EQUAL operator for the provided field value.

#### Parameters
|Param|Description|
|-----|-----------|
|`value` |  The field value. |

#### Return

**Type**

QCondition

**Description**

The current instance of QCondition.

### `isGreaterThan(Object value)` → `QCondition`

Adds the GREATER_THAN operator for the provided field value.

#### Parameters
|Param|Description|
|-----|-----------|
|`value` |  The field value. |

#### Return

**Type**

QCondition

**Description**

The current instance of QCondition.

### `isIn(List<Object> values)` → `QCondition`

Adds the IS_IN operator for the provided field values.

#### Parameters
|Param|Description|
|-----|-----------|
|`values` |  The field values. |

#### Return

**Type**

QCondition

**Description**

The current instance of QCondition.

### `isIn(String value)` → `QCondition`

Adds the IS_IN operator for the provided field value. This can be used to pass a bound variable (e.g. :recordIds).

#### Parameters
|Param|Description|
|-----|-----------|
|`value` |  The field value. |

#### Return

**Type**

QCondition

**Description**

The current instance of QCondition.

### `isIn(Q subQuery)` → `QCondition`

Adds the IS_IN operator for the provided Q sub-query instance.

#### Parameters
|Param|Description|
|-----|-----------|
|`subQuery` |  The Q sub-query instance to add as a condition. |

#### Return

**Type**

QCondition

**Description**

The current instance of QCondition.

### `isLessOrEquals(Object value)` → `QCondition`

Adds the LESS_OR_EQUAL operator for the provided field value.

#### Parameters
|Param|Description|
|-----|-----------|
|`value` |  The field value. |

#### Return

**Type**

QCondition

**Description**

The current instance of QCondition.

### `isLessThan(Object value)` → `QCondition`

Adds the LESS_THAN operator for the provided field value.

#### Parameters
|Param|Description|
|-----|-----------|
|`value` |  The field value. |

#### Return

**Type**

QCondition

**Description**

The current instance of QCondition.

### `isLike(String value)` → `QCondition`

Adds the IS_LIKE operator for the provided field value.

#### Parameters
|Param|Description|
|-----|-----------|
|`value` |  The field value. |

#### Return

**Type**

QCondition

**Description**

The current instance of QCondition.

### `isNotEqualTo(Object value)` → `QCondition`

Adds the NOT_EQUALS operator for the provided field value.

#### Parameters
|Param|Description|
|-----|-----------|
|`value` |  The field value. |

#### Return

**Type**

QCondition

**Description**

The current instance of QCondition.

### `isNotIn(List<Object> values)` → `QCondition`

Adds the NOT_IN operator for the provided field values.

#### Parameters
|Param|Description|
|-----|-----------|
|`values` |  The field values. |

#### Return

**Type**

QCondition

**Description**

The current instance of QCondition.

### `isNotIn(String value)` → `QCondition`

Adds the NOT_IN operator for the provided field value. This can be used to pass a bound variable (e.g. :recordIds).

#### Parameters
|Param|Description|
|-----|-----------|
|`values` |  The field value. |

#### Return

**Type**

QCondition

**Description**

The current instance of QCondition.

### `isNotIn(Q subQuery)` → `QCondition`

Adds the NOT_IN operator for the provided Q sub-query instance.

#### Parameters
|Param|Description|
|-----|-----------|
|`subQuery` |  The Q sub-query instance to add as a condition. |

#### Return

**Type**

QCondition

**Description**

The current instance of QCondition.

### `isNotNull()` → `QCondition`

Adds the NOT_EQUALS operator for a null field value.

#### Return

**Type**

QCondition

**Description**

The current instance of QCondition.

### `isNull()` → `QCondition`

Adds the EQUALS operator for a null field value.

#### Return

**Type**

QCondition

**Description**

The current instance of QCondition.

---
