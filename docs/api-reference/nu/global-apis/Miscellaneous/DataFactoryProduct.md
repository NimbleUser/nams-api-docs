# DataFactoryProduct class

Exposes constants and methods commonly used for creating and inserting Product records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.

---
## Methods
### `createDefaultProduct()` → `Product__c`

Creates a default Product. The product is marked as both shippable and taxable, with tracked inventory. A Revenue GL Account is inserted and used. Defaults for List Price, Display Order, Inventory, Inventory Used, and Product Weight are set. Also inserts basic Entity setup information - such as payment methods, credit card issuers, and order items configurations. This method should be used for testing purposes only.

#### Return

**Type**

Product__c

**Description**

a Product__c object

### `createDefaultProduct(String productName, Decimal listPrice, Id entityId)` → `Product__c`

Creates a default Product for the specified Entity Id using the supplied name and list price. The default Record Type is used. A default value is also used if the Entity Id or the list price is null. The product is marked as both shippable and taxable, with tracked inventory. A Revenue GL Account is inserted and used. Defaults for Display Order, Inventory, Inventory Used, and Product Weight are set. This method should be used for testing purposes only.

#### Parameters
|Param|Description|
|-----|-----------|
|`String` |  the name of the Product |
|`Decimal` |  the list price of the Product. Optional. |
|`Id` |  the Id of the Entity. Optional. |

#### Return

**Type**

Product__c

**Description**

a Product__c object

### `createDonationProduct(String donationProdName, Decimal listPrice, Id entityId)` → `Product__c`

Creates a Donation Product for the specified Entity Id using the supplied name and list price. A Revenue GL Account is inserted and used.

#### Parameters
|Param|Description|
|-----|-----------|
|`String` |  the name of the Product |
|`Decimal` |  the list price of the Product |
|`Id` |  the Id of the Entity |

#### Return

**Type**

Product__c

**Description**

a Product__c object

### `createEvtBadgeProduct(String badgeName, Decimal listPrice, Id entityId, Id evtId)` → `Product__c`

Creates a Event Badge Product for the specified Event Id using the supplied name, list price, and Entity Id. A default value is used if any of the parameters are null, so all of them are optional. The product is marked as an event badge, with tracked inventory. Defaults for Display Order, Inventory, and Inventory Used are set.

#### Parameters
|Param|Description|
|-----|-----------|
|`String` |  the name of the Product. Optional. |
|`Decimal` |  the list price of the Product. Optional. |
|`Id` |  the Id of the Entity. Optional. |
|`Id` |  the Id of the Event. Optional. |

#### Return

**Type**

Product__c

**Description**

a Product__c object

### `createEvtSessionProduct(String sessionName, Decimal listPrice, Id entityId, Id evtId, Id glAccountId)` → `Product__c`

Creates a Session Product for the specified Event Id using the supplied name, list price, and Entity and Revenue GL Account Ids. A default value is used if any of the parameters are null, so all of them are optional. The product is marked as shippable and not taxable, with tracked inventory. Defaults for Display Order, Inventory, and Inventory Used are set.

#### Parameters
|Param|Description|
|-----|-----------|
|`String` |  the name of the Product. Optional. |
|`Decimal` |  the list price of the Product. Optional. |
|`Id` |  the Id of the Entity. Optional. |
|`Id` |  the Id of the Event. Optional. |
|`Id` |  the Id of the Revenue GL Account. Optional. |

#### Return

**Type**

Product__c

**Description**

a Product__c object

### `createEvtSessionProduct(String sessionName, Decimal listPrice, Id entityId, Id evtId)` → `Product__c`

Creates a Session Product for the specified Event Id using the supplied name, list price, and Entity Id. A default value is used if any of the parameters are null, so all of them are optional. The product is marked as shippable and not taxable, with tracked inventory. Defaults for Display Order, Inventory, and Inventory Used are set.

#### Parameters
|Param|Description|
|-----|-----------|
|`String` |  the name of the Product. Optional. |
|`Decimal` |  the list price of the Product. Optional. |
|`Id` |  the Id of the Entity. Optional. |
|`Id` |  the Id of the Event. Optional. |

#### Return

**Type**

Product__c

**Description**

a Product__c object

### `createMembershipProduct(String membershipName, Decimal listPrice, Id entityId)` → `Product__c`

Creates a Membership Product for the specified Entity Id using the supplied name and list price. A Revenue GL Account is inserted and used.

#### Parameters
|Param|Description|
|-----|-----------|
|`String` |  the name of the Product |
|`Decimal` |  the list price of the Product |
|`Id` |  the Id of the Entity |

#### Return

**Type**

Product__c

**Description**

a Product__c object

### `createMembershipProduct(String membershipName, Decimal listPrice, Id entityId, Id deferredRevenueMethodId)` → `Product__c`

Creates a Membership Product for the specified Entity Id using the supplied name, list price, and Deferred Revenue Method Id. A Revenue GL Account is inserted and used.

#### Parameters
|Param|Description|
|-----|-----------|
|`String` |  the name of the Product |
|`Decimal` |  the list price of the Product |
|`Id` |  the Id of the Entity |
|`Id` |  the Id of the Deferred Revenue Method. Optional. |

#### Return

**Type**

Product__c

**Description**

a Product__c object

### `createMiscellaneousProduct(String productName, Decimal listPrice, Id entityId)` → `Product__c`

Creates a miscellaneous Product for the specified Entity Id using the supplied name and list price. The default Record Type is used. A default value is also used if the Entity Id or the list price is null. The product is marked as both shippable and taxable, with tracked inventory. A Revenue GL Account is inserted and used. Defaults for Display Order, Inventory, Inventory Used, and Product Weight are set. This method should be used for testing purposes only.

#### Parameters
|Param|Description|
|-----|-----------|
|`String` |  the name of the Product |
|`Decimal` |  the list price of the Product. Optional. |
|`Id` |  the Id of the Entity. Optional. |

#### Return

**Type**

Product__c

**Description**

a Product__c object

### `createSubscriptionProduct()` → `Product__c`

Creates a subscription product.

#### Return

**Type**

Product__c

**Description**

The subscription product.

### `insertDefaultCouponProduct()` → `Product__c`

Creates and inserts a default Coupon Product. Defaults for Name and List Price are set. Also inserts basic Entity setup information - such as payment methods, credit card issuers, and order items configurations. This method should be used for testing purposes only.

#### Return

**Type**

Product__c

**Description**

a Product__c object

### `insertDefaultCouponProduct(Id entityId)` → `Product__c`

Creates and inserts a default Coupon Product. Defaults for Name and List Price are set. This method should be used for testing purposes only.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity |

#### Return

**Type**

Product__c

**Description**

a Product__c object

### `insertDefaultMembershipDonationProduct(Id entityId, Id membershipTypeId)` → `Product__c`

Creates and inserts a default Donation Product for the specified Entity and Membership Type Ids. Defaults for Name and List Price are set. A Revenue GL Account is inserted and used, as well as a default Donation Membership Type Product Link.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity |
|`Id` |  the Id of the Membership Type |

#### Return

**Type**

Product__c

**Description**

a Product__c object

### `insertDefaultMembershipProduct()` → `Product__c`

Creates and inserts a default Membership Product. Defaults for Name and List Price are set. A Revenue GL Account is inserted and used, as well as a default Membership Type and Membership Type Product Link. Also inserts basic Entity setup information - such as payment methods, credit card issuers, and order items configurations. This method should be used for testing purposes only.

#### Return

**Type**

Product__c

**Description**

a Product__c object

### `insertDefaultMembershipProduct(Id entityId)` → `Product__c`

Creates and inserts a default Membership Product for the specified Entity Id. Defaults for Name and List Price are set. A Revenue GL Account is inserted and used, as well as a default Membership Type and Membership Type Product Link.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity |

#### Return

**Type**

Product__c

**Description**

a Product__c object

### `insertDefaultMembershipProductWithDeferredRevenue(Id entityId)` → `Product__c`

Creates and inserts a default Membership Product for the specified Entity Id. Defaults for Name and List Price are set. A default Deferred Revenue Method is inserted and used. A Revenue GL Account is inserted and used, as well as a default Membership Type and Membership Type Product Link.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity |

#### Return

**Type**

Product__c

**Description**

a Product__c object

### `insertDefaultMiscellaneousProduct()` → `Product__c`

Creates and inserts a default Miscellaneous Product. Defaults for Name and List Price are set. Also inserts basic Entity setup information - such as payment methods, credit card issuers, and order items configurations. This method should be used for testing purposes only.

#### Return

**Type**

Product__c

**Description**

a Product__c object

### `insertDefaultProduct()` → `Product__c`

Creates and inserts a default Product. The product is marked as both shippable and taxable, with tracked inventory. A Revenue GL Account is inserted and used. Defaults for List Price, Display Order, Inventory, Inventory Used, and Product Weight are set. Also inserts basic Entity setup information - such as payment methods, credit card issuers, and order items configurations. This method should be used for testing purposes only.

#### Return

**Type**

Product__c

**Description**

a Product__c object

### `insertDefaultProducts(Integer numOfProdsToInsert, Id entityId)` → `List<Product__c>`

Creates and inserts a number of default Products for the specified Entity Id. The products are marked as both shippable and taxable, with tracked inventory. A Revenue GL Account is inserted and used. Defaults for List Price, Display Order, Inventory, Inventory Used, and Product Weight are set. A default Entity is used if one is not supplied. This method should be used for testing purposes only. The List Price is NOT the same for all products - it is randomized.

#### Parameters
|Param|Description|
|-----|-----------|
|`Integer` |  the number of Product records to insert |
|`Id` |  the Id of the Entity. Optional. |

#### Return

**Type**

List<Product__c>

**Description**

a List of Product__c object records

### `insertDonationProduct(Id entityId)` → `Product__c`

Creates and inserts a default Donation Product for the specified Entity Id. Defaults for Name and List Price are set. A Revenue GL Account is inserted and used.

#### Parameters
|Param|Description|
|-----|-----------|
|`entityId` |  The Id of the Entity. |

#### Return

**Type**

Product__c

**Description**

A Product__c object.

### `insertDonationProduct(String donationProductName, Id entityId)` → `Product__c`

Creates and inserts a default Donation Product for the specified product name and Entity Id. A default value List Price is set. A Revenue GL Account is inserted and used.

#### Parameters
|Param|Description|
|-----|-----------|
|`donationProductName` |  The name to be used for the new donation product. |
|`entityId` |  The Id of the Entity. |

#### Return

**Type**

Product__c

**Description**

A Product__c object.

### `insertDonationProducts(Integer numDonationsToCreate, Id entityId)` → `List<Product__c>`

Creates and inserts default Donation Products for the specified Entity Id. Defaults for Name and List Price are set. A Revenue GL Account is inserted and used. The List Price is NOT the same for all products - it is randomized.

#### Parameters
|Param|Description|
|-----|-----------|
|`Integer` |  the number of Products to create |
|`Id` |  the Id of the Entity |

#### Return

**Type**

List<Product__c>

**Description**

a List of Product__c object records

### `insertEvtBadgeProducts(Integer numofBadgesToInsert, Id entityId, Id evtId)` → `List<Product__c>`

Creates and inserts Event Badge Products for the specified Event and Entity Ids. A default value is used if the Event or Entity Id parameters are null, so they are optional. The products are marked as event badges, with tracked inventory. Defaults for Name, List Price, Display Order, Inventory, and Inventory Used are set. The List Price is NOT the same for all products - it is randomized.

#### Parameters
|Param|Description|
|-----|-----------|
|`Integer` |  the number of Products to create |
|`Id` |  the Id of the Entity. Optional. |
|`Id` |  the Id of the Event. Optional. |

#### Return

**Type**

List<Product__c>

**Description**

a List of Product__c object records

### `insertEvtSessionProduct(String sessionName, Decimal listPrice, Id entityId, Id evtId)` → `Product__c`

Creates and inserts a Session Product for the specified Event Id using the supplied name, list price, and Entity Id. A default value is used if any of the parameters are null, so all of them are optional. The product is marked as shippable and not taxable, with tracked inventory. Defaults for Display Order, Inventory, and Inventory Used are set.

#### Parameters
|Param|Description|
|-----|-----------|
|`String` |  the name of the Product. Optional. |
|`Decimal` |  the list price of the Product. Optional. |
|`Id` |  the Id of the Entity. Optional. |
|`Id` |  the Id of the Event. Optional. |

#### Return

**Type**

Product__c

**Description**

a Product__c object

### `insertEvtSessionProductWithDeferredRevenue(Id entityId, Id eventId)` → `Product__c`

Creates and inserts a Session Product for the specified Event and Entity Ids. A default Deferred Revenue Method is inserted and used. A default value is used if the Event or Entity Id parameters are null, so they are optional. A Revenue GL Account is inserted and used. Defaults for Name, List Price, Display Order, Inventory, and Inventory Used are set. This method should be used for testing purposes only.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity. Optional. |
|`Id` |  the Id of the Event. Optional. |

#### Return

**Type**

Product__c

**Description**

a Product__c object

### `insertEvtSessionProducts(Integer numOfProdsToInsert, Id entityId, Id evtId)` → `List<Product__c>`

Creates and inserts Session Products for the specified Event and Entity Ids. A default value is used if the Event or Entity Id parameters are null, so they are optional. A Revenue GL Account is inserted and used for each Session Product. Defaults for Name, List Price, Display Order, Inventory, and Inventory Used are set. This method should be used for testing purposes only. The List Price is NOT the same for all products - it is randomized.

#### Parameters
|Param|Description|
|-----|-----------|
|`Integer` |  the number of Products to create |
|`Id` |  the Id of the Entity. Optional. |
|`Id` |  the Id of the Event. Optional. |

#### Return

**Type**

List<Product__c>

**Description**

a List of Product__c object records

### `insertMembershipProduct(String membershipName, Decimal listPrice, Id entityId)` → `Product__c`

Creates and inserts a Membership Product for the specified Entity Id using the supplied name and list price. A Revenue GL Account is inserted and used.

#### Parameters
|Param|Description|
|-----|-----------|
|`String` |  the name of the Product |
|`Decimal` |  the list price of the Product |
|`Id` |  the Id of the Entity |

#### Return

**Type**

Product__c

**Description**

a Product__c object

### `insertMembershipProduct(Id entityId)` → `Product__c`

Creates and inserts a Membership Product for the specified Entity Id using the default membership name and default list price. A Revenue GL Account is inserted and used.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the id of the entity to use. |

#### Return

**Type**

Product__c

**Description**

a Product__c object

### `insertMiscellaneousProduct(Id entityId)` → `Product__c`

Creates and inserts a miscellaneous Product. The product is marked as both shippable and taxable, with tracked inventory. A Revenue GL Account is inserted and used. Defaults for List Price, Display Order, Inventory, Inventory Used, and Product Weight are set. Also inserts basic Entity setup information - such as payment methods, credit card issuers, and order items configurations. This method should be used for testing purposes only.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity |

#### Return

**Type**

Product__c

**Description**

a Product__c object

---
