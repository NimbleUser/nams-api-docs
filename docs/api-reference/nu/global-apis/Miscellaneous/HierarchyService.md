# HierarchyService class

The HierarchyService is used to request hierarchical data based on the specified record Id. This service defers the generation of hierarchical data to the implementation of the IBuildHierarchies interface which corresponds to the SObjectType of the specified record Id.

---
## Properties

### `Instance` → `HierarchyService`

Singleton instance of the HierarchyService.

---
## Methods
### `getHierarchies(HierarchyRequest request)` → `HierarchyResponse`

Generates hierarchies for the specified record by instantiating the IBuildHierachies class which corresponds to the SObjectType of the specified record Id.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  A request for hierarchies. |

#### Return

**Type**

HierarchyResponse

**Description**

A HierarchyResponse containing the generated hierarchies or any errors that occurred.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if request is null. |

---
