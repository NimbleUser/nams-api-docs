# StandardMembershipFlowdownManager2 class

Exposes methods for the standard Membership Flowdown Manager. 		Performs actions to affiliated accounts when accounts, memberships, and affiliations are updated.

---
## Methods
### `onAccountsUpdated(Map<Id, Account> unchangedAccounts, Map<Id, Account> changedAccounts, Id membershipTypeId)` → `void`

Performs actions when Accounts are updated. Compares the old Membership lookup on the Account compared to the current Membership lookup to determine if the value is changing. Also compares the old Join On field on the Account compared to the current Join On field to determine if the value is changing. If these values are changing, affiliated accounts of the changed accounts will also be updated to the new value(s).

#### Parameters
|Param|Description|
|-----|-----------|
|`Map<Id,` |  Account> Map of Accounts with their old values |
|`Map<Id,` |  Account> Map of Accounts with their new values |
|`Id` |  the Id of the Membership Type |

### `onAffiliationsDeleted(Set<Id> deletedAffiliationIds, Id membershipTypeId)` → `void`

Performs actions when Affiliation records are deleted. Based on the Set of Affiliation Ids passed in, the child accounts will be retrieved and analyzed to determine if their Membership flowdown information should be updated and removed. Child accounts that should be get the membership information are then updated.

#### Parameters
|Param|Description|
|-----|-----------|
|`Set<Id>` |  Set of Ids of the deleted Affiliation records |
|`Id` |  the Id of the Membership Type |

### `onAffiliationsInserted(Set<Id> newAffiliationIds, Id membershipTypeId)` → `void`

Performs actions when Affiliation records are inserted. Based on the Set of Affiliation Ids passed in, the child accounts will be retrieved and analyzed to determine if they should receive the Membership flowdown information that is set on the parent account. Child accounts that should be get the membership information are then updated.

#### Parameters
|Param|Description|
|-----|-----------|
|`Set<Id>` |  Set of Ids of the new Affiliation records |
|`Id` |  the Id of the Membership Type |

### `onAffiliationsUpdated(Map<Id, Affiliation__c> unchangedAffiliations, Map<Id, Affiliation__c> changedAffiliations, Id membershipTypeId)` → `void`

Performs actions when Affiliations are updated. Handles use cases when the parent or child account values change for a primary affilation; the affiliation record becomes a primary affiliation; and the affiliation record is no longer a primary affilation. When these use cases are true, affiliated accounts will be updated if Membership information needs to flowdown (or un-flowdown) accordingly.

#### Parameters
|Param|Description|
|-----|-----------|
|`Map<Id,` |  Affiliation__c> Map of Affiliations with their old values |
|`Map<Id,` |  Affiliation__c> Map of Affiliations with their new values |
|`Id` |  the Id of the Membership Type |

### `onMembershipsUpdated(Map<Id, Membership__c> unchangedMemberships, Map<Id, Membership__c> changedMemberships, Id membershipTypeId)` → `void`

Performs actions when Memberships are updated.

#### Parameters
|Param|Description|
|-----|-----------|
|`Map<Id,` |  Membership__c> Map of Memberships with their old values |
|`Map<Id,` |  Membership__c> Map of Memberships with their new values |
|`Id` |  the Id of the Membership Type |

---
