# CouponTestData class

Builder class for dealing with Coupon__c records. Solely used for testing, NOT a data factory.

---
## Properties

### `DefaultCoupon` → `Coupon__c`

Returns the most recently created Coupon. @return A Coupon__c record.

### `Instance` → `CouponTestData`

Gets an instance of CouponTestData. @return CouponTestData instance.

---
## Methods
### `create()` → `Coupon__c`

Builds the Coupon__c object.

#### Return

**Type**

Coupon__c

**Description**

The created Coupon__c object.

### `insertRecord()` → `Coupon__c`

Inserts the built Coupon__c.

#### Return

**Type**

Coupon__c

**Description**

The inserted Coupon__c object.

### `with(Schema.SObjectField field, Object value)` → `CouponTestData`

Dynamically sets the Schema.SObjectField noted by field to value for Coupons being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`field` |  The Schema.SObjectField to map the value to and cannot be null. |
|`value` |  The value for the field and can be set to null. |

#### Return

**Type**

CouponTestData

**Description**

The instance of CouponTestData.

---
