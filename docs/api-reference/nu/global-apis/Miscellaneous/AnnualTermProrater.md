# AnnualTermProrater class

Prorates an Annual term based on the Term Proration Request given and puts the term 		in the TermProrationResponse.

---
## Properties

### `JOIN_DATE_NULL_VAL_STR` → `String`

### `MEMBERSHIP_TYPE_NULL_VAL_STR` → `String`

### `MEMBERSHIP_TYPE_PRODUCT_LINK_NULL_VAL_STR` → `String`

### `PRORATION_RULE_ITEMS_EMPTY_VAL_STR` → `String`

### `PRORATION_RULE_ITEMS_NULL_VAL_STR` → `String`

### `TERM_PRORATION_REQUEST_NULL_VAL_STR` → `String`

---
## Methods
### `prorateAnnualTerm(TermProrationRequest request)` → `TermProrationResponse`

Prorates an annual term based on the join date, Membership Type Product Link, 		Membership Type and Proration Rule Items given and outputs the result in the returned 		TermProrationResponse. 		Note: Validation is performed to confirm that the Proration Request is not null, 		the join date is not null, the membership type is not null, the membership type 		product link is not null, and that there are proration rule items.

#### Parameters
|Param|Description|
|-----|-----------|
|`TermProrationRequest` |  The parameters used for the annual term proration. |

#### Return

**Type**

TermProrationResponse

**Description**

TermProrationResponse containing the prorated term and the Proration Rule Item Applied, if any.

---
