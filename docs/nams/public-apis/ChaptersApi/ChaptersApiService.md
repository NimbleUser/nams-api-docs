## ChaptersApiService class

`NamespaceAccessible`

Service class for the ChaptersApi.

---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `getAutoAssignableAccounts(Chapter sourceChapter)` → `List<AccountBase>`

`NamespaceAccessible`

Gets a list of [AccountBase](apis/AccountsApi/AccountBase.md) objects that can be automatically assigned to the passed in [Chapter](apis/ChaptersApi/Chapter.md) based on the chapter's auto assignment rule.

##### Parameters
|Param|Description|
|-----|-----------|
|`sourceChapter` |  The Chapter for which to get auto assignable accounts. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getAutoAssignableChapters(AccountBase context)` → `List<Chapter>`

`NamespaceAccessible`

Gets a list of [Chapter](apis/ChaptersApi/Chapter.md) objects for which, based on the chapter's auto assignment rule, the account can be auto-assigned to. If more than one chapter can be automatically assigned to the user, the list is returned in order of priority, as defined by the auto assignment rules.

##### Parameters
|Param|Description|
|-----|-----------|
|`context` |  The [AccountBase](apis/AccountsApi/AccountBase.md) object for which to get auto assignable chapters. |

<!-- panels:end -->
---
