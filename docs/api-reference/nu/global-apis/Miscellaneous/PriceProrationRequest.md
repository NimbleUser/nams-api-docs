# PriceProrationRequest class

The parameter object for prorating a price based on a join date within a term for the PriceProrater class.

---
## Constructors
### `PriceProrationRequest()`
---
## Properties

### `EndDate` → `Date`

The end date of the term.

### `JoinDate` → `Date`

The join date within the term.

### `Price` → `Decimal`

The unprorated price.

### `ProrationRuleItemToApply` → `ProrationRuleItem__c`

The proration rule item to apply in case it's known ahead of time which one to apply.

### `ProrationRuleItems` → `List<ProrationRuleItem__c>`

The proration rule items to apply.

### `RoundingMode` → `String`

Rounding behaviour for the Price.

### `RoundingPrecision` → `Decimal`

The rounding precision for the Price.

### `StartDate` → `Date`

The start date of the term.

---
## Methods
### `getScale()` → `Integer`

Gets the scale needed for rounding the number of decimal places for the Price.

#### Return

**Type**

Integer

**Description**

Returns the scale for rounding the number of decimal places based on the RoundingPrecision value.

### `getSystemRoundingMode()` → `System.RoundingMode`

Gets the rounding mode needed for rounding the Price.

#### Return

**Type**

System.RoundingMode

**Description**

System.RoundingMode Returns the System.RoundingMode from the RoundingMode. If RoundingMode not set,

---
