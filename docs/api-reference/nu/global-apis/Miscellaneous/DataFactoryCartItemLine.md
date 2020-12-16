# DataFactoryCartItemLine class

Exposes constants and methods commonly used for creating and inserting Cart Item Line records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.

---
## Methods
### `createCartItemLineToPurchase(createCartOLIParm cartCILParm)` → `CartItemLine__c`

Creates a Cart Item Line from the specified createCartOLIParm instance.

#### Parameters
|Param|Description|
|-----|-----------|
|`createCartOLIParm` |  the container holding information specific to cart item lines. |

#### Return

**Type**

CartItemLine__c

**Description**

a CartItemLine__c object

### `createDefaultPurchasedProducts(List<Product__c> defaultProds)` → `List<CartItemLine__c>`

Creates Cart Item Lines from the supplied list of Products. The method also inserts and uses the default price class.

#### Parameters
|Param|Description|
|-----|-----------|
|`List<Product__c>` |  the List of Product__c objects for which to create Cart Item Lines |

#### Return

**Type**

List<CartItemLine__c>

**Description**

a List of CartItemLine__c objects

### `createDonationPurchasedProducts()` → `List<CartItemLine__c>`

Creates donation purchased products and should be used for testing purposes only. Specifically: Inserts a new Entity and Person Account. Inserts a variety of new carts, cart items, and other setup required for membership, event, and donation orders. Creates Cart Item Lines from a List of inserted donation products as a child of the test Donation Cart Item. The returned list contains the newly created Cart Item Lines.

#### Return

**Type**

List<CartItemLine__c>

**Description**

a List of CartItemLine__c object records

### `createEvtBadgePurchasedProducts(Id cartItemId, Id entityId, Id eventId)` → `List<CartItemLine__c>`

Creates event-related purchased products and should be used for testing purposes only. Specifically: Creates event badge Cart Item Lines using the specified Cart Item Id, Entity Id, and Event Id. The method also inserts and uses the default price class. The returned list contains the newly created Cart Item Lines.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the parent Cart Item |
|`Id` |  the Id of the Entity |
|`Id` |  the Id of the Event |

#### Return

**Type**

List<CartItemLine__c>

**Description**

a List of CartItemLine__c object records

### `createEvtSessionPurchasedProducts()` → `List<CartItemLine__c>`

Creates event-related purchased products and should be used for testing purposes only. Specifically: Inserts a new Entity and Person Account. Inserts a variety of new carts, cart items, and other setup required for membership, event, and donation orders. Creates Cart Item Lines from a List of inserted event session products, not assigned to a Cart Item. It also creates an event badge for the first Cart Item Line in the List. The returned list contains the newly created Cart Item Lines.

#### Return

**Type**

List<CartItemLine__c>

**Description**

a List of CartItemLine__c object records

### `createPurchasedProduct(Id productId, Id cartItemId, Decimal unitPrice)` → `CartItemLine__c`

Creates a purchased cart item line using the product and unit price given and is attached to the designated cart item. The default quantity is 1. Should only be used for testing purposes.

#### Parameters
|Param|Description|
|-----|-----------|
|`productId` |  The id of the product to purchase. |
|`cartItemId` |  The id of the cart item to attach the cart item lines to. |
|`unitPrice` |  The price of a single purchase. |

#### Return

**Type**

CartItemLine__c

**Description**

a CartItemLine__c object.

### `insertDefaultPurchasedProducts()` → `List<CartItemLine__c>`

Inserts default purchased products and should be used for testing purposes only. Specifically: Inserts a new Entity and Person Account. Inserts a variety of new carts, cart items, and other setup required for membership, event, and donation orders. Creates two createCartOLIParm instances from a list of inserted products and inserts two Cart Item Lines as children of a test Cart Item. The returned list has a list size of two and contains the two inserted Cart Item Lines.

#### Return

**Type**

List<CartItemLine__c>

**Description**

a List of CartItemLine__c object records

### `insertDefaultPurchasedProducts(List<createCartOLIParm> cartCILParms)` → `List<CartItemLine__c>`

Creates and inserts Cart Item Lines from the specified list of createCartOLIParm instances. The method also inserts the default system price classes.

#### Parameters
|Param|Description|
|-----|-----------|
|`List<createCartOLIParm>` |  the containers holding information specific to cart item lines. |

#### Return

**Type**

List<CartItemLine__c>

**Description**

a List of CartItemLine__c objects

### `insertDefaultPurchasedProducts(List<Product__c> defaultProds, id cartItemId)` → `List<CartItemLine__c>`

Creates and inserts Cart Item Lines from the supplied list of Products and Cart Item Id. The method also inserts and uses the default price class.

#### Parameters
|Param|Description|
|-----|-----------|
|`List<Product__c>` |  the List of Product__c objects for which to create Cart Item Lines |
|`Id` |  the Id of the parent Cart Item |

#### Return

**Type**

List<CartItemLine__c>

**Description**

a List of CartItemLine__c objects

### `insertDonationPurchasedProducts()` → `List<CartItemLine__c>`

Creates and inserts donation purchased products and should be used for testing purposes only. Specifically: Inserts a new Entity and Person Account. Inserts a variety of new carts, cart items, and other setup required for membership, event, and donation orders. Creates and inserts Cart Item Lines from a List of inserted donation products as a child of the test Donation Cart Item. The returned list contains the newly created Cart Item Lines.

#### Return

**Type**

List<CartItemLine__c>

**Description**

a List of CartItemLine__c object records

### `insertEvtSessionAndGuestEvtBadgePurchasedProducts()` → `List<CartItemLine__c>`

Creates and inserts event-related purchased products and should be used for testing purposes only. Specifically: Inserts a new Entity and Person Account. Inserts a variety of new carts, cart items, and other setup required for membership, event, and donation orders. Creates and inserts Cart Item Lines from a List of inserted event session products as a child of the test Event Cart Item. It also creates and inserts guest event badge Cart Item Lines as a child of the test Event Cart Item. The returned list contains the newly created Cart Item Lines.

#### Return

**Type**

List<CartItemLine__c>

**Description**

a List of CartItemLine__c object records

### `insertEvtSessionPurchasedProducts()` → `List<CartItemLine__c>`

Inserts event-related purchased products and should be used for testing purposes only. Specifically: Inserts a new Entity and Person Account. Inserts a variety of new carts, cart items, and other setup required for membership, event, and donation orders. Creates and inserts Cart Item Lines from a List of inserted event session products as a child of a test Event Cart Item. The returned list contains the newly inserted Cart Item Lines.

#### Return

**Type**

List<CartItemLine__c>

**Description**

a List of CartItemLine__c object records

### `insertEvtSessionPurchasedProducts(List<Product__c> purchasedProds)` → `List<CartItemLine__c>`

Creates and inserts event-related Cart Item Lines from the supplied list of Products. The method also inserts and uses the default price class, and inserts the Event Cart and Cart Item parent records using a default account as the Bill To. It also creates an event badge for the first Cart Item Line in the List.

#### Parameters
|Param|Description|
|-----|-----------|
|`List<Product__c>` |  the List of Product__c objects for which to create Cart Item Lines |

#### Return

**Type**

List<CartItemLine__c>

**Description**

a List of CartItemLine__c objects

### `insertMembershipPurchasedProduct()` → `CartItemLine__c`

Inserts a membership purchased product and should be used for testing purposes only. Specifically: Inserts a new Entity and Person Account. Inserts a variety of new carts, cart items, and other setup required for membership, event, and donation orders. Creates a createCartOLIParm instance from an inserted membership product and inserts a Cart Item Line as a child of a test Membership Cart Item.

#### Return

**Type**

CartItemLine__c

**Description**

a CartItemLine__c object

### `insertMembershipPurchasedProducts(List<MembershipTypeProductLink__c> mtpls, Id cartItemId)` → `List<CartItemLine__c>`

Inserts purchased membership cart item lines using the membership type product links supplied. Each cart item line is attached to the given cart item. The default quantity is 1 and the unit price is the default unit price. Should only be used for testing purposes.

#### Parameters
|Param|Description|
|-----|-----------|
|`mtpls` |  The membership type product links to purchase. A cart item line is created for each mtpl. |
|`cartItemId` |  The id of the cart item to attach the cart item lines to. |

#### Return

**Type**

List<CartItemLine__c>

**Description**

a list of CartItemLine__c object.

### `insertMembershipWithDonationPurchasedProducts()` → `List<CartItemLine__c>`

Inserts a membership and donation product and should be used for testing purposes only. Specifically: Inserts a new Entity and Person Account. Inserts a variety of new carts, cart items, and other setup required for membership, event, and donation orders. Creates a createCartOLIParm instance from an inserted membership product and inserts a Cart Item Line as a child of a test Membership Cart Item. Creates a createCartOLIParm instance from an inserted donation product and inserts a Cart Item Line as a child of a test Donation Cart Item.

#### Return

**Type**

List<CartItemLine__c>

**Description**

a List of CartItemLine__c object records

### `insertPurchasedProduct(Id productId, Id cartItemId, Decimal unitPrice)` → `CartItemLine__c`

Inserts a purchased cart item line using the product and unit price given and is attached to the designated cart item. The default quantity is 1. Should only be used for testing purposes.

#### Parameters
|Param|Description|
|-----|-----------|
|`productId` |  The id of the product to purchase. |
|`cartItemId` |  The id of the cart item to attach the cart item lines to. |
|`unitPrice` |  The price of a single purchase. |

#### Return

**Type**

CartItemLine__c

**Description**

a CartItemLine__c object.

### `insertPurchasedProducts(List<Product__c> products, Id cartItemId)` → `List<CartItemLine__c>`

Inserts purchased cart item lines using the products supplied. Each cart item line is attached to the given cart item. The default quantity is 1 and the unit price is the product's list price. Should only be used for testing purposes.

#### Parameters
|Param|Description|
|-----|-----------|
|`products` |  The products to purchase. A cart item line is created for each product. |
|`cartItemId` |  The id of the cart item to attach the cart item lines to. |

#### Return

**Type**

List<CartItemLine__c>

**Description**

a list of CartItemLine__c object.

---
## Inner Classes

### DataFactoryCartItemLine.createCartOLIParm class

This inner class holds information specific for cart order item lines.

---
#### Constructors
##### `createCartOLIParm()`

Creates a new instance of the createCartOLIParm inner class with a default quantity and unit price. This is the default constructor.
---
#### Properties

##### `Quantity` → `Integer`

A property of the createCartOLIParm inner global class. The number of products that are being purchased.

##### `UnitPrice` → `Decimal`

A property of the createCartOLIParm inner global class. The unit price of each product that is being purchased.

##### `UnitPriceToUse` → `Decimal`

A property of the createCartOLIParm inner global class. If UnitPrice is null, will return the price set on the Product lookup field.

##### `cartItemId` → `Id`

A property of the createCartOLIParm inner global class. The Id of the cart item in which the cart item line is a child. Required for all cart item lines.

##### `customerAcctToUse` → `Account`

A property of the createCartOLIParm inner global class. The Account that is the Customer for the cart item line.

##### `priceClassToUse` → `PriceClass__c`

A property of the createCartOLIParm inner global class. The Price Class that should be associated with the cart item line.

##### `productToPurchase` → `Product__c`

A property of the createCartOLIParm inner global class. The Product that is being purchased. Required for all cart item lines.

---
