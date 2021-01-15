# DataFactoryOrderItemLine class

Exposes constants and methods commonly used for creating and inserting Order Item Line records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.

---
## Properties

### `DEFAULT_QUANTITY` → `Integer`

### `DEFAULT_UNIT_PRICE` → `Decimal`

---
## Methods
### `createOrderItemLine(Id orderItemId, Id productId, Integer quantity, Decimal unitPrice)` → `OrderItemLine__c`

Creates an Order Item Line using the specified Order Item Id, Product Id, Quantity, and Unit Price.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the order item that the order item line is for |
|`Id` |  the Id of the product to use. |
|`Integer` |  the quantity of the product to purchase. |
|`Decimal` |  the amount to charge for each unit of the product. |

#### Return

**Type**

OrderItemLine__c

**Description**

a OrderItemLine__c object

### `createOrderItemLine(Id orderItemId, Id productId)` → `OrderItemLine__c`

Creates an Order Item Line using the specified Order Item Id, Product Id, Default Quantity, and Default Unit Price.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the order item that the order item line is for |
|`Id` |  the Id of the product to use. |

#### Return

**Type**

OrderItemLine__c

**Description**

a OrderItemLine__c object

### `insertOrderItemLine(Id orderItemId, Id productId)` → `OrderItemLine__c`

Creates and inserts an Order Item Line using the specified Order Item Id, Product Id, Default Quantity, and Default Unit Price.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the order item that the order item line is for |
|`Id` |  the Id of the product to use. |

#### Return

**Type**

OrderItemLine__c

**Description**

a OrderItemLine__c object

### `insertOrderItemLine(Id orderItemId, Id productId, Integer quantity, Decimal unitPrice)` → `OrderItemLine__c`

Creates and inserts an Order Item Line using the specified Order Item Id, Product Id, Quantity, and Unit Price.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the order item that the order item line is for |
|`Id` |  the Id of the product to use. |
|`Integer` |  the quantity of the product to purchase. |
|`Decimal` |  the amount to charge for each unit of the product. |

#### Return

**Type**

OrderItemLine__c

**Description**

a OrderItemLine__c object

---
