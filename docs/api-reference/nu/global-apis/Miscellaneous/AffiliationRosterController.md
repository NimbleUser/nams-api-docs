# AffiliationRosterController class

Controller for AffiliationRoster.page

---
## Methods
### `loadAccounts(Id root, List<Id> accountIds, Boolean isPrint)` → `List<Account>`

Loads a set of provided accounts by Id.

#### Parameters
|Param|Description|
|-----|-----------|
|`root` |  The id of the initial account to retrieve. |
|`accountIds` |  A list of further Id's to retrieve. |
|`isPrint` |  If true, pulls the fields to query from the |

#### Return

**Type**

List<Account>

**Description**

A list of accounts.

### `loadAllAccounts(Id root, Boolean isPrint)` → `List<Account>`

Loads all active accounts 		starting with a single parent and including all generations of children.

#### Parameters
|Param|Description|
|-----|-----------|
|`root` |  The id of the parent account to search from. |
|`isPrint` |  If true, pulls the fields to query from the |

#### Return

**Type**

List<Account>

**Description**

A list of accounts.

### `loadChildren(Id accountId, Boolean isPrint)` → `List<Account>`

Loads the child accounts of the provided account.

#### Parameters
|Param|Description|
|-----|-----------|
|`accountId` |  The Id of the parent account. |
|`isPrint` |  If true, pulls the fields to query from the |

#### Return

**Type**

List<Account>

**Description**

A list of accounts.

### `removeAffiliation(Id affiliationId)` → `void`

Deactivates a specified affiliation.

#### Parameters
|Param|Description|
|-----|-----------|
|`affiliationId` |  The id of the affiliation to deactivate. |

#### Return

**Type**

void

**Description**

void

---
