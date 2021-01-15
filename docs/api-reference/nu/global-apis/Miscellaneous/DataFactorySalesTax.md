# DataFactorySalesTax class

Exposes constants and methods commonly used for creating and inserting Sales Tax records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.

---
## Properties

### `DEFAULT_STATES` → `String`

### `DEFAULT_TAX_RATE` → `Decimal`

---
## Methods
### `createSalesTax(Id entityId, Id salesTaxGLAccountId, String states, String status, Decimal taxRate)` → `SalesTax__c`

Creates a Sales Tax record using the specified Entity and Sales Tax GL Account Ids and supplied states, status, and tax rate. The State string should be delimited by a semi-colon(;) and use the two-letter abbreviation. The Tax Rate is out of 100.

#### Parameters
|Param|Description|
|-----|-----------|
|`entityId` |  The Id of the Entity. |
|`salesTaxGLAccountId` |  The Id of the Sales Tax GL Account. |
|`states` |  The String of states for which the Sales Tax is for. |
|`status` |  The status of the record. |
|`taxRate` |  The tax rate. |

#### Return

**Type**

SalesTax__c

**Description**

A SalesTax__c object.

### `createSalesTax()` → `SalesTax__c`

Creates a default Sales Tax record. A default Entity, Sales Tax GL Account, States List, Status, and Tax Rate is used. Also inserts basic Entity setup information - such as payment methods, credit card issuers, and order items configurations. This method should be used for testing purposes only.

#### Return

**Type**

SalesTax__c

**Description**

A SalesTax__c object.

### `insertSalesTax(Id entityId, Id salesTaxGLAccountId, String states, String status, Decimal taxRate)` → `SalesTax__c`

Creates and inserts a Sales Tax record using the specified Entity and Sales Tax GL Account Ids and supplied states, status, and tax rate. The State string should be delimited by a semi-colon(;) and use the two-letter abbreviation. The Tax Rate is out of 100.

#### Parameters
|Param|Description|
|-----|-----------|
|`entityId` |  The Id of the Entity. |
|`salesTaxGLAccountId` |  The Id of the Sales Tax GL Account. |
|`states` |  The String of states for which the Sales Tax is for. |
|`status` |  The status of the record. |
|`taxRate` |  The tax rate. |

#### Return

**Type**

SalesTax__c

**Description**

A SalesTax__c object.

### `insertSalesTax(Id entityId)` → `SalesTax__c`

Creates and inserts a default Sales Tax record using the specified Entity Id. A default Sales Tax GL Account, States List, Status, and Tax Rate is used.

#### Parameters
|Param|Description|
|-----|-----------|
|`entityId` |  The Id of the Entity. |

#### Return

**Type**

SalesTax__c

**Description**

A SalesTax__c object.

### `insertSalesTax()` → `SalesTax__c`

Creates and inserts a default Sales Tax record. A default Entity, Sales Tax GL Account, States List, Status, and Tax Rate is used. Also inserts basic Entity setup information - such as payment methods, credit card issuers, and order items configurations. This method should be used for testing purposes only.

#### Return

**Type**

SalesTax__c

**Description**

A SalesTax__c object.

---
