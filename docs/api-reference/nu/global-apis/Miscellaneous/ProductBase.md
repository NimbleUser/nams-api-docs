# ProductBase class

Base abstract class that represents a product for the ProductsApi.

---
## Methods
### `addImage(IImage imageObject)` → `void`

Adds an image to the item.

#### Parameters
|Param|Description|
|-----|-----------|
|`imageObject` |  The IImage to add. |

### `getAttributes()` → `Attributes`

Returns all of the attributes related to this product wrapped in the Attributes collection.

#### Return

**Type**

Attributes

**Description**

return All attributes related to this product.

### `getDeferredRevenueMethodId()` → `Id`

Deferred Revenue Method Id of the wrapped record.

#### Return

**Type**

Id

**Description**

Deferred Revenue Method Id of the wrapped record.

### `getDescription()` → `String`

Returns the wrapped record's description.

#### Return

**Type**

String

**Description**

Description of the wrpped record.

### `getDisplayOrder()` → `Integer`

Order in which this object should be displayed in the UI.

#### Return

**Type**

Integer

**Description**

Order in which this object should be displayed in the UI.

### `getDownloadUrl()` → `String`

Returns the download URL for a downloadable item.

#### Return

**Type**

String

**Description**

The download URL for a downloadable item.

### `getEntityId()` → `Id`

Entity Id of the wrapped record.

#### Return

**Type**

Id

**Description**

Entity Id of the wrapped record.

### `getExternalId()` → `String`

External Id of the wrapped record.

#### Return

**Type**

String

**Description**

External Id of the wrapped record.

### `getFieldValue(Schema.SObjectField field)` → `Object`

Gets value based on an SObjectField.

#### Parameters
|Param|Description|
|-----|-----------|
|`field` |  The field to get the value from. |

#### Return

**Type**

Object

**Description**

Value from the field.

### `getFieldValue(String fieldName)` → `Object`

Gets value based on an SObjectField name.

#### Parameters
|Param|Description|
|-----|-----------|
|`field` |  The field to get the value from. |

#### Return

**Type**

Object

**Description**

Value from the field.

### `getId()` → `String`

Returns the Id of the wrapped record.

#### Return

**Type**

String

**Description**

Id of the wrapped record.

### `getImages()` → `List<IImage>`

Returns all images.

#### Return

**Type**

List<IImage>

**Description**

All images.

### `getInventory()` → `Integer`

Gets the total inventory.

#### Return

**Type**

Integer

**Description**

Total inventory.

### `getInventoryLastUpdated()` → `Datetime`

Gets date and time when the inventory was last updated.

#### Return

**Type**

Datetime

**Description**

Datetime representing when the inventory was last updated.

### `getInventoryOnHand()` → `Integer`

Gets the total inventory available.

#### Return

**Type**

Integer

**Description**

Total inventory available.

### `getInventoryUsed()` → `Integer`

Gets the total inventory used.

#### Return

**Type**

Integer

**Description**

Total inventory used.

### `getIsBillMeEnabled()` → `Boolean`

Whether the wrapped record is Bill Me enabled or not.

#### Return

**Type**

Boolean

**Description**

Whether the wrapped record is Bill Me enabled or not.

### `getIsDownloadable()` → `Boolean`

Whether this item is downloadable or not.

#### Return

**Type**

Boolean

**Description**

Whether this item is downloadable or not.

### `getIsInStock()` → `Boolean`

Whether the item is in stock or not.

#### Return

**Type**

Boolean

**Description**

Returns whether the item is in stock or not.

### `getIsSelfServiceEnabled()` → `Boolean`

Whether this product is Self Service enabled or not.

#### Return

**Type**

Boolean

**Description**

Whether this product is Self Service enabled or not.

### `getIsShippable()` → `Boolean`

Whether the item is shippable or not.

#### Return

**Type**

Boolean

**Description**

True if the item is shippable, false otherwise.

### `getIsTaxable()` → `Boolean`

Wether the item is taxable.

#### Return

**Type**

Boolean

**Description**

Wether the item is taxable.

### `getListPrice()` → `PriceBase`

Gets the PriceBase object that represents the list price of the product.

#### Return

**Type**

PriceBase

**Description**

PriceBase object that represents the list price of the product.

### `getName()` → `String`

Returns the name of the wrapped record.

#### Return

**Type**

String

**Description**

Name of the wrapped record.

### `getPrices()` → `Prices`

Returns all of the prices related to this product wrapped in the Prices collection.

#### Return

**Type**

Prices

**Description**

return All prices related to this product.

### `getQuantityMax()` → `Integer`

Gets the max quantity allowed to buy.

#### Return

**Type**

Integer

**Description**

Max quantity allowed to buy.

### `getRevenueGlAccountId()` → `Id`

GL Account Id of the wrapped record.

#### Return

**Type**

Id

**Description**

GL Account Id of the wrapped record.

### `getSelectedPrice()` → `PriceBase`

Gets the selected PriceBase object for the product.

#### Return

**Type**

PriceBase

**Description**

PriceBase object that represents the selected price of the product.

### `getShortDescription()` → `String`

Short description of the wrapped record.

#### Return

**Type**

String

**Description**

Short description of the wrapped record.

### `getShortName()` → `String`

Short name of the wrapped record.

#### Return

**Type**

String

**Description**

Short name of the wrapped record.

### `getStatus()` → `String`

Status of this product, e.g. Active, Inactive.

#### Return

**Type**

String

**Description**

Status of this product, e.g. Active, Inactive.

### `getTaxCode()` → `String`

Returns the tax code that represents this item.

#### Return

**Type**

String

**Description**

Tax code that represents this item.

### `getTrackInventory()` → `Boolean`

Gets whether or not inventory is tracked.

#### Return

**Type**

Boolean

**Description**

True if inventory is tracked, otherwise false.

### `getType()` → `String`

Gets the type of product this is, e.g. Merchandise, Membership, etc.

#### Return

**Type**

String

**Description**

Type of product, represented by the product record's record type.

### `getVariants()` → `List<ProductVariant>`

Returns all of the variants related to this product.

#### Return

**Type**

List<ProductVariant>

**Description**

return All variants related to this product.

### `getWeight()` → `Decimal`

The total weight of the item.

#### Return

**Type**

Decimal

**Description**

Total weight of the item.

### `hasImages()` → `Boolean`

Whether the item has images or not.

#### Return

**Type**

Boolean

**Description**

Whether the item has images or not.

### `setSelectedPrice(String priceType)` → `void`

Sets the selected PriceBase from the passed in price type.

#### Parameters
|Param|Description|
|-----|-----------|
|`priceType` |  The price type to select. |

---
