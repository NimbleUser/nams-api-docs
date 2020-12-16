# PriceProrater class

Prorates a term based price based on the join date within the term as given by the start and end date and the proration rule items.

---
## Properties

### `END_DATE_NULL_VAL_STR` → `String`

### `JOIN_DATE_NULL_VAL_STR` → `String`

### `NULL_PRICE_PRORATION_REQUEST_VAL_STR` → `String`

### `PRICE_NULL_VAL_STR` → `String`

### `PRORATION_RULE_ITEMS_NULL_VAL_STR` → `String`

### `START_DATE_NULL_VAL_STR` → `String`

---
## Methods
### `proratePrice(PriceProrationRequest request)` → `PriceProrationResponse`

Prorates the price when the join date is within the term as given by the start and end date and there's a proration rule item for that term month. If there is a proration rule item for that term month, the price is multiplied by the proration rule item's Percentage Amount rounded to 2 decimal places and that is returned. If no proration is performed, the price is returned. The proration rule item to use is determined by its Term Month and the relative join month within the term. If the join date is within the Start Date's month, the term month is 1. If the join date is in the month after the Start Date's month, the term month is 2 and so on. After the Term Month is calculated, a proration rule item whose Term Month equals the calculated one is searched in the given proration rule items. If one is found, that proration rule item's Percentage Amount is multipled by the given price to calculate the prorated price. Note: Exceptions are thrown if the priceProrationRequest or any of its properties are null.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  The parameters for the price proration. |

#### Return

**Type**

PriceProrationResponse

**Description**

Prorated Price

---
