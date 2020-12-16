# MembershipTermRequest class

Encapsulates values that initiate a membership term calculation. 		Used with IMembershipTermCalculator implementations.

---
## Properties

### `AccountId` → `Id`

Exposes Account Id.

### `CartId` → `Id`

Exposes Cart Id.

### `CartItemId` → `Id`

The current cart item id. When calculating membership terms, this cart item should be ignored.

### `Context` → `Object>`

Exposes extensible value storage for future use.

### `JoinDate` → `Date`

Exposes Join Date for this account and membership type.

### `MembershipTermRequestInfos` → `List<MembershipTermRequestInfo>`

Exposes collection of Membership Term Request Info records for this request.

### `MembershipTypeId` → `Id`

Exposes Membership Type Id. Should match the MembershipType records stored by the MembershipTermRequestInfos.

### `StartDateOverride` → `Date`

Specify a start date to be used when calculating proration.

---
