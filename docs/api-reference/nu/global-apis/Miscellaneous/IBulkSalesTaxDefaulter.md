# IBulkSalesTaxDefaulter interface

Used to determine which sales tax to apply based on the address, account, and entity.

---
## Methods
### `getSalesTax(BulkSalesTaxRequest bulkSalesTaxRequest)` → `BulkSalesTaxResponse`

Determines the sales tax to apply for multiple sets of addresses, accounts, and entities.

#### Parameters
|Param|Description|
|-----|-----------|
|`bulkSalesTaxRequest` |  Details on the items for which sales tax should be determined |

#### Return

**Type**

BulkSalesTaxResponse

**Description**

Details on the sales tax that should be applied for each request

---
