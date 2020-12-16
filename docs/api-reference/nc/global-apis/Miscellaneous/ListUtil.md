# ListUtil class

A utility class for interacting with lists. Ain't it grand?

---
## Properties

### `Instance` → `ListUtil`

A singleton instance for accessing methods in the ListUtil class.

---
## Methods
### `contains(List<Object> listToCheck, Object instanceToCheckFor)` → `Boolean`

Checks to see if the list specified contains the object specified.

#### Parameters
|Param|Description|
|-----|-----------|
|`listToCheck` |  The list to check and see if it contains the object. |
|`intanceToCheckFor` |  The instance of an object to check in the list for. |

#### Return

**Type**

Boolean

**Description**

True if the list contains the specified element, else false.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if listToCheck is null. |

---
