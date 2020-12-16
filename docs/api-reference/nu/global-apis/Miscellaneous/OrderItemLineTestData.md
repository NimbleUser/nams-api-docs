# OrderItemLineTestData class

Builder class for dealing with OrderItemLine__c records. Solely used for testing, NOT a data factory.

---
## Properties

### `DefaultOrderItemLine` → `OrderItemLine__c`

Returns the most recently created OrderItemLine. @return A OrderItemLine__c object.

---
## Methods
### `cancelled()` → `OrderItemLineTestData`

Sets Status__c to Cancelled for the OrderItemLine__c being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`productsForLines` |  Each Product__c to create an OrderItemLine__c for. |

#### Return

**Type**

OrderItemLineTestData

**Description**

The instance of OrderItemLineTestData.

### `create()` → `OrderItemLine__c`

Builds the OrderItemLine__c object.

#### Parameters
|Param|Description|
|-----|-----------|
|`The` |  SObject that is going to be inserted. |

#### Return

**Type**

OrderItemLine__c

**Description**

The created OrderItemLine__c object.

### `forMembership(Id membershipId)` → `OrderItemLineTestData`

Sets the Membership__c for the OrderItemLine__c being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`membershipId` |  The membership id to set for the Membership__c field. |

#### Return

**Type**

OrderItemLineTestData

**Description**

The instance of OrderItemLineTestData.

### `inOrderItem(Id orderItemId)` → `OrderItemLineTestData`

Sets the OrderItem__c for the OrderItemLine__c being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`registrationId` |  The id of the registration record to associate. |
|`orderItemId` |  The order item id to set for the OrderItem__c field. |

#### Return

**Type**

OrderItemLineTestData

**Description**

The instance of OrderItemLineTestData.

### `insertRecord()` → `OrderItemLine__c`

Builds and inserts a OrderItemLine.

#### Return

**Type**

OrderItemLine__c

**Description**

The built and inserted OrderItemLine.

### `newInstance()` → `OrderItemLineTestData`

Method for getting a new instance of OrderItemLineTestData.

#### Return

**Type**

OrderItemLineTestData

**Description**

A new instance of OrderItemLineTestData.

### `with(Schema.SObjectField field, Object value)` → `OrderItemLineTestData`

Dynamically sets the Schema.SObjectField noted by field to value for OrderItemLines being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`field` |  The Schema.SObjectField to map the value to and cannot be null. |
|`value` |  The value for the field and can be set to null. |

#### Return

**Type**

OrderItemLineTestData

**Description**

The instance of OrderItemLineTestData.

### `withCoupon(Id couponId)` → `OrderItemLineTestData`

Sets the Coupon__c for the OrderItemLine__c being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`couponId` |  The coupon to set for the Coupon__c field. |

#### Return

**Type**

OrderItemLineTestData

**Description**

The instance of OrderItemLineTestData.

### `withMembershipTypeProductLink(Id membershipTypeProductLinkId)` → `OrderItemLineTestData`

Sets the MembershipTypeProductLink__c for the OrderItemLine__c being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`membershipTypeProductLinkId` |  The Membership Type Product Link Id to set for the MembershipTypeProductLink__c field. |

#### Return

**Type**

OrderItemLineTestData

**Description**

The instance of OrderItemLineTestData.

### `withProduct(Id productId)` → `OrderItemLineTestData`

Sets the Product2__c for the OrderItemLine__c being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`productId` |  The product id to set for the Product2__c field. |

#### Return

**Type**

OrderItemLineTestData

**Description**

The instance of OrderItemLineTestData.

### `withQuantity(Integer quantity)` → `OrderItemLineTestData`

Sets the Quantity__c for the OrderItemLine__c being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`quantity` |  The quantity to set for the Quantity__c field. |

#### Return

**Type**

OrderItemLineTestData

**Description**

The instance of OrderItemLineTestData.

### `withUnitPrice(Decimal unitPrice)` → `OrderItemLineTestData`

Sets the UnitPrice__c for the OrderItemLine__c being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`unitPrice` |  The unit price to set for the UnitPrice__c field. |

#### Return

**Type**

OrderItemLineTestData

**Description**

The instance of OrderItemLineTestData.

---
