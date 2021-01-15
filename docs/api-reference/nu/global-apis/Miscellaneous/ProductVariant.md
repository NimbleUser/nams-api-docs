# ProductVariant class

Represents a product variant that is linked to a parent product.

---
## Constructors
### `ProductVariant(ProductBase baseRecord, ProductLink__c linkRecord)`

Constructs a ProductVariant instance.
#### Parameters
|Param|Description|
|-----|-----------|
|`baseRecord` |  The ProductBase that represents this product variant. |
|`linkRecord` |  The ProductLink__c with linking information. |

---
## Methods
### `getIsDefaultChild()` → `Boolean`

Gets whether or not this product variant is the default child.

#### Return

**Type**

Boolean

**Description**

True if default child, otherwise false.

### `getLinkType()` → `String`

Gets the type of product variant this is, e.g. Child Product, Related Product, etc.

#### Return

**Type**

String

**Description**

Type of product link, represented by the product record's record type.

### `getProduct()` → `ProductBase`

Gets the ProductBase for this product variant.

#### Return

**Type**

ProductBase

**Description**

The ProductBase that represents the product variant.

### `getUseChildProductDescription()` → `Boolean`

Gets whether or not to use the child product description.

#### Return

**Type**

Boolean

**Description**

True if use child product description, otherwise false.

### `getUseChildProductImage()` → `Boolean`

Gets whether or not to use the child product image.

#### Return

**Type**

Boolean

**Description**

True if use child product image, otherwise false.

### `getUseChildProductName()` → `Boolean`

Gets whether or not to use the child product name.

#### Return

**Type**

Boolean

**Description**

True if use child product name, otherwise false.

---
