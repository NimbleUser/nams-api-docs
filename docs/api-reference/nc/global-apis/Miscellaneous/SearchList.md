# SearchList class

Handles the control of record retrieval and messaging display for store products based upon search queries.

---
## Constructors
### `SearchList(Card card, String search)`

Constructor for creating a SearchList instance with a relevant search query.
#### Parameters
|Param|Description|
|-----|-----------|
|`card` |  The Card record associated with the parent component controller. |
|`search` |  The query to search products for. |

---
## Methods
### `getProducts()` → `List<ProductSummary>`

Retrieves products for display.

#### Return

**Type**

List<ProductSummary>

**Description**

A List<ProductSummary> of products to display.

### `performSearch()` → `List<ProductSummary>`

Performs the search for products using SOSL to search for Product Ids based on SearchQuery and then uses the Ids to perform a SOQL query and build the ProductSummaries to return.

#### Return

**Type**

List<ProductSummary>

**Description**

List of ProductSummaries based on the search.

---
