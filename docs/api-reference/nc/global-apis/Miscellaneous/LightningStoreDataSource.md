# LightningStoreDataSource class

Data source for the Product Grid used in the Lightning Store.

---
## Methods
### `getAccountId()` → `Id`

Gets the Account Id associated to the products grid. Used for pricing.

#### Return

**Type**

Id

**Description**

The current logged in account id.

### `getAdditionalConditions()` → `List<znu.QCondition>`

Gets any additional znu.QConditions to apply to the products query.

#### Return

**Type**

List<znu.QCondition>

**Description**

The List of znu.QConditions for the products query.

### `getBaseConditions()` → `List<znu.QCondition>`

Gets the base znu.QConditions to apply to the products query.

#### Return

**Type**

List<znu.QCondition>

**Description**

The List of znu.QConditions for the products query.

### `getConditions(String searchTerm)` → `List<znu.QCondition>`

Gets the znu.QConditions to apply to the product queries.

#### Parameters
|Param|Description|
|-----|-----------|
|`searchTerm` |  The search term to filter by. |

#### Return

**Type**

List<znu.QCondition>

**Description**

The List of znu.QConditions to apply to the product query.

### `getData(DataSource.Request request)` → `Object`

Gets the ProductGridDetails data to power the Product Grid LWC.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  A DataSource.Request instance. Not used. |

#### Return

**Type**

Object

**Description**

ProductGridDetails object with data to power the Product Grid.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if request is null. |

### `getGridFilters()` → `List<ProductGridDetails.Filter>`

Gets the filters associated with the product grid. This implementation gets the categories filter.

#### Return

**Type**

List<ProductGridDetails.Filter>

**Description**

The filters for the grid.

### `getItems(Integer queryLimit, Integer queryOffset, String searchTerm)` → `List<znu.ProductBase>`

This method is deprecated. Use getItems(Integer queryLimit, Integer queryOffset, String searchTerm, List<ProductGridDetails.Filter> filters) instead.

#### Throws
|Exception|Description|
|---------|-----------|
|`` | n |

### `getItems(Integer queryLimit, Integer queryOffset, String searchTerm,List<ProductGridDetails.Filter> filters)` → `List<znu.ProductBase>`

Gets the current page's items for the product grid based off of the filter criteria.

#### Parameters
|Param|Description|
|-----|-----------|
|`queryLimit` |  The limit to add to the query. |
|`queryOffset` |  The offset to add to the query. |
|`searchTerm` |  The search term to filter by. Filters the Name field in this implementation. |
|`filters` |  The list of filters to apply to the query. |

#### Return

**Type**

List<znu.ProductBase>

**Description**

The list of items for the product grid's current page.

### `getSObjectType()` → `Schema.SObjectType`

Gets the type of SObject returned by the data source: a symbolic znu__Product__c since we are technically actually dealing with ProductGridDetails.

#### Return

**Type**

Schema.SObjectType

**Description**

The znu__Product__c SObjectType.

### `getSearchConditions(String searchTerm)` → `List<znu.QCondition>`

Gets the search znu.QConditions to apply to the products query. Only called in the base implementation if the search term is not blank.

#### Parameters
|Param|Description|
|-----|-----------|
|`searchTerm` |  The search term to apply to the filtering. |

#### Return

**Type**

List<znu.QCondition>

**Description**

The List of znu.QConditions for the products query.

### `getTotalRecordCount(String searchTerm)` → `Integer`

This method is deprecated. Use getTotalRecordCount(String searchTerm, List<ProductGridDetails.Filter> filters) instead.

#### Throws
|Exception|Description|
|---------|-----------|
|`` | n |

### `getTotalRecordCount(String searchTerm, List<ProductGridDetails.Filter> filters)` → `Integer`

Runs a count query to get the total number of records in the product grid.

#### Parameters
|Param|Description|
|-----|-----------|
|`searchTerm` |  The search term to filter by. Filters the Name field in this implementation. |
|`filters` |  The list of filters to apply to the query. |

#### Return

**Type**

Integer

**Description**

The total number of records in the product grid.

### `getVariantConditions()` → `List<znu.QCondition>`

Gets the znu.QConditions to apply to the variants sub-query.

#### Return

**Type**

List<znu.QCondition>

**Description**

The List of znu.QConditions for the variants sub-query.

---
