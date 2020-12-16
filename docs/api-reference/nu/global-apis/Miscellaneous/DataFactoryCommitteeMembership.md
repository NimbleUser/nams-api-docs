# DataFactoryCommitteeMembership class

Exposes constants and methods commonly used for creating and inserting Committee Membership records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.

---
## Methods
### `createCommitteeMembership(Id committeeId, Id accountId)` → `CommitteeMembership__c`

Creates a Committee Membership for the specified Committee and Account Ids.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Committee record |
|`Id` |  the Id of the Account record |

#### Return

**Type**

CommitteeMembership__c

**Description**

a CommitteeMembership__c object

### `insertCommitteeMembership(Id committeeId, Id accountId)` → `CommitteeMembership__c`

Creates and inserts a Committee Membership for the specified Committee and Account Ids.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Committee record |
|`Id` |  the Id of the Account record |

#### Return

**Type**

CommitteeMembership__c

**Description**

a CommitteeMembership__c object

---
