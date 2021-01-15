# ProductsApiRetriever class

In charge of retrieving product data and returning the corresponding Product wrappers.

---
## Methods
### `count()` → `Integer`

Returns the number of products that would result from executing the query.

#### Return

**Type**

Integer

**Description**

The number of products that would result from the query execution.

### `get()` → `List<ProductBase>`

Returns all products wrapped, based on the filters applied to the retriever.

#### Return

**Type**

List<ProductBase>

**Description**

Wrapped products.

### `getById(Set<Id> recordIds)` → `List<ProductBase>`

Returns wrapped products by record Ids.

#### Parameters
|Param|Description|
|-----|-----------|
|`recordIds` |  Ids to get Products by. |

#### Return

**Type**

List<ProductBase>

**Description**

Wrapped products.

### `with(Pluggable plugin)` → `ProductsApiRetriever`

Extends the ProductBase being retrieved based on the passed in Pluggable.

#### Parameters
|Param|Description|
|-----|-----------|
|`plugin` |  Pluggable instance with the extension logic. |

#### Return

**Type**

ProductsApiRetriever

**Description**

Updated ProductsApiRetriever instance with the registered extension.

---
