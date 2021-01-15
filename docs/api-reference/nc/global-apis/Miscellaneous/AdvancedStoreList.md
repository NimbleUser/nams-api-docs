# AdvancedStoreList class

Handles the control of record retrieval and display for store products.

---
## Constructors
### `AdvancedStoreList(QueryService querier, Card card)`

Constructor for creating an AdvancedStoreList instance.
#### Parameters
|Param|Description|
|-----|-----------|
|`querier` |  The QueryService object associated with the parent component controller. |
|`card` |  The Card record associated with the parent component controller. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any of the parameters are null. |

---
## Methods
### `getProducts()` → `List<ProductSummary>`

Retrieves products for display using the datasource specified in the card.

#### Return

**Type**

List<ProductSummary>

**Description**

A List<ProductSummary> of products to display.

---
