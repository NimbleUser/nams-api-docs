## AffiliationsApiService class

`NamespaceAccessible`

Service class for the [AffiliationsApi](apis/AffiliationsApi/AffiliationsApi.md).

---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `affiliate(AccountBase childAccount, AccountBase parentAccount)` → `Affiliation`

`NamespaceAccessible`

Crates and inserts a new [Affiliation](apis/AffiliationsApi/Affiliation.md) between a parent and child [AccountBase](apis/AccountsApi/AccountBase.md).

##### Parameters
|Param|Description|
|-----|-----------|
|`childAccount` |  The child [AccountBase](apis/AccountsApi/AccountBase.md) to affiliate to the parent. |
|`parentAccount` |  The parent [AccountBase](apis/AccountsApi/AccountBase.md) to affiliate with. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `terminate(List<Affiliation> affiliations)` → `void`

`NamespaceAccessible`

Terminates a list of [Affiliation](apis/AffiliationsApi/Affiliation.md) objects.

##### Parameters
|Param|Description|
|-----|-----------|
|`affiliations` |  The [Affiliation](apis/AffiliationsApi/Affiliation.md) objects to terminate. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `terminate(Affiliation affiliation)` → `void`

`NamespaceAccessible`

Terminates an [Affiliation](apis/AffiliationsApi/Affiliation.md).

##### Parameters
|Param|Description|
|-----|-----------|
|`affiliation` |  The [Affiliation](apis/AffiliationsApi/Affiliation.md) to terminate. |

<!-- panels:end -->
---
