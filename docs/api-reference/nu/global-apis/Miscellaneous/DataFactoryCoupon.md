# DataFactoryCoupon class

Exposes constants and methods commonly used for creating and inserting Coupon records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.

---
## Methods
### `createCoupon()` → `Coupon__c`

Creates a Coupon using default options. Also inserts basic Entity setup information - such as payment methods, credit card issuers, and order items configurations. This method should be used for testing purposes only.

#### Return

**Type**

Coupon__c

**Description**

a Coupon__c object

### `createCoupon(Id couponCodeId, Id accountId)` → `Coupon__c`

Creates a Coupon from the specified Account and Coupon Code Ids. This method should be used for testing purposes only.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Coupon Code for the Coupon |
|`Id` |  the Account assigned to the Coupon |

#### Return

**Type**

Coupon__c

**Description**

a Coupon__c object

### `insertCoupon()` → `Coupon__c`

Creates and inserts a Coupon using default options. Also inserts basic Entity setup information - such as payment methods, credit card issuers, and order items configurations. This method should be used for testing purposes only.

#### Return

**Type**

Coupon__c

**Description**

a Coupon__c object

### `insertCoupon(Id couponCodeId, Id accountId)` → `Coupon__c`

Creates and inserts a Coupon from the specified Account and Coupon Code Ids. This method should be used for testing purposes only.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Coupon Code for the Coupon |
|`Id` |  the Account assigned to the Coupon |

#### Return

**Type**

Coupon__c

**Description**

a Coupon__c object

---
