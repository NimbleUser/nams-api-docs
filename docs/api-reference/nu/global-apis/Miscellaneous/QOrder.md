# QOrder class

QOrder is used to build ORDER BY for SOQL statements.

---
## Constructors
### `QOrder(String field)`

Constructs a new instance of QOrder for the provided field.
#### Parameters
|Param|Description|
|-----|-----------|
|`field` |  The name of the field to create the order for. |

---
## Enums
### NullsOrder


Nulls Order enum for FIRST and LAST.

### SortOrder


Sort Order enum for ASC and DESC.

---
## Methods
### `ascending()` → `QOrder`

Sets the sort order to ASCENDING.

#### Return

**Type**

QOrder

**Description**

The current instance of QOrder.

### `build()` → `String`

Build the order for use in the query.

#### Return

**Type**

String

**Description**

The fully built order.

### `descending()` → `QOrder`

Sets the sort order to DESCENDING.

#### Return

**Type**

QOrder

**Description**

The current instance of QOrder.

### `nullsFirst()` → `QOrder`

Sets the nulls order to FIRST.

#### Return

**Type**

QOrder

**Description**

The current instance of QOrder.

### `nullsLast()` → `QOrder`

Sets the nulls order to LAST.

#### Return

**Type**

QOrder

**Description**

The current instance of QOrder.

---
