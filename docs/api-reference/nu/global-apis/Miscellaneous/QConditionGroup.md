# QConditionGroup class

QConditionGroup is an abstract class extended by QAandGroup and QOrGroup to build parenthetical groupings.

---
## Constructors
### `QConditionGroup(LogicalOperator operator)`

Calls constructor to set QCondition conditions and operator.
#### Parameters
|Param|Description|
|-----|-----------|
|`operator` |  The logical operator. |

### `QConditionGroup(List<QICondition> conditions, LogicalOperator operator)`

Calls constructor to set QCondition conditions and operator.
#### Parameters
|Param|Description|
|-----|-----------|
|`conditions` |  A list of the QIConditions. |
|`operator` |  The logical operator. |

---
## Enums
### LogicalOperator

---
## Properties

### `hasConditions` → `Boolean`

QConditionGroup is an abstract class extended by QAandGroup and QOrGroup to build parenthetical groupings. @return whether or not there are conditions.

---
## Methods
### `add(QICondition condition)` → `QConditionGroup`

Adds a condition.

#### Parameters
|Param|Description|
|-----|-----------|
|`condition` |  The QICondition. |

#### Return

**Type**

QConditionGroup

**Description**

QConditionGroup with condition.

### `build()` → `String`

Builds a string of conditions and operators.

#### Return

**Type**

String

**Description**

The built string of conditions.

---
