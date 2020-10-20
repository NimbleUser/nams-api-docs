## AffiliationsApiPersistenceService class

`NamespaceAccessible`

Service in charge of persisting [Affiliation](apis/AffiliationsApi/Affiliation.md) objects.

---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `commitWork()` → `void`

`NamespaceAccessible`

Commits all of the registered [Affiliation](apis/AffiliationsApi/Affiliation.md) objects into the database.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `register(Affiliation objectToRegister)` → `AffiliationsApiPersistenceService`

`NamespaceAccessible`

Registers an [Affiliation](apis/AffiliationsApi/Affiliation.md) for upsert. The [Affiliation](apis/AffiliationsApi/Affiliation.md) will be saved into the database when commitWork is called.

##### Parameters
|Param|Description|
|-----|-----------|
|`objectToRegister` |  The [Affiliation](apis/AffiliationsApi/Affiliation.md) object to register. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `register(List<Affiliation> objectsToRegister)` → `AffiliationsApiPersistenceService`

`NamespaceAccessible`

Registers a list of [Affiliation](apis/AffiliationsApi/Affiliation.md) for upsert. The [Affiliation](apis/AffiliationsApi/Affiliation.md) will be saved into the database when commitWork is called.

##### Parameters
|Param|Description|
|-----|-----------|
|`objectsToRegister` |  The list of [Affiliation](apis/AffiliationsApi/Affiliation.md) objects to register. |

<!-- panels:end -->
---
