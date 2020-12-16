# ProductsApiV1 class

Version 1 implementation of the ProductsApi. Do not call directly, but through ProductsApi.v1.

---
## Methods
### `getById(Set<Id> recordIds)` → `List<ProductBase>`

Get Product objects by their record Ids.

#### Parameters
|Param|Description|
|-----|-----------|
|`recordIds` |  Record Ids to get Products by. |

#### Return

**Type**

List<ProductBase>

**Description**

Wrapped products.

### `retriever()` → `ProductsApiV1Retriever`

Gets the configured ProductsApiV1Retriever.

#### Return

**Type**

ProductsApiV1Retriever

**Description**

The configured ProductsApiV1Retriever.

---
