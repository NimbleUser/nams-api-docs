# CouponService class

Used for validating coupon codes.

---
## Properties

### `Instance` → `CouponService`

Returns an instance of the CouponService.

---
## Methods
### `apply(Id cartId, String couponCode)` → `OperationResult`

Attempts to apply the given coupon code to the cart. If successful, the cart will be updated with the discount.

#### Parameters
|Param|Description|
|-----|-----------|
|`cartId` |  The cart to which to apply the coupon code. |
|`couponCode` |  The coupon code to apply. |

#### Return

**Type**

OperationResult

**Description**

The result of the operation.

### `apply(Order orderInstance, Set<String> couponsToApply)` → `OperationResult`

Applies coupon codes to the passed in order.

#### Parameters
|Param|Description|
|-----|-----------|
|`orderInstance` |  The order to apply coupons to. |
|`couponsToApply` |  The coupons to apply. |

#### Return

**Type**

OperationResult

**Description**

OperationResult with the result of the operation.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any of the arguments are null. |

---
