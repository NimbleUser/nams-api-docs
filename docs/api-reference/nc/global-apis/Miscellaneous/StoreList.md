# StoreList class

Handles the control of record retrieval and messaging display for store products.

---
## Constructors
### `StoreList(Card card)`

Constructor for creating a StoreList instance with a relevant card record.
#### Parameters
|Param|Description|
|-----|-----------|
|`card` |  The Card record associated with the parent component controller. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if card is null. |

---
## Methods
### `getProducts()` → `List<ProductSummary>`

Retrieves products for display.

#### Return

**Type**

List<ProductSummary>

**Description**

A List<ProductSummary> of products to display.

---
