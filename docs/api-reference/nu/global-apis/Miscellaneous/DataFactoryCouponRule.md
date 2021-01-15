# DataFactoryCouponRule class

Exposes constants and methods commonly used for creating and inserting Coupon Rule records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.

---
## Methods
### `createCouponRule()` → `CouponRule__c`

Creates a Coupon Rule using default options. Also inserts basic Entity setup information - such as payment methods, credit card issuers, and order items configurations. This method should be used for testing purposes only.

#### Return

**Type**

CouponRule__c

**Description**

a CouponRule__c object

### `createCouponRule(Id entityId)` → `CouponRule__c`

Creates a Coupon Rule using the specified Entity Id and default options. This method should be used for testing purposes only.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity |

#### Return

**Type**

CouponRule__c

**Description**

a CouponRule__c object

### `createCouponRule(String couponRuleName)` → `CouponRule__c`

Creates a Coupon Rule using the specified name and default options. Also inserts basic Entity setup information - such as payment methods, credit card issuers, and order items configurations. This method should be used for testing purposes only.

#### Parameters
|Param|Description|
|-----|-----------|
|`String` |  the name of the Coupon Rule |

#### Return

**Type**

CouponRule__c

**Description**

a CouponRule__c object

### `createFlatRateCouponRule(String couponRuleName)` → `CouponRule__c`

Creates a Flat Rate Coupon Rule using the specified name and default options. Also inserts basic Entity setup information - such as payment methods, credit card issuers, and order items configurations. This method should be used for testing purposes only.

#### Parameters
|Param|Description|
|-----|-----------|
|`String` |  the name of the Coupon Rule |

#### Return

**Type**

CouponRule__c

**Description**

a CouponRule__c object

### `createPercentRateCouponRule(String couponRuleName)` → `CouponRule__c`

Creates a Percent Rate Coupon Rule using the specified name and default options. Also inserts basic Entity setup information - such as payment methods, credit card issuers, and order items configurations. This method should be used for testing purposes only.

#### Parameters
|Param|Description|
|-----|-----------|
|`String` |  the name of the Coupon Rule |

#### Return

**Type**

CouponRule__c

**Description**

a CouponRule__c object

### `insertCouponRule()` → `CouponRule__c`

Creates and inserts a Flat Rate Coupon Rule using default options. Also inserts basic Entity setup information - such as payment methods, credit card issuers, and order items configurations. This method should be used for testing purposes only.

#### Return

**Type**

CouponRule__c

**Description**

a CouponRule__c object

### `insertCouponRule(Id entityId)` → `CouponRule__c`

Creates and inserts a Flat Rate Coupon Rule using the specified Entity Id and default options. This method should be used for testing purposes only.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity |

#### Return

**Type**

CouponRule__c

**Description**

a CouponRule__c object

### `insertFlatRateCouponRule(String couponRuleName)` → `CouponRule__c`

Creates and inserts a Flat Rate Coupon Rule using the specified name and default options. Also inserts basic Entity setup information - such as payment methods, credit card issuers, and order items configurations. This method should be used for testing purposes only.

#### Parameters
|Param|Description|
|-----|-----------|
|`String` |  the name of the Coupon Rule |

#### Return

**Type**

CouponRule__c

**Description**

a CouponRule__c object

### `insertFlatRateCouponRule()` → `CouponRule__c`

Creates and inserts a Flat Rate Coupon Rule using the specified name and default options. Also inserts basic Entity setup information - such as payment methods, credit card issuers, and order items configurations. This method should be used for testing purposes only.

#### Return

**Type**

CouponRule__c

**Description**

a CouponRule__c object

### `insertPercentRateCouponRule(String couponRuleName)` → `CouponRule__c`

Creates and inserts a Percent Rate Coupon Rule using the specified name and default options. Also inserts basic Entity setup information - such as payment methods, credit card issuers, and order items configurations. This method should be used for testing purposes only.

#### Parameters
|Param|Description|
|-----|-----------|
|`String` |  the name of the Coupon Rule |

#### Return

**Type**

CouponRule__c

**Description**

a CouponRule__c object

### `insertPercentRateCouponRule()` → `CouponRule__c`

Creates and inserts a Percent Rate Coupon Rule using the specified name and default options. Also inserts basic Entity setup information - such as payment methods, credit card issuers, and order items configurations. This method should be used for testing purposes only.

#### Return

**Type**

CouponRule__c

**Description**

a CouponRule__c object

---
