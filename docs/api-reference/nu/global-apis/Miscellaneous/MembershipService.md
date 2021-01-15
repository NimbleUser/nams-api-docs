# MembershipService class

Exposes methods and functions commonly 		used outside of the package for Memberships.

---
## Methods
### `getFlowdownMembershipTypes()` → `List<MembershipType__c>`

Gets all Company Membership Types where the Flowdown Class field is not null.

#### Return

**Type**

List<MembershipType__c>

**Description**

A List of MembershipType__c objects.

### `getMembershipTypeById(Id membershipTypeId)` → `MembershipType__c`

Gets a Membership Type record from a specified Id.

#### Parameters
|Param|Description|
|-----|-----------|
|`membershipTypeId` |  The Id of the MembershipType__c object to be retrieved. |

#### Return

**Type**

MembershipType__c

**Description**

A MembershipType__c object.

### `getMembershipTypesByIds(Set<Id> membershipTypeIds)` → `List<MembershipType__c>`

Gets a list of MembershipType__c objects from a specified Set of Ids 		which includes a variety of custom and standard fields.

#### Parameters
|Param|Description|
|-----|-----------|
|`membershipTypeIds` |  The Set of Ids of MembershipType__c objects to be retrieved. |

#### Return

**Type**

List<MembershipType__c>

**Description**

A List of MembershipType__c objects.

---
