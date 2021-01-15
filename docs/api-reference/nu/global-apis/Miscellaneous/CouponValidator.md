# CouponValidator class

This class is used to validate coupon codes to determine whether or not coupon codes can be applied. This class is primarily used to query the records necessary for coupon validation. The actual validation for a single coupon is handled by instances of the CouponRuleValidator class. This class can be overridden to customize the data that needs to be queried.

---
## Constructors
### `CouponValidator()`

Default constructor to allow for sub-classing. This class should be instantiated using the newInstance method.
---
## Methods
### `getAdditionalQueryResults(Request request)` → `Object>`

Takes in a request and uses it while querying additional records to use for coupon validation. Additional records will be queried if queries are specified on the Nimble AMS configure page. This method is global protected and should only be used internally. The method allows custom implementations of the CouponValidator class to take advantage of the additional Query records specified for Coupon Validation. Any exceptions that occur while trying to retrieve records are logged in the logger configured for this org. In order to send the notifications, Logger.flush() must be called by an external method.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  The request that contains the coupon code and the id of the account who is trying to use it. |

#### Return

**Type**

Object>

**Description**

A map with String keys representing the names of Query records and the values representing query results.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if the request is null. |

### `getValidationData(Request request)` → `Data`

Takes in a request and queries the coupon code records that need to validated. The validate method calls this method to get the records necessary for validation. This method can be overridden if additional data needs to be queried. In order to be compatible with standard validation, the queried coupon codes need to include: - the status field - related coupon rule with the ValidatorClass field - related coupon records for the specified account which are not cancelled. In addition to overriding this method, the validation data can be configured by specifying query records to use on the Nimble AMS configure page. Any exceptions that occur while trying to use query records will be logged and notifications will be sent using whichever logging tool is configured for the org.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  The request that contains the coupon code and the id of the account who is trying to use it. |

#### Return

**Type**

Data

**Description**

A Data instance that contains the Coupon Code records that need to be validated.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if the request is null. |

### `newInstance()` → `CouponValidator`

Instantiates the CouponValidator. If an override is specified on the NimbleAMSSettings, then this method attempts to instantiate the sub-class. If any exceptions are thrown they will be caught and the base CouponValidator class will be returned.

#### Return

**Type**

CouponValidator

**Description**

An instance of CouponValidator.

### `queryCouponCodes(Request request)` → `List<CouponCode__c>`

Takes in a request and queries the possible coupon codes. If specified on the Nimble AMS configure page, a Query record can be used to determine what coupon codes will be queried. This method is global protected and should only be used internally. The method allows custom implementations of the CouponValidator class to take advantage of the Query record override. Any exceptions that occur while trying to retrieve records are logged in the logger configured for this org. In order to send the notifications, Logger.flush() must be called by an external method.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  The request that contains the coupon code and the id of the account who is trying to use it. |

#### Return

**Type**

List<CouponCode__c>

**Description**

A list of coupon code records.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if the request is null. |

### `validate(Request request)` → `ValidationResult`

Takes in a request and queries the possible coupon codes. For each possible coupon code, a CouponRuleValidator is instantiated that will indicate if a single code can be used. This method will return the first valid result that is found. This method can be overridden.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  The request that contains the coupon code and the id of the account who is trying to use it. |

#### Return

**Type**

ValidationResult

**Description**

A ValidationResult that contains any errors or the coupon code record that will be applied.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if the request is null. |

---
## Inner Classes

### CouponValidator.Data class

This class holds the data needed for validating a coupon code. Minimally, this class needs to contain a list of coupon code records. If additional data is required, it can be stored in the Context map.

---
#### Constructors
##### `Data(List<CouponCode__c> couponCodes)`

Default constructor.
###### Parameters
|Param|Description|
|-----|-----------|
|`couponCodes` |  The coupon codes that will be used for the validation. |

###### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if the couponCodes parameter is null. |

---
#### Properties

##### `Codes` → `List<CouponCode__c>`

Holds the coupon codes that will be used for validation.

##### `Context` → `Object>`

A map of generic objects that can be used to store any additional information that may be necessary for coupon validation.

---
### CouponValidator.Request class

Request class for validating a coupon code.

---
#### Constructors
##### `Request(String code, Id accountId, Boolean isReapply)`

Default constructor.
###### Parameters
|Param|Description|
|-----|-----------|
|`code` |  The coupon code that needs to be validated. |
|`accountId` |  The Id of the account who is trying to apply the coupon code. |
|`isReapply` |  A boolean to indicate whether or not the coupon code is being reapplied to a cart. |

---
#### Properties

##### `AccountId` → `Id`

The id of the account who is attempting to use a coupon code.

##### `Code` → `String`

A string that represents the coupon code that needs to be validated.

##### `IsReapply` → `Boolean`

A boolean that indicates whether or not this coupon is being reapplied to the cart. By default, this is false.

---
### CouponValidator.ValidationResult class

Inner class that holds the result of coupon validation.

---
#### Constructors
##### `ValidationResult(CouponCode__c couponCode)`

Constructor used when a coupon code is deemed valid.
###### Parameters
|Param|Description|
|-----|-----------|
|`couponCode` |  The valid coupon code. |

###### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if the coupon code is null. |

##### `ValidationResult(String message)`

Constructor used when a coupon code is deemed invalid and we need to pass back the error message.
###### Parameters
|Param|Description|
|-----|-----------|
|`message` |  The message to display. |

###### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if the message is null or blank. |

---
#### Properties

##### `CouponCode` → `global`

Holds the coupon code record, if a valid match was found.

##### `Message` → `String`

Holds the message to display if a valid match was not found.

---
#### Methods
##### `getIsValid()` → `Boolean`

Determines if the result is valid based on whether or not the CouponCode has been populated.

###### Return

**Type**

Boolean

**Description**

True if the CouponCode property is not null.

---
