# TermBasedItemDisplay class

Display order items and cart items for term based items such as Membership or Program renewals. In order for customizations or external packages to display start and end dates, a mutator must be provided to inject it into the packaged TermBasedItemDetails component.

---
## Constructors
### `TermBasedItemDisplay(List<SObject> records)`

Class constructor for the TermBasedItemDisplay class.
#### Parameters
|Param|Description|
|-----|-----------|
|`records` |  A list of SObjects. |

---
## Methods
### `setEndDate(Date endDate)` → `void`

Set the End Date of the Item Display.

#### Parameters
|Param|Description|
|-----|-----------|
|`endDate` |  The date to set the End Date to. |

### `setStartDate(Date startDate)` → `void`

Set the Start Date of the Item Display.

#### Parameters
|Param|Description|
|-----|-----------|
|`startDate` |  The date to set the Start Date to. |

---
