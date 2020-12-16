# PaymentGatewayService class

Allows interaction with a payment gateway for purposes of authorizing, voiding, refunding credit cards.

---
## Properties

### `Instance` → `PaymentGatewayService`

A static singleton access for retrieving a shared instance of PaymentGatewayService. @return An instance of PaymentGatewayService

---
## Methods
### `getPaymentGateway(Id recordId)` → `PaymentGateway__c`

Retrieves the PaymentGateway__c record associated with the supplied Entity Id or Gateway Id. Does not support multiple payment gateways, instead just returning the first one found.

#### Parameters
|Param|Description|
|-----|-----------|
|`recordId` |  The Id of the Entity whose PaymentGateway__c we are retrieving, or the Id of a payment gateway |

#### Return

**Type**

PaymentGateway__c

**Description**

The PaymentGateway__c record associated with the provided Entity Id or Gateway Id.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if recordId is null. |

### `getRefundPeriod(Id recordId)` → `Integer`

Gets the number of days since payment that refund is allowed. If the value on the gateway record is null, returns the legacy refund period. May return zero which is intended to represent no limit at all.

#### Parameters
|Param|Description|
|-----|-----------|
|`recordId` |  The Id of the Entity__c whose PaymentGateway__c we are checking, or the Id of a payment gateway |

#### Return

**Type**

Integer

**Description**

The number of days refund is eligible. If no record Id specified, or gateway record not found, returns

### `parseCreditCardName(String name)` → `CreditCardNameResponse`

Parses a name into first and last name.

#### Parameters
|Param|Description|
|-----|-----------|
|`name` |  The full name to split into first and last name. |

#### Return

**Type**

CreditCardNameResponse

**Description**

A list of two strings - the first one is the first name, the second is the last name.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any parameter is null. |

---
