# PricingRequestBase class

Stores information needed to determine product pricing for an Account.

---
## Properties

### `AccountId` → `Id`

Holds the Id of the Account getting the pricing.

### `CartId` → `Id`

Holds the Id of the Cart getting the pricing.

### `Context` → `Object>`

-

### `EventId` → `Id`

Holds the Id of the Event getting the pricing.

### `MembershipTypeId` → `Id`

Holds the Id of the Membership Type in case membership pricing depends upon the Membership Type.

### `ProductIds` → `Set<Id>`

Allows custom price class logic to return different price classes depending on the products being priced.

### `TransactionDate` → `Datetime`

Holds the DateTime for the transaction - pricing could be dependent upon the day in which the purchase will be made.

---
