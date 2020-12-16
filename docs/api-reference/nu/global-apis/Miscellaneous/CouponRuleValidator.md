# CouponRuleValidator class

Base class that implements the default validation logic which determines whether or not a coupon code is valid. This class is used to validate coupon codes for all rules unless an override is explicity set on a coupon rule record.

---
## Constructors
### `CouponRuleValidator()`

Default constructor to allow sub-classing. This class should be instantiated using the newInstance methods.
---
## Methods
### `newInstance(CouponCode__c codeRecord)` → `CouponRuleValidator`

Creates a coupon rule validator instance from a coupon code record by referencing the related Coupon Rule record. If a validator class is not specified on the related coupon rule record, the default CouponRuleValidator class is used. If the related coupon rule record is null, the default CouponRuleValidator class is used.

#### Parameters
|Param|Description|
|-----|-----------|
|`codeRecord` |  The coupon code record to get the validator class from. |

#### Return

**Type**

CouponRuleValidator

**Description**

An instance of the CouponRuleValidator class.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if the parameter is null. |
|`ConfigurationException` |  if the class specified on the record does not exist or is not a descendant of |

### `newInstance(String typeName)` → `CouponRuleValidator`

Creates a coupon rule validator instance from the specified type name.

#### Parameters
|Param|Description|
|-----|-----------|
|`typeName` |  The name of the class to instantiate. |

#### Return

**Type**

CouponRuleValidator

**Description**

An instance of the CouponRuleValidator class.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if the parameter is null or blank. |
|`ConfigurationException` |  if the specified type does not exist or is not an instance of CouponRuleValidator. |

### `validate(Request request)` → `CouponValidator.ValidationResult`

Validates a single coupon code. A valid coupon code record does not have any related coupon records and is active. If the coupon code is valid, the result will contain the coupon code record. Otherwise, the result should include the error message instead. This method can be overridden to implement custom validation logic per coupon rule.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  The request containing the coupon code to validate. |

#### Return

**Type**

CouponValidator.ValidationResult

**Description**

A CouponValidator.ValidationResult instance.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if the request is null. |

---
## Inner Classes

### CouponRuleValidator.Request class

Request class for validating a coupon code.

---
#### Constructors
##### `Request(CouponCode__c codeRecord, Boolean isReapply, Map<String, Object> contextMap)`

Default constructor.
###### Parameters
|Param|Description|
|-----|-----------|
|`codeRecord` |  The record that will be validated. |
|`isReapply` |  A boolean that indicates whether or not this coupon code is being re-evalutated. |
|`contextMap` |  A map containing information that may be necessary in addition to the coupon code record. |

###### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any of the parameters are null. |

---
#### Properties

##### `Code` → `Coupon`

The coupon code record being validated.

##### `Context` → `Object>`

A map of strings to generic objects that can hold any necessary additional information.

##### `IsReapply` → `Boolean`

Boolean that indicates whether or not we are re-evaluating a coupon code as a result of a change to a cart.

---
#### Methods
##### `codeHasCoupons()` → `Boolean`

Returns true if the wrapped coupon code has related coupons.

###### Return

**Type**

Boolean

**Description**

True if the coupon code has coupons.

##### `codeHasStatus(String status)` → `Boolean`

Returns true if the wrapped coupon code has the specified status.

###### Parameters
|Param|Description|
|-----|-----------|
|`status` |  The value that will be compared to the coupon code. |

###### Return

**Type**

Boolean

**Description**

True if the coupon code has the specified status.

###### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if the status parameter is null or blank. |

##### `isCodeActive()` → `Boolean`

Returns true if the wrapped coupon code is active.

###### Return

**Type**

Boolean

**Description**

True if the coupon code is active.

##### `isCodeExpired()` → `Boolean`

Returns true if the wrapped coupon code is expired.

###### Return

**Type**

Boolean

**Description**

True if the coupon code is expired.

---
