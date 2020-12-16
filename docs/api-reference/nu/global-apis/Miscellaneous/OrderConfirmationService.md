# OrderConfirmationService class

A utility service for sending order confirmation emails.

---
## Properties

### `Instance` → `OrderConfirmationService`

Creates, caches, and provides a singleton instance of the OrderConfirmationService. @return An instance of the OrderConfirmationService.

---
## Methods
### `send(Request requestForSend)` → `Response`

Sends order confirmation emails for the specified request. 1.) If the ConfirmationEmail__c field is empty on a given order, it will fall back to #2. 2.) If the AdditionalEmail__c field is empty on a given order, it will fall back to #3. 3.) It will use the PersonEmail__c of the related BillTo__c account. Any additional emails in the comma separated AdditionalEmails__c field will be added on as a CC.

#### Parameters
|Param|Description|
|-----|-----------|
|`requestForSend` |  The request to send order confirmation emails for. |

#### Return

**Type**

Response

**Description**

A Response instance indicating the success or failure.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any argument is null. |

---
## Inner Classes

### OrderConfirmationService.Request class

A class for generating requests for interacting with the OrderConfirmationService.

---
#### Constructors
##### `Request(Set<Id> orderIdsForRequest)`

Creates a Request instanced based upon the specified order Ids.
###### Parameters
|Param|Description|
|-----|-----------|
|`orderIdsForRequest` |  The order Ids to request confirmations to be send for. |

###### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if orderIdsForRequest is null. |

##### `Request(Set<Id> orderIdsForRequest, String templateNameForRequest)`

Creates a Request instanced based upon the specified order Ids, using the specified template name.
###### Parameters
|Param|Description|
|-----|-----------|
|`orderIdsForRequest` |  The order Ids to request confirmations to be send for. |
|`templateNameForRequest` |  The email template name to send the confirmations with. |

###### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any argument is null. |

##### `Request(Set<Id> orderIdsForRequest, String templateNameForRequest, Boolean async)`

Creates a Request instanced based upon the specified order Ids, using the specified template name, and the provided async option.
###### Parameters
|Param|Description|
|-----|-----------|
|`orderIdsForRequest` |  The order Ids to request confirmations to be send for. |
|`templateNameForRequest` |  The email template name to send the confirmations with. |
|`async` |  If true, the email will be sent asynchronously. |

###### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any argument is null. |

---
#### Methods
##### `asAsync()` → `Request`

Sets the SendAsync flag to true for this Request.

###### Return

**Type**

Request

**Description**

Current instance of Request.

---
### OrderConfirmationService.Response class

A class which represents a response from an interaction with the OrderConfirmationService.

---
#### Properties

##### `Result` → `Operation`

An OperationResult indicating the success or failure of an interaction with the OrderConfirmationService.

---
