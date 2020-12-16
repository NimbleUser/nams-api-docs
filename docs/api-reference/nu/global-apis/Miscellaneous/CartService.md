# CartService class

Used for creating carts, clearing items from a cart, and updating a cart based on selection of bundle components.

---
## Properties

### `Instance` → `CartService`

Creates, caches, and provides a singleton instance of the CartService. @return An instance of the CartService.

---
## Methods
### `clear(Id cartId)` → `OperationResult`

Deletes items and item lines from a cart.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  - Id of Cart__c sObject that should have items and item lines removed. |

#### Return

**Type**

OperationResult

**Description**

An OperationResult.

### `insertForAccount(Id accountId)` → `Id`

Inserts a new Cart__c for the specified account.

#### Parameters
|Param|Description|
|-----|-----------|
|`accountId` |  - the Id of the account who will be set as the BillTo__c Id. |

#### Return

**Type**

Id

**Description**

The Id of a newly inserted Cart__c record.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  If accountId is null. |
|`ArgumentException` |  If accountId is of the incorrect type. |
|`ConfigurationException` |  If the default entity is not set. |

### `insertForAccountAndEntity(Id accountId, Id entityId)` → `Id`

Inserts a new cart for the specified account and entity.

#### Parameters
|Param|Description|
|-----|-----------|
|`accountId` |  The id of the account that will be set as the Bill To. |
|`entityId` |  The id of the entity the cart will belong to. |

#### Return

**Type**

Id

**Description**

The id of the newly inserted cart record.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  If accountId or entityId is null. |
|`ArgumentException` |  If accountId or entityId is of the incorrect type. |

### `save(SaveCartRequest request)` → `SaveCartResponse`

Updates the supplied cart based on the supplied bundle.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  A save request. See SaveCartRequest.cls for details. |

#### Return

**Type**

SaveCartResponse

**Description**

A new instance of a Cart__c sObject.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentException` |  if a cart with the Id specified on the request does not exist. |
|`ArgumentException` |  if the Id specified on the request is not for the cart SObjectType. |
|`ArgumentNullException` |  if the request is null. |

### `submit(Id cartId)` → `CartSubmissionResult`

Submits the cart with the specified Id.

#### Parameters
|Param|Description|
|-----|-----------|
|`cartId` |  - Id of the cart to submit. |

#### Return

**Type**

CartSubmissionResult

**Description**

A CartSubmissionResult instance.

### `submit(Id cartId, SubmitOptions options)` → `CartSubmissionResult`
---
## Inner Classes

### CartService.SubmitOptions class

Options to control the cart submission behavior.

---
#### Constructors
##### `SubmitOptions()`

Constructs a new SubmitOptions instance.
---
#### Properties

##### `TaxValidationResult` → `TaxValidatorResult`

A result from a prior run of the tax validator. If specified, tax validation will be skipped during cart submission.

---
