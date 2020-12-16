# StateSalesTaxDefaulter class

Exposes methods for the standard Sales Tax Defaulter. 		Exposes the method to determine the sales tax.

---
## Methods
### `getDefaultSalesTaxByAddress(Address address, List<SalesTax__c> salesTaxes)` → `SalesTax__c`

Returns the SalesTax__c record based on the Address information and List of SalesTax__c records passed in. The Address information passed in will be used to determine the state or country of the sales tax to use. Null is returned if 1) the Address information is null, 2) both the State and Country fields are null or empty, 3) the List of SalesTax__c records is empty, or 4) a matching Sales Tax record could not be found.

#### Parameters
|Param|Description|
|-----|-----------|
|`address` |  The address information. |
|`salesTaxes` |  The List of SalesTax__c records. |

#### Return

**Type**

SalesTax__c

**Description**

The SalesTax__c record that should be used.

---
