# HierarchyRequest class

HierarchyRequest specifies the information required to build hierarchical data.

---
## Constructors
### `HierarchyRequest(Id recordIdParam)`

Default constructor.
#### Parameters
|Param|Description|
|-----|-----------|
|`recordIdParam` |  The Id of the record to generate hierarchies for. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if recordId is null. |

### `HierarchyRequest(Id recordIdParam, Integer levels)`

Constructor for a request that specifies the desired number of levels in a hierarchy.
#### Parameters
|Param|Description|
|-----|-----------|
|`recordIdParam` |  The Id of the record to generate hierarchies for. |
|`levels` |  The maximum number of levels to include in the hierarchies. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any parameter is null. |

---
## Properties

### `NumberOfLevels` → `Integer`

The maximum number of levels to include in the hierarchies.

### `RecordId` → `Id`

The Id of the account to get affiliation data for.

---
