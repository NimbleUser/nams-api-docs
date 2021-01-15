# PaymentOptionsService class

Used as a proxy to communicate with the correct PaymentOptions instance as specified in the custom settings.

---
## Properties

### `Instance` → `PaymentOptions`

Gets an instance of PaymentOptions based on the PaymentOptions defined in the custom settings. If no PaymentOptions are defined then defaults to an instance of PaymentOptions.cls. @throws NUException if the class configured in the custom setting does not extend PaymentOptions.

---
## Inner Classes

### PaymentOptionsService.Request class

Request class used for PaymentOptions.

---
#### Constructors
##### `Request(Id cartId, Id accountId)`

Constructs a PaymentOptionsService.Request instance by using a cart Id and an account Id.
###### Parameters
|Param|Description|
|-----|-----------|
|`cartId` |  The cart Id to use for the request. |
|`accountId` |  The account Id to use for the request. |

###### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any of the arguments are null. |

##### `Request(Set<Id> requestProductIds, Id requestAccountId, Id requestEntityId)`

Constructs a PaymentOptionsService.Request instance by using an account Id and a set of product Id's.
###### Parameters
|Param|Description|
|-----|-----------|
|`requestProductIds` |  The product Id's to use for the request. |
|`requestAccountId` |  The account Id to use for the request. |
|`requestEntityId` |  The entity Id to use for the request. |

###### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any of the arguments are null. |

##### `Request(Id cartId, Id accountId, Id requestEntityId)`

Constructs a PaymentOptionsService.Request instance by using a cart Id, account Id and entity Id.
###### Parameters
|Param|Description|
|-----|-----------|
|`cartId` |  The cart Id to use for the request. |
|`accountId` |  The account Id to use for the request. |
|`requestEntityId` |  The entity Id to use for the request. |

###### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any of the arguments are null. |

---
#### Properties

##### `AccountId` → `Id`

Stores the Account Id for the request.

##### `CartId` → `Id`

Stores the Cart Id for the request.

##### `EntityId` → `Id`

Stores the Entity Id for the request.

##### `ProductIds` → `Set<Id>`

Stores the product Id's for the request.

---
