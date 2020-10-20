## AffiliationsApiFactory class

`NamespaceAccessible`

In charge of creating [Affiliation](apis/AffiliationsApi/Affiliation.md) instances.

---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `create(List<SObject> records)` → `List<Affiliation>`

`NamespaceAccessible`

Creates a list of [Affiliation](apis/AffiliationsApi/Affiliation.md) objects based on the passed in records.

##### Parameters
|Param|Description|
|-----|-----------|
|`records` |  The records for which to create [Affiliation](apis/AffiliationsApi/Affiliation.md) objects. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `createNew(String childId, String parentId)` → `Affiliation`

`NamespaceAccessible`

Creates a new [Affiliation](apis/AffiliationsApi/Affiliation.md) for the provided child and parent Id's.

##### Parameters
|Param|Description|
|-----|-----------|
|`childId` |  The Id of the child. |
|`parentId` |  The Id of the parent. |

<!-- panels:end -->
---
