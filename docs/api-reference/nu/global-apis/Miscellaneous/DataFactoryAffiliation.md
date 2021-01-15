# DataFactoryAffiliation class

Exposes constants and methods commonly used for creating and inserting affiliations. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.

---
## Methods
### `createAffiliation(Id childAccountId, Id parentAccountId, Boolean isPrimary)` → `Affiliation__c`

Creates an affiliation from the child account and parent account specified. If Boolean parameter is true, the affiliation is marked as primary. Does not flowdown address information.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the child account |
|`Id` |  the Id of the parent account |
|`Boolean` |  if true, affiliation will be marked as primary |

#### Return

**Type**

Affiliation__c

**Description**

an Affiliation__c object

### `createAffiliation(Id childAccountId, Id parentAccountId, Boolean isPrimary, Boolean doNotFlowdownAddress,Boolean isPrimaryContact)` → `Affiliation__c`

Creates an affiliation from the child account and parent account specified. If first Boolean parameter is true, the affiliation is marked as primary. If second Boolean parameter is true, flows down address information. If third Boolean parameter is true, the affiliation is marked as a primary contact.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the child account |
|`Id` |  the Id of the parent account |
|`Boolean` |  if true, affiliation will be marked as primary |
|`Boolean` |  if true, address information will be flowed down |
|`Boolean` |  if true, affiliation is marked as a primary contact |

#### Return

**Type**

Affiliation__c

**Description**

an Affiliation__c object

### `createAffiliation(Id childAccountId, Id parentAccountId, Boolean isPrimary, Boolean doNotFlowdownAddress)` → `Affiliation__c`

Creates an affiliation from the child account and parent account specified. If first Boolean parameter is true, the affiliation is marked as primary. If second Boolean parameter is true, flows down address information.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the child account |
|`Id` |  the Id of the parent account |
|`Boolean` |  if true, affiliation will be marked as primary |
|`Boolean` |  if true, address information will be flowed down |

#### Return

**Type**

Affiliation__c

**Description**

an Affiliation__c object

### `insertAffiliation(Id childAccountId, Id parentAccountId, Boolean isPrimary)` → `Affiliation__c`

Creates and inserts an affiliation from the child account and parent account specified. If Boolean parameter is true, the affiliation is marked as primary. Does not flowdown address information.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the child account |
|`Id` |  the Id of the parent account |
|`Boolean` |  if true, affiliation will be marked as primary |

#### Return

**Type**

Affiliation__c

**Description**

an Affiliation__c object

### `insertAffiliation(Id childAccountId, Id parentAccountId, Boolean isPrimary, Boolean doNotFlowdownAddress)` → `Affiliation__c`

Creates and inserts an affiliation from the child account and parent account specified. If first Boolean parameter is true, the affiliation is marked as primary. If second Boolean parameter is true, flows down address information.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the child account |
|`Id` |  the Id of the parent account |
|`Boolean` |  if true, affiliation will be marked as primary |
|`Boolean` |  if true, address information will be flowed down |

#### Return

**Type**

Affiliation__c

**Description**

an Affiliation__c object

### `insertAffiliation(Id childAccountId, Id parentAccountId, Boolean isPrimary, Boolean doNotFlowdownAddress,Boolean isPrimaryContact)` → `Affiliation__c`

Creates and inserts an affiliation from the child account and parent account specified. If first Boolean parameter is true, the affiliation is marked as primary. If second Boolean parameter is true, flows down address information. If third Boolean parameter is true, the affiliation is marked as a primary contact.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the child account |
|`Id` |  the Id of the parent account |
|`Boolean` |  if true, affiliation will be marked as primary |
|`Boolean` |  if true, address information will be flowed down |
|`Boolean` |  if true, affiliation is marked as a primary contact. |

#### Return

**Type**

Affiliation__c

**Description**

an Affiliation__c object

### `insertPrimaryAffiliations(Id parentAccountId, Set<Id> childAccountIds)` → `List<Affiliation__c>`

Creates and inserts affiliations from the child accounts and parent account specified. All affiliations are marked as primary. Does not flow down address information.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the parent account |
|`Set<Id>` |  a Set of child account Ids |

#### Return

**Type**

List<Affiliation__c>

**Description**

a List of Affiliation__c objects

---
