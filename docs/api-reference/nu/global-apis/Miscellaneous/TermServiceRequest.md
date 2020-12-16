# TermServiceRequest class

Represents a request to TermService.

---
## Constructors
### `TermServiceRequest(Id accountIdParam, Id typeIdParam, Set<Id> itemIdsParam)`

Builds a request for the term service.
#### Parameters
|Param|Description|
|-----|-----------|
|`accountIdParam` |  The account Id for the request. |
|`typeIdParam` |  The Type Id for the request. |
|`itemIdsParam` |  The Set of Ids for the items. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any param is null. |

---
## Properties

### `AccountId` → `Id`

The id of the account associated with the term-based product.

### `CartId` → `Id`

The id of a cart containing the term-based product in question.

### `Context` → `Object>`

The context for the request.

### `ItemIds` → `Set<Id>`

A set of individual term-based product id's to process in this request.

### `TypeId` → `Id`

The id of the term-based product's type.

---
