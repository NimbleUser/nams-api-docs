# CancellationService class

Various utility methods for the registration cancellation process.

---
## Properties

### `Instance` → `CancellationService`

Gets an instance of CancellationService. @return CancellationService instance.

---
## Methods
### `cancel(Request cancellationRequest)` → `CancellationService.Response`

Fetches all the cart item lines of a cart item associated with a specified order item and deletes them, preparing the cart item for cancellation. If the registration fails validation (account is not the customer, or the bill to), then a failed OperationResult is returned.

#### Parameters
|Param|Description|
|-----|-----------|
|`cancellationRequest` |  The Cancellation Request to utilize. |

#### Return

**Type**

CancellationService.Response

**Description**

CancellationService.Response indicating the success or failure of the operation.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if cancellationRequest is null. |
|`ArgumentException` |  if the cart contains no item lines with the specified order item Id. |

### `getCancellationStatuses(Request cancellationRequest)` → `CancellationStatuses`

Gets cancellation statuses for the specified request.

#### Parameters
|Param|Description|
|-----|-----------|
|`cancellationRequest` |  The Cancellation Request to utilize. |

#### Return

**Type**

CancellationStatuses

**Description**

An instance of CancellationStatuses indicating the statuses of the specified registrations in the request.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if cancellationRequest parameter is null. |

---
## Inner Classes

### CancellationService.CancellationStatuses class

Statuses regarding the cancellation eligibility of registrations, including any fees.

---
#### Methods
##### `getHasFeesToApply(Id registrationId)` → `Boolean`

Determines if the specified registration has cancellation fees.

###### Parameters
|Param|Description|
|-----|-----------|
|`registrationId` |  The registration Id to check. |

###### Return

**Type**

Boolean

**Description**

True if the specified registration has fees in order to cancel, else false.

###### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if the specified registrationId is null. |

##### `getIsCancelable(Id registrationId)` → `Boolean`

Determines if the specified registration is cancelable. The guidelines for cancellation eligibility are as follows: 1. IsCancellable is selected on the Event itself. 2. The registration modification cutoff date for the event has not passed. 3. The account requesting is the registrant, or the bill to on the order.

###### Parameters
|Param|Description|
|-----|-----------|
|`requestArg` |  The request which originated the call to get cancellation statuses. |
|`registrations` |  List of registrations to handle statuses for. |
|`feesByEventId` |  A map of cancellation fees by event Id. |
|`registrationId` |  The registration Id to check. |

###### Return

**Type**

Boolean

**Description**

True if the specified registration is cancelable, else false.

###### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any argument is null. |
|`ArgumentNullException` |  if the specified registrationId is null. |

---
### CancellationService.Request class

Create requests for handling cancellations in bulk for the specified Account.

---
#### Constructors
##### `Request(Id accountIdToCancelFor, List<Id> recordsToCancel)`

Constructs a cancellation request.
###### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any parameter is null. |

---
### CancellationService.Response class

Responses indicating the success, or failure of requested cancellation operations.

---
#### Properties

##### `CartIds` → `List<Id>`

The Ids of the adjustment carts containing the cancellations.

##### `Result` → `Operation`

The operation result of the cancellation.

---
