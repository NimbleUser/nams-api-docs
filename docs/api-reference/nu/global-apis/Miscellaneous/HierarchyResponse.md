# HierarchyResponse class

HierarchyResponse includes hierarchical data built for a particular record as well as additional information about those hierarchies. This response may also include errors if there was a problem generating the hierarchies.

---
## Constructors
### `HierarchyResponse(Hierarchies generatedHierarchy)`

Constructor for creating a successful response with the hierarchies for the requested account.
#### Parameters
|Param|Description|
|-----|-----------|
|`generatedHierarchy` |  The hierarchy availabe to the requested account. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumenNullException` |  if generatedHierarchy is null. |

### `HierarchyResponse(Exception error)`

Constructor for creating a failed response with an empty hierarchy.
#### Parameters
|Param|Description|
|-----|-----------|
|`error` |  The exception that prevented the successful generation of a hierarchy. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if error is null. |

---
## Properties

### `Hierarchy` → `Hierarchies`

The hierarchy generated for the specified account.

### `Levels` → `Integer`

The number of levels that the hierarchy covers.

### `NumberOfNodes` → `Integer`

The total number of nodes that exist in the hierarchies.

### `Result` → `Operation`

The OperationResult containing errors or details related to the processing of a request.

---
