# BulkStateSalesTaxDefaulter class

Determines which sales tax to use based on the address state or country.

---
## Methods
### `getSalesTax(BulkSalesTaxRequest bulkSalesTaxRequest)` → `BulkSalesTaxResponse`

Determines the sales tax to apply for multiple sets of addresses, accounts, and entities based on the address state or country. Accounts marked as tax exempt are not taxed.

#### Parameters
|Param|Description|
|-----|-----------|
|`bulkSalesTaxRequest` |  Details on the items for which sales tax should be determined. |

#### Return

**Type**

BulkSalesTaxResponse

**Description**

Details on the sales tax that should be applied for each request.

---
