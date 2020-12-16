# GuestBundleComponent class

A specialized type of BundleComponent representing guest badge products.

---
## Methods
### `getCartItemIdentifier()` → `String`

Gets a cart item identifier for this bundle component.

#### Return

**Type**

String

**Description**

String identifier.

### `getCartItemLinesToRemove()` → `List<CartItemLine__c>`

Returns cart item lines to remove. If quantity is decreasing, the last cart item lines in the list will be deleted such that Quantity should always equal the number of cart item lines in the bundle.

#### Return

**Type**

List<CartItemLine__c>

**Description**

List<CartItemLine__c>

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

String value of the GuestBundleComponent class name.

### `toCartItemLines()` → `List<CartItemLine__c>`

Converts this bundle component to cart item lines, split out based on quantity selection.

#### Return

**Type**

List<CartItemLine__c>

**Description**

A list of CartItemLine__c records made from the bundle component.

---
