# IBuildHierarchies interface

IBuildHierarchies interface describes the implementation for a class that can be used to build representations of hierarchical data.

---
## Methods
### `buildHierarchies(HierarchyRequest request)` → `HierarchyResponse`

This method is called on classes that are used to build hierarchies.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  The request containing information necessary for generating the hierarchies. |

#### Return

**Type**

HierarchyResponse

**Description**

A HierarchyResponse containing hierarchical data or any errors that may have occurred.

---
