# ProductGridDetails class

Class to power the Product Grid LWC.

---
## Constructors
### `ProductGridDetails()`

Constructs a new ProductGridDetails.
---
## Properties

### `Filters` → `List<Filter>`

Filters related to this product grid.

### `Items` → `List<GridItem>`

The GridItems for display.

### `NextPage` → `Boolean`

Flag for if there are more records.

### `TotalRecords` → `Integer`

The total number of records.

---
## Methods
### `getGridItems(List<znu.ProductBase> productBases)` → `List<GridItem>`

Helper method to convert a list of znu.ProductBase to a list of GridItems.

#### Parameters
|Param|Description|
|-----|-----------|
|`productBases` |  List of znu.ProductBase to convert to GridItems for display in a Product Grid. |

#### Return

**Type**

List<GridItem>

**Description**

List of GridItems for display.

### `getGridItems(List<znu.ProductBase> productBases, String displayCurrencyCode)` → `List<GridItem>`

Helper method to convert a list of znu.ProductBase to a list of GridItems.

#### Parameters
|Param|Description|
|-----|-----------|
|`productBases` |  List of znu.ProductBase to convert to GridItems for display in a Product Grid. |
|`displayCurrencyCode` |  The currency ISO code to use for display purposes. |

#### Return

**Type**

List<GridItem>

**Description**

List of GridItems for display.

---
## Inner Classes

### ProductGridDetails.Filter class

Represents a filter for the product grid.

---
#### Constructors
##### `Filter()`

No-arg constructor.
##### `Filter(String type)`

Constructs a new filter of the provided type.
###### Parameters
|Param|Description|
|-----|-----------|
|`type` |  The type of filter this represents (e.g. Category). |

---
#### Properties

##### `Items` → `List<FilterItem>`

Items to filter by (e.g. Books, Publications).

##### `Type` → `String`

The type of filter (e.g. Category).

---
### ProductGridDetails.FilterItem class

Represents an item in a filter.

---
#### Constructors
##### `FilterItem()`

No-arg constructor.
##### `FilterItem(String label, String value, Integer displayOrder)`

Constructs a new filter item with the provided values.
###### Parameters
|Param|Description|
|-----|-----------|
|`label` |  The label of the item (e.g. Books). |
|`value` |  The value of the item (e.g. a Salesforce record id). |
|`displayOrder` |  The display order for the item. |

---
#### Properties

##### `ChildFilters` → `List<Filter>`

List of sub filters for this particular item.

##### `Count` → `Integer`

The total number of records that match this filter item.

##### `DisplayOrder` → `Integer`

The display order for this item.

##### `Label` → `String`

The label for the item.

##### `Selected` → `Boolean`

Flag for if this item is selected.

##### `Value` → `String`

The value that corresponds to this item.

---
### ProductGridDetails.GridItem class

Class that represents an item in the Product Grid.

---
#### Constructors
##### `GridItem(znu.ProductBase productBase)`

Constructs a new GridItem from a znu.ProductBase.
###### Parameters
|Param|Description|
|-----|-----------|
|`productBase` |  The znu.ProductBase record to display as a GridItem. |

##### `GridItem(znu.ProductBase productBase, String displayCurrencyCode)`

Constructs a new GridItem from a znu.ProductBase with a specific currency.
###### Parameters
|Param|Description|
|-----|-----------|
|`productBase` |  The znu.ProductBase record to display as a GridItem. |
|`displayCurrencyCode` |  The ISO Code of the currency to be used for display. |

---
#### Properties

##### `FormattedListPrice` → `String`

The List Price of the product, formatted for display. If product has variants, this will be a range (e.g. $9.99 - $12.99).

##### `FormattedMemberPrice` → `String`

The Member Price of the product, formatted for display. If product has variants, this will be a range (e.g. $9.99 - $12.99).

##### `Id` → `String`

The Id of the product.

##### `ImageUrl` → `String`

The Image URL of the product.

##### `ListPrice` → `Decimal`

The List Price of the product.

##### `MemberPrice` → `Decimal`

The Member Price of the product.

##### `Name` → `String`

The Name of the product.

##### `UserCurrencyCode` → `String`

The current user's preferred currency iso code.

##### `VariantListPrices` → `List<Decimal>`

The list prices of the variants.

##### `VariantMemberPrices` → `List<Decimal>`

The member prices of the variants.

##### `VariantTypes` → `List<String>`

A list of variants that exist for the product.

##### `VariantTypesFormatted` → `String`

Formatted variant types.

---
