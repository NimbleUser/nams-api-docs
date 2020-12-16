# DataFactoryCouponCode class

Exposes constants and methods commonly used for creating and inserting Coupon Code records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.

---
## Methods
### `createCouponCode()` → `CouponCode__c`

Creates a Coupon Code and Flat Rate Coupon Rule using default options. Also inserts basic Entity setup information - such as payment methods, credit card issuers, and order items configurations. This method should be used for testing purposes only.

#### Return

**Type**

CouponCode__c

**Description**

a CouponCode__c object

### `createCouponCode(Id accountId)` → `CouponCode__c`

Deprecated. Use createCouponCode() instead. Creates a Coupon Code and Flat Rate Coupon Rule using default options and the specified Account Id. The Account Id can be blank.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Account assigned to the Coupon Code |

#### Return

**Type**

CouponCode__c

**Description**

a CouponCode__c object

### `createCouponCode(Id couponRuleId, Id accountId)` → `CouponCode__c`

Deprecated. Use createCouponCodeForCouponRule(couponRuleId) instead. Creates a Coupon Code from the specified Account and Coupon Rule Ids. The Coupon Rule Id is required, but the Account Id can be blank.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Coupon Rule for the Coupon Code |
|`Id` |  the Account assigned to the Coupon Code |

#### Return

**Type**

CouponCode__c

**Description**

a CouponCode__c object

### `createCouponCodeForCouponRule(Id couponRuleId)` → `CouponCode__c`

Creates a Coupon Code from the specified Coupon Rule Id.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Coupon Rule for the Coupon Code |

#### Return

**Type**

CouponCode__c

**Description**

a CouponCode__c object

### `insertCouponCode()` → `CouponCode__c`

Creates and inserts a Coupon Code and Flat Rate Coupon Rule using default options. Also inserts basic Entity setup information - such as payment methods, credit card issuers, and order items configurations. This method should be used for testing purposes only.

#### Return

**Type**

CouponCode__c

**Description**

a CouponCode__c object

### `insertCouponCode(Id accountId)` → `CouponCode__c`

Deprecated. Used insertCouponCode() instead. Creates and inserts a Coupon Code and Flat Rate Coupon Rule using default options and the specified Account Id. The Account Id can be blank.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Account assigned to the Coupon Code |

#### Return

**Type**

CouponCode__c

**Description**

a CouponCode__c object

### `insertCouponCode(Id couponRuleId, Id accountId)` → `CouponCode__c`

Deprecated. Use insertCouponCodeForCouponRule(couponRuleId) instead. Creates and inserts a Coupon Code from the specified Account and Coupon Rule Ids. The Coupon Rule Id is required, but the Account Id can be blank.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Coupon Rule for the Coupon Code |
|`Id` |  the Account assigned to the Coupon Code |

#### Return

**Type**

CouponCode__c

**Description**

a CouponCode__c object

### `insertCouponCodeForCouponRule(Id couponRuleId)` → `CouponCode__c`

Creates and inserts a Coupon Code from the specified Coupon Rule Id.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Coupon Rule for the Coupon Code |

#### Return

**Type**

CouponCode__c

**Description**

a CouponCode__c object

---
