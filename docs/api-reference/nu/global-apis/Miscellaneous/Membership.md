# Membership class

An SObjectWrapper representing a Membership__c order history record.

---
## Constructors
### `Membership()`

Instantiates a history data record wrapper, setting the necessary fields to form a relationship between the Membership__c record we are ultimately creating and its associated OrderItem__c, OrderItemLine__c records.
---
## Properties

### `Donations` → `List<Donation>`

A list of Donation wrappers related to this membership. Used after insert to look up each donation to the membership (in addition to its usual lookup to an order item line).

### `EndDate` → `Date`

The end date for this membership.

### `ExcludeFromBilling` → `Boolean`

Whether ExcludeFromBilling is selected for this membership.

### `MembershipTypeId` → `String`

The membership type for this membership.

### `StartDate` → `Date`

The start date for this membership.

---
## Methods
### `isRecurring()` → `Boolean`

Gets whether the membership represented by this wrapper is being recurred or not. Note: Assumes that this membership represents the most up-to-date renewal (if there are any), since it checks only if the directly related Order Item is being recurred, and not any recurring schedules that might have spawned off it.

#### Return

**Type**

Boolean

**Description**

True if the membership is being recurred, false otherwise.

### `newInstance(Id membershipId)` → `Membership`

Creates a new Membership instance, wrapped the Membership__c record for the passed in Id.

#### Parameters
|Param|Description|
|-----|-----------|
|`membershipId` |  The Id of the record to wrap. |

#### Return

**Type**

Membership

**Description**

Membership instance.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if membershipId is null. |
|`ArgumentException` |  if no record is found for the passed in Id. |

---
