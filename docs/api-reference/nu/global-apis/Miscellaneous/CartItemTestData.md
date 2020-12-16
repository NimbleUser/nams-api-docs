# CartItemTestData class

Builder class for dealing with CartItem__c records. Solely used for testing, NOT a data factory.

---
## Properties

### `DefaultCartItem` → `CartItem__c`

Returns the most recently created CartItem. @return an CartItem__c.

---
## Methods
### `asBillMe()` → `CartItemTestData`

Sets the BillMe__c field for the CartItem__c that is being built as true.

#### Return

**Type**

CartItemTestData

**Description**

The instance of CartItemTestData.

### `asDonation()` → `CartItemTestData`

Change the RecordTypeId for the CartItem__c that is being built to the Donation recordType.

#### Return

**Type**

CartItemTestData

**Description**

The instance of CartItemTestData.

### `asMembership()` → `CartItemTestData`

Change the RecordTypeId for the CartItem__c that is being built to the Membership recordType.  This method also generates JSON for the Data__c field using the CartItemData class.

#### Parameters
|Param|Description|
|-----|-----------|
|`newVersion` |  The new version number to use. |

#### Return

**Type**

CartItemTestData

**Description**

The instance of CartItemTestData.

### `asMembershipForMembershipType(Id membershipTypeId)` → `CartItemTestData`

Change the RecordTypeId for the CartItem__c that is being built to the Membership recordType.  This method also generates JSON for the Data__c field using the CartItemData class.

#### Parameters
|Param|Description|
|-----|-----------|
|`membershipTypeId` |  The Membership Type Id. |

#### Return

**Type**

CartItemTestData

**Description**

The instance of CartItemTestData.

### `asMerchandise()` → `CartItemTestData`

Change the RecordTypeId for the CartItem__c that is being built to the Merchandise recordType.

#### Return

**Type**

CartItemTestData

**Description**

The instance of CartItemTestData.

### `asRegistration()` → `CartItemTestData`

Change the RecordTypeId for the CartItem__c that is being built. to the Registration recordType.  This method also generates JSON for the Data__c field using the CartItemData class.

#### Return

**Type**

CartItemTestData

**Description**

The instance of CartItemTestData.

### `asRegistrationForEvent(Id eventId)` → `CartItemTestData`

Change the RecordTypeId for the CartItem__c that is being built. to the Registration recordType.  This method also generates JSON for the Data__c field using the CartItemData class.

#### Parameters
|Param|Description|
|-----|-----------|
|`existingPaymentAmount` |  The payment amount to set TotalExistingPayment__c with. |
|`totalShipping` |  The shipping amount to set TotalShipping__c with. |
|`totalTax` |  The tax amount to set TotalTax__c with. |
|`eventId` |  The Event Id. |

#### Return

**Type**

CartItemTestData

**Description**

The instance of CartItemTestData.

### `create()` → `CartItem__c`

Builds the CartItem__c object.

#### Parameters
|Param|Description|
|-----|-----------|
|`passcode` |  The desired passcode to use for building CartItems. |

#### Return

**Type**

CartItem__c

**Description**

The created CartItem__c object.

### `forCustomer(Id accountId)` → `CartItemTestData`

Change the Customer__c for the CartItem__c that is being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`accountId` |  The Id of the account to use for building CartItems. |

#### Return

**Type**

CartItemTestData

**Description**

The instance of CartItemTestData.

### `forOrderItem(Id orderItem)` → `CartItemTestData`

Change the OrderItem__c for the CartItem__c that is being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`orderItem` |  The desired order item id to use. |

#### Return

**Type**

CartItemTestData

**Description**

The instance of CartItemTestData.

### `inCart(Id cartId)` → `CartItemTestData`

Change the Cart__c for the CartItem__c that is being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`cartId` |  The Id of the cart to use for building CartItems. |

#### Return

**Type**

CartItemTestData

**Description**

The instance of CartItemTestData.

### `insertRecord()` → `CartItem__c`

Inserts the built CartItem__c.

#### Return

**Type**

CartItem__c

**Description**

The inserted CartItem__c object.

### `insertRecords(Integer numToInsert)` → `List<CartItem__c>`

Inserts a list of CartItem__c objects.

#### Parameters
|Param|Description|
|-----|-----------|
|`numToInsert` |  the number of CartItem__c objects to insert. |

#### Return

**Type**

List<CartItem__c>

**Description**

A list of the inserted CartItem__c objects.

### `newInstance()` → `CartItemTestData`

Method for getting a new instance of CartItemTestData.

#### Return

**Type**

CartItemTestData

**Description**

A new instance of CartItemTestData.

### `with(Schema.SObjectField field, Object value)` → `CartItemTestData`

Dynamically sets the Schema.SObjectField noted by field to value for CartItems being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`field` |  The Schema.SObjectField to map the value to and cannot be null. |
|`value` |  The value for the field and can be set to null. |

#### Return

**Type**

CartItemTestData

**Description**

The instance of CartItemTestData.

### `withBillingHistory(Id billingHistoryId)` → `CartItemTestData`

Change the BillingHistory__c for the CartItem__c that is being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`billingHistoryId` |  The Id of the billing history to use for building CartItems. |

#### Return

**Type**

CartItemTestData

**Description**

The instance of CartItemTestData.

### `withBillingHistoryCartItem(Id billingHistoryCartItemId)` → `CartItemTestData`

Change the BillingHistory__c for the CartItem__c that is being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`billingHistoryCartItemId` |  The Id of the billing history cart item to use for |

#### Return

**Type**

CartItemTestData

**Description**

The instance of CartItemTestData.

### `withEntity(Id entityId)` → `CartItemTestData`

Change the Entity__c for the CartItem__c that is being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`entityId` |  The Id of the entity to use for building CartItems. |

#### Return

**Type**

CartItemTestData

**Description**

The instance of CartItemTestData.

### `withRegistrationType(String registrationType)` → `CartItemTestData`

Change the RegistrationType__c for the CartItem__c that is being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`registrationType` |  The desired Registration Type to use for building CartItems. |

#### Return

**Type**

CartItemTestData

**Description**

The instance of CartItemTestData.

### `withSalesTax(Id salesTaxId)` → `CartItemTestData`

Change the SalesTax__c for the CartItem__c that is being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`salesTaxId` |  The Id of the sales tax to use for building CartItems. |

#### Return

**Type**

CartItemTestData

**Description**

The instance of CartItemTestData.

### `withShippingAddress(Address address)` → `CartItemTestData`

Change the entire Shipping Address for the CartItem__c that is being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`street` |  The desired Shipping Address to use for building CartItems. |

#### Return

**Type**

CartItemTestData

**Description**

The instance of CartItemTestData.

### `withShippingCity(String city)` → `CartItemTestData`

Change the ShippingCity__c for the CartItem__c that is being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`city` |  The desired ShippingCity to use for building CartItems. |

#### Return

**Type**

CartItemTestData

**Description**

The instance of CartItemTestData.

### `withShippingCountry(String country)` → `CartItemTestData`

Change the ShippingCountry__c for the CartItem__c that is being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`country` |  The desired ShippingCountry to use for building CartItems. |

#### Return

**Type**

CartItemTestData

**Description**

The instance of CartItemTestData.

### `withShippingPostalCode(String postalCode)` → `CartItemTestData`

Change the ShippingPostalCode__c for the CartItem__c that is being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`postalCode` |  The desired ShippingPostalCode to use for building CartItems. |

#### Return

**Type**

CartItemTestData

**Description**

The instance of CartItemTestData.

### `withShippingState(String state)` → `CartItemTestData`

Change the ShippingState__c for the CartItem__c that is being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`state` |  The desired ShippingState to use for building CartItems. |

#### Return

**Type**

CartItemTestData

**Description**

The instance of CartItemTestData.

### `withShippingStreet(String street)` → `CartItemTestData`

Change the ShippingStreet__c for the CartItem__c that is being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`street` |  The desired ShippingStreet to use for building CartItems. |

#### Return

**Type**

CartItemTestData

**Description**

The instance of CartItemTestData.

---
