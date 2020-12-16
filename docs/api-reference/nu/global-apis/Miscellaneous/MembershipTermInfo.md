# MembershipTermInfo class

Encapsulates values that express a membership term. 		Used with IMembershipTermCalculator implementations.

---
## Properties

### `EndDate` → `Date`

Exposes end date for a membership term.

### `MembershipLinkId` → `Id`

Exposes membership type product link Id for a membership term.

### `ProductId` → `Id`

Exposes product id for a membership term. This property is provided as a convenience. The Product Id shoud match the one stored by the MembershipTypeProductLink.

### `ProrationRuleItemApplied` → `ProrationRuleItem__c`

Exposes the Proration Rule Item that was applied to generate the Start and End Date. This property is provided as a convenience in case the same proration rule item has to be applied later for say pricing.

### `StartDate` → `Date`

Exposes start date for a membership term.

---
