## AffiliationsApiRetriever class

`NamespaceAccessible`

Responsible for retrieving [Affiliation](apis/AffiliationsApi/Affiliation.md) instances.

---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `get()` → `List<Affiliation>`

`NamespaceAccessible`

Returns all affiliations.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getById(Set<String> recordIds)` → `List<Affiliation>`

`NamespaceAccessible`

Returns the retrieved [Affiliation](apis/AffiliationsApi/Affiliation.md) objects by record Ids.

##### Parameters
|Param|Description|
|-----|-----------|
|`recordIds` |  Ids to get Affiliations by. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getById(String recordId)` → `Affiliation`

`NamespaceAccessible`

Returns the retrieved [Affiliation](apis/AffiliationsApi/Affiliation.md) object by record Id.

##### Parameters
|Param|Description|
|-----|-----------|
|`recordId` |  Id to get the Affiliation by. |

##### Throws
|Exception|Description|
|---------|-----------|
|`AffiliationsApiException` |  if the Affiliation is not found. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getChildAffiliations(Set<String> parentIds)` → `List<Affiliation>`

`NamespaceAccessible`

Returns the retrieved child [Affiliation](apis/AffiliationsApi/Affiliation.md) objects.

##### Parameters
|Param|Description|
|-----|-----------|
|`parentIds` |  The parent Id's to retrieve the child [Affiliation](apis/AffiliationsApi/Affiliation.md) objects for. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getParentAffiliations(Set<String> childIds)` → `List<Affiliation>`

`NamespaceAccessible`

Returns the retrieved parent [Affiliation](apis/AffiliationsApi/Affiliation.md) objects.

##### Parameters
|Param|Description|
|-----|-----------|
|`childIds` |  The child Id's to retrieve the parent [Affiliation](apis/AffiliationsApi/Affiliation.md) objects for. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getPlugins()` → `List<Pluggable>`

`NamespaceAccessible`

Gets the plugins associated with this retriever instance.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `with(Pluggable plugin)` → `AffiliationsApiRetriever`

`NamespaceAccessible`

Extends the [Affiliation](apis/AffiliationsApi/Affiliation.md) being retrieved based on the passed in [Pluggable](apis/Core/Pluggable.md).

##### Parameters
|Param|Description|
|-----|-----------|
|`plugin` |  [Pluggable](apis/Core/Pluggable.md) instance with the extension logic. |

<!-- panels:end -->
---
