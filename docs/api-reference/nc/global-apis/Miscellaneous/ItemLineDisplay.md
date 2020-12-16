# ItemLineDisplay class

Wrapper classed used to represent order item lines and cart item lines.

---
## Constructors
### `ItemLineDisplay(SObject record)`

Class constructor for the ItemLineDisplay class.
#### Parameters
|Param|Description|
|-----|-----------|
|`record` |  An SObject that is either a cart item line or order item line. |

---
## Properties

### `DownloadUrl` → `String`

The URL to download this product if it is an order item line.

### `Id` → `global`

Id of the item line sObject this instance wraps.

### `IsCouponItemLine` → `Boolean`

Returns true if the current item line is a coupon.

### `MaxQuantity` → `Integer`

The maximum allowed quantity for this item line. @return Integer representing the maximum allowed quantity.

### `ProductName` → `String`

String representing the name of a product record.

### `Quantity` → `Integer`

Integer representing the number of products.

### `Total` → `Decimal`

Decimal representing the total price for this item line.

### `UnitPrice` → `Decimal`

Decimal representing the price of a single product.

---
## Methods
### `getIsCanceled()` → `Boolean`

Determines if this item line has been canceled.

#### Return

**Type**

Boolean

**Description**

False if this item line is not an order item line or if its associated product has a status of 'Active'.

### `getIsCancellationFeeLine()` → `Boolean`

Determines if this item line is associated with a cancellation fee product.

#### Return

**Type**

Boolean

**Description**

True if this item line is associated with a cancellation fee product, else false.

### `getIsDeleteable()` → `Boolean`

Returns true if the current item line is not a coupon. Can be overridden to change/extend functionality.

#### Return

**Type**

Boolean

**Description**

True if the current item line is deletable.

### `getIsEditable()` → `Boolean`

Determines if this item line should be editable on the page based upon the following criteria. 1. It is derived from a znu__CartItemLine__c record. 2. The znu__IsCommunityEditable__c field is set to true.

#### Return

**Type**

Boolean

**Description**

True if this item line is editable, else false.

### `getItemLine()` → `SObject`

Gets the item line record.

#### Return

**Type**

SObject

**Description**

The item line record.

### `getSObjectType()` → `Schema.SObjectType`

Gets the SObjectType for the item line record.

#### Return

**Type**

Schema.SObjectType

**Description**

The Schema.SObjectType of the item line record.

### `isInventoryAvailable()` → `Boolean`

Validates that inventory is available for the product.

#### Return

**Type**

Boolean

**Description**

Boolean indicating if inventory is available.

### `setProductNameOverride(String newProductName)` → `ItemLineDisplay`

Sets the product name override with the specified value.

#### Parameters
|Param|Description|
|-----|-----------|
|`newProductName` |  The new product name to override the default name. |

#### Return

**Type**

ItemLineDisplay

**Description**

The instance of ItemLineDisplay.

### `setTotalOverride(Decimal newTotal)` → `ItemLineDisplay`

Sets the total override with the specified value.

#### Parameters
|Param|Description|
|-----|-----------|
|`newTotal` |  The new total to override the default total. |

#### Return

**Type**

ItemLineDisplay

**Description**

The instance of ItemLineDisplay.

### `shouldDisplay()` → `Boolean`

Returns true if the current item line should be displayed to the user. Coupon item lines that are for entire orders will not be displayed by default. Can be overridden to change/extend functionality.

#### Return

**Type**

Boolean

**Description**

True if the current item line should be displayed.

### `validateQuantity()` → `OperationResult`

Validates the currently selected quantity for this item line. If valid, a successful operation result is returned. Otherwise, a failed operation result containing the proper error message is returned. Quantity is invalid if the product is out of stock, if the it exceeds the max quantity limit, if it is null, or if it is less than zero.

#### Return

**Type**

OperationResult

**Description**

OperationResult indicating if the current quantity is valid.

---
