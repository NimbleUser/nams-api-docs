# Order class

This class is used to represent a single order. It facilitates the insertion of orders into the database.

---
## Constructors
### `Order(OrderRequest orderRequestParam)`

Default constructor.
#### Parameters
|Param|Description|
|-----|-----------|
|`orderRequestParam` |  A request containing the information necessary for creating the order wrapper. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if orderRequest is null. |

---
## Properties

### `BillMe` → `Boolean`

Whether or not this order is set for bill me (invoicing).

### `BillToId` → `Id`

The Id of the account submitting the order.

### `EntityId` → `Id`

The Id of the primary entity for this order.

### `ExternalTaxId` → `String`

The External Tax Id for this order.

### `PurchaseOrderNumber` → `String`

The purchase order number of an order.

### `Purpose` → `String`

The purpose for this order. If none is explicitly set, the purpose is determined by the record type of the first order item found.

### `RecordId` → `Id`

Accessor for the Id of the wrapped record.

### `TransactionDate` → `Date`

The date that this order was submitted.

---
## Methods
### `addLines(List<OrderLine> orderLines)` → `void`

Adds a list of OrderLine to the order being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`orderLines` |  List of OrderLine to add. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumenNullException` |  if orderLines is null. |

### `addProduct(Id productId)` → `Order`

Builds and adds an OrderLine that represents the passed in product Id. The line built will have the following data: Customer -> This Order's Bill To Quantity -> 1 Transaction date -> Now For more advanced line creation use the addLines endpoint.

#### Parameters
|Param|Description|
|-----|-----------|
|`productId` |  The productId for which to add a line to this order. |

#### Return

**Type**

Order

**Description**

Updated Order instance.

### `addProducts(Set<Id> productIds)` → `Order`

Builds and adds OrderLines that represent the passed in product Ids. The build lines will have the following data: Customer -> This Order's Bill To Quantity -> 1 Transaction date -> Now For more advanced line creation use the addLines endpoint.

#### Parameters
|Param|Description|
|-----|-----------|
|`productIds` |  The productIds for which to add a lines to this order. |

#### Return

**Type**

Order

**Description**

Updated Order instance.

### `addValueToField(Schema.SObjectField field, Object value)` → `void`

Assign a value to an Schema.SObjectField to assign it to the SObject this wrapper represents before it is built.

#### Parameters
|Param|Description|
|-----|-----------|
|`field` |  Schema.SObjectField to assign the value to. |
|`value` |  The value that will be assigned to the field. |

### `applyDiscount(String couponCode)` → `OperationResult`

Applies the passed in coupon code to this order.

#### Parameters
|Param|Description|
|-----|-----------|
|`couponCode` |  The coupon code to apply. |

#### Return

**Type**

OperationResult

**Description**

OperationResult with the result of the operation.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if couponCode is blank. |

### `cancel()` → `void`

Calls the cancel() method on each OrderItem in this Order.

### `getBalance()` → `Decimal`

Calculates the balance for this order by subtracting the total payment from the grand total.

#### Return

**Type**

Decimal

**Description**

A decimal representing the balance.

### `getCurrencyIsoCode()` → `String`

Returns the CurrencyIsoCode of the SObject if salesforce multi-currency is turned on.

### `getDiscountCodes()` → `Set<String>`

Gets the discounts applied to this order.

#### Return

**Type**

Set<String>

**Description**

Discount codes applied to this order.

### `getGrandTotal()` → `Decimal`

Calculates the grand total for this order by adding up the grand total for each child OrderItem.

#### Return

**Type**

Decimal

**Description**

The calculated grand total.

### `getOrderItems()` → `List<OrderItem>`

Gets a list of all OrderItems that this Order contains.

#### Return

**Type**

List<OrderItem>

**Description**

List of OrderItem.

### `getSObjectType()` → `Schema.SObjectType`

Returns the SObject type this object represents.

#### Return

**Type**

Schema.SObjectType

**Description**

Order__c.SObjectType.

### `getSubTotal()` → `Decimal`

Calculates the subtotal for this order by adding up the subtotal for each child OrderItem.

#### Return

**Type**

Decimal

**Description**

A decimal representing the subtotal.

### `getTotalDiscounts()` → `Decimal`

Calculates the total discount amount by adding up the discounts for each child OrderItem. Because theBecause OrderLines that represent a discount have a negative Total Price, the value returned by this method is a negative number.

#### Return

**Type**

Decimal

**Description**

Total calculated discount.

### `getTotalPayment()` → `Decimal`

Calculates the total payment for this order by adding up the total payment for each child OrderItem.

#### Return

**Type**

Decimal

**Description**

A decimal representing the total payment.

### `getTotalShipping()` → `Decimal`

Calculates the total shipping for this order by adding up the total shipping for each child OrderItem.

#### Return

**Type**

Decimal

**Description**

A decimal representing the total shipping.

### `getTotalTax()` → `Decimal`

Calculates the total tax for this order by adding up the total tax for each child OrderItem.

#### Return

**Type**

Decimal

**Description**

A decimal representing the total tax.

### `getValueFromField(SObjectField field)` → `Object`

Gets the value on this wrapper that corresponds to the passed in field.

#### Parameters
|Param|Description|
|-----|-----------|
|`field` |  The field we want to get the value for. |

#### Return

**Type**

Object

**Description**

The value for the passed in field.

### `removeDiscount(String couponCode)` → `OperationResult`

Removes the discount corresponding to the passed in coupon code.

#### Parameters
|Param|Description|
|-----|-----------|
|`couponCode` |  The coupon code to remove. |

#### Return

**Type**

OperationResult

**Description**

OperationResult with the result of the operation.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if couponCode is blank. |

---
