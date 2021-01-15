# MembershipBundleComponent class

The Membership Bundle Component class is used to represent membership products.

---
## Properties

### `DisplayClass` → `String`

Optional name of a class extending NU.MembershipBundleDisplay to use for display.

### `ParentProductLinkId` → `Id`

The parent membership type product link Id of this bundle component.

### `ProductLinkId` → `Id`

The membership type product link Id of this bundle component.

### `Purpose` → `String`

Represents the purpose of this membership product.

---
## Methods
### `getCartItemIdentifier()` → `String`

Gets a cart item identifier for this bundle component.

#### Return

**Type**

String

**Description**

String identifier.

### `getIdentifier()` → `String`

Used to generate a unique identifier that will distinguish this component from other bundle components.

#### Return

**Type**

String

**Description**

String representing identifier.

### `getType()` → `String`

Returns the class type name of this bundle component.

#### Return

**Type**

String

**Description**

String value of the MembershipBundleComponent class name.

### `setComponentDataFromCartRecords(CartItem__c cartItem, CartItemLine__c cartItemLine)` → `void`

Overrides the setting of component data so that cart items sourced from orders won't incorrectly increment start and end dates.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  Instance of BundleComponentRequest. |
|`` | m |
|`` | e |

#### Return

**Type**

void

**Description**

MembershipBundleComponent

### `toCartItemLine()` → `CartItemLine__c`

Converts this bundle component to a cart item line.

#### Return

**Type**

CartItemLine__c

**Description**

A fresh CartItemLine__c made from the bundle component.

---
