# DonationBundleComponent class

The Donation Bundle Component class is used to represent donation products.

---
## Properties

### `Purpose` → `String`

Represents the purpose of this donation product.

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

### `getIsPriceEditable()` → `Boolean`

Indicates that donation product prices are editable by users.

#### Return

**Type**

Boolean

**Description**

True. Donation product prices should be editable.

### `getType()` → `String`

Returns the class type name of this bundle component.

#### Return

**Type**

String

**Description**

String value of the DonationBundleComponent class name.

### `toCartItemLine()` → `CartItemLine__c`

Converts this bundle component to a cart item line.

#### Return

**Type**

CartItemLine__c

**Description**

A fresh CartItemLine__c made from the bundle component.

---
