# SalesTaxManager class

Exposes methods for getting the sales tax manager and calculating the sales tax amount.

---
## Methods
### `calculateSalesTaxAmount(SalesTax__c salesTax, Decimal taxableAmount)` → `Decimal`

Calculates the sales tax amount for the specified SalesTax record and the taxable amount.

#### Parameters
|Param|Description|
|-----|-----------|
|`SalesTax` |  the SalesTax record to use for the tax calculation Returns 0 if the paramaters are null, or |
|`Decimal` |  the taxable amount |

#### Return

**Type**

Decimal

**Description**

the Decimal number representing the sales tax amount.

### `getBulkSalesTaxDefaulter()` → `IBulkSalesTaxDefaulter`

Returns an implementation of IBulkSalesTaxDefaulter as configured on the Nimble AMS Configure page. If no implementation has been set, BulkStateSalesTaxDefaulter will be used as a fallback.

#### Return

**Type**

IBulkSalesTaxDefaulter

**Description**

the IBulkSalesTaxDefaulter implementation

### `getSalesTaxDefaulter()` → `ISalesTaxDefaulter`

Returns the sales tax manager that is established on the Nimble AMS Configure page. If the sales tax manager is not set on the Configure page, returns the StateSalesTaxDefaulter.

#### Return

**Type**

ISalesTaxDefaulter

**Description**

the ISalesTaxDefaulter

---
