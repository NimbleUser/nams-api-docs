# MembershipItemLineDisplay class

Wrapper classed used to represent membership order item lines and cart item lines.

---
## Constructors
### `MembershipItemLineDisplay(SObject record, znu__MembershipTypeProductLink__c productLink)`

Class constructor for the MembershipItemLineDisplay class.
#### Parameters
|Param|Description|
|-----|-----------|
|`record` |  An SObject that is either a cart item line or order item line. |
|`productLink` |  The membership type product link associated to the item line. |

---
## Properties

### `IsPrimary` → `Boolean`

Boolean of true if the item line is a primary item line. Only supported for cart item lines.

### `MembershipTypeProductLinkId` → `Id`

Id of the membership type product link for this membership item line. Only supported for cart item lines.

---
