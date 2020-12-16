# BillMeService class

The Bill Me Service determines whether a cart is available to be checked out as a "Bill Me" candidate. This means that the user will not be required to pay for the contents of the cart and will be billed at a later date for the balance.

---
## Properties

### `Instance` → `BillMe`

A Singleton instance of Bill Me, collecting any custom instance that is defined on the /apex/Configure page. @return A single instance of Bill Me.

---
## Inner Classes

### BillMeService.Request class

A request wrapper for the Bill Me Service.

---
#### Constructors
##### `Request(Id cartId, Id accountId)`

Request constructor that takes in the Cart Id and Account Id to verify the ability to check out a cart using the Bill Me Service.
###### Parameters
|Param|Description|
|-----|-----------|
|`cartId` |  The Cart Id to validate. |
|`accountId` |  The Account Id to validate. |

###### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any parameter is null. |

##### `Request(Set<Id> productIds, Id accountId, Id entityId)`

Request constructor that takes in a list of Product Id's, an Account Id and an Entity Id to verify the ability to check out a cart using the Bill Me Service.
###### Parameters
|Param|Description|
|-----|-----------|
|`productIds` |  The Id's of the products to validate. |
|`accountId` |  The Account Id to validate. |
|`entityId` |  The Entity Id to validate. |

###### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any parameter is null. |

---
#### Properties

##### `Account` → `global`

The Account to validate the ability to check out using the Bill Me Service.

##### `Cart` → `global`

The Cart to validate the ability to check out using the Bill Me Service.

##### `CartItems` → `List<CartItem__c>`

Get the Cart Items with Cart Item Lines and Products that are in the requested Cart. If already queried for then return the cached collection. Does not query for Cart Item Lines that have coupon or cancellation products defined. @return A list of Cart Items in the requested Cart.

##### `Entity` → `global`

Get the entity associated with this request. If the cart is set retrieves it from there. If not just returns currently value, null if not set.

##### `Products` → `List<Product__c>`

Get the Products associated with the requested order. If already queried return the cached collection. If not already queried build based on cart items. BillMeService instances based on non-cart orders should pre-fill this list.

---
### BillMeService.Response class

The response returned from a Bill Me Service interaction.

---
#### Constructors
##### `Response(Request request)`

The constructor of the Response that takes in a given Request object. This will store the request and instantiate the Result property.
###### Parameters
|Param|Description|
|-----|-----------|
|`request` |  The prepared request for the BillMeService. |

###### Throws
|Exception|Description|
|---------|-----------|
|`A` |  ArgumentNullException if the request parameter is null. |

---
#### Properties

##### `Request` → `global`

The original request.

##### `Result` → `Operation`

The result of the given requested operation.

---
