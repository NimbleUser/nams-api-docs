# CartItemLineTestData class

Builder class for dealing with CartItemLine__c records. Solely used for testing, NOT a data factory.

---
## Properties

### `DefaultCartItemLine` → `CartItemLine__c`

Returns the most recently created CartItemLine. @return A CartItemLine__c object.

---
## Methods
### `create()` → `CartItemLine__c`

Builds the CartItemLine__c object.

#### Return

**Type**

CartItemLine__c

**Description**

The created CartItemLine__c object.

### `forCartItem(Id cartItemId)` → `CartItemLineTestData`

Change the CartItem__c for the CartItemLine__c that is being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`cartItemId` |  The Id of the cart item to use for building CartItemLines. |

#### Return

**Type**

CartItemLineTestData

**Description**

The instance of CartItemLineTestData.

### `forOrderItemLine(Id orderItemLineId)` → `CartItemLineTestData`

Change the OrderItemLine__c for the CartItemLine__c that is being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`orderItemLineId` |  The Id of the order item line to use for building CartItemLines. |

#### Return

**Type**

CartItemLineTestData

**Description**

The instance of CartItemLineTestData.

### `forProduct(Id productId)` → `CartItemLineTestData`

Change the Product2__c for the CartItemLine__c that is being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`productId` |  The Id of the product to use for building CartItemLines. |

#### Return

**Type**

CartItemLineTestData

**Description**

The instance of CartItemLineTestData.

### `insertRecord()` → `CartItemLine__c`

Inserts the built CartItemLine__c.

#### Return

**Type**

CartItemLine__c

**Description**

The inserted CartItemLine__c object.

### `insertRecords(Integer numberOfCartItemLines)` → `List<CartItemLine__c>`

Inserts the defined number of the built CartItemLine__c records.

#### Parameters
|Param|Description|
|-----|-----------|
|`numberOfCartItemLines` |  The number of CartItemLine__c records to insert. |

#### Return

**Type**

List<CartItemLine__c>

**Description**

The list of inserted CartItemLine__c objects.

### `isShippable(Boolean shippable)` → `CartItemLineTestData`

Change the IsShippable__c value for the CartItemLine__c that is being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`shippable` |  The Boolean value of the IsShippable state to be used for building CartItemLines |

#### Return

**Type**

CartItemLineTestData

**Description**

The instance of CartItemLineTestData.

### `newInstance()` → `CartItemLineTestData`

Method for getting a new instance of CartItemLineTestData.

#### Return

**Type**

CartItemLineTestData

**Description**

A new instance of CartItemLineTestData.

### `with(Schema.SObjectField field, Object value)` → `CartItemLineTestData`

Dynamically sets the Schema.SObjectField noted by field to value for CartItemLines being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`field` |  The Schema.SObjectField to map the value to and cannot be null. |
|`value` |  The value for the field and can be set to null. |

#### Return

**Type**

CartItemLineTestData

**Description**

The instance of CartItemLineTestData.

### `withAppeal(Id appealId)` → `CartItemLineTestData`

Change the Appeal__c for the CartItemLine__c that is being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`appealId` |  The Id of the Appeal to use for building CartItemLines. |

#### Return

**Type**

CartItemLineTestData

**Description**

The instance of CartItemLineTestData.

### `withMembershipTypeProductLink(Id membershipTypeProductLinkId)` → `CartItemLineTestData`

Change the MembershipTypeProductLink__c for the CartItemLine__c that is being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`membershipTypeProductLinkId` |  The Id of the membershipTypeProductLink to use for building CartItemLines. |

#### Return

**Type**

CartItemLineTestData

**Description**

The instance of CartItemLineTestData.

### `withQuantity(Integer quantity)` → `CartItemLineTestData`

Change the Quantity__c for the CartItemLine__c that is being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`quantity` |  The quantity to use for building CartItemLines. |

#### Return

**Type**

CartItemLineTestData

**Description**

The instance of CartItemLineTestData.

### `withUnitPrice(Decimal unitPrice)` → `CartItemLineTestData`

Change the UnitPrice__c for the CartItemLine__c that is being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`unitPrice` |  The unit price to use for building CartItemLines. |

#### Return

**Type**

CartItemLineTestData

**Description**

The instance of CartItemLineTestData.

---
