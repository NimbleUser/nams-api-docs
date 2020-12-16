# IBulkBilling interface

Contains methods for generating bills, items, and item lines for a bulk billing.

---
## Methods
### `getBillsToInsert(List<SObject> billingObjects)` → `List<BulkBilling.Bill>`
### `getItemLinesToInsert(ProductPricingResponse productPricingResponse)` → `List<BulkBilling.BillItemLine>`
### `getItemsToInsert(List<BulkBilling.Bill> insertedBills)` → `List<BulkBilling.BillItem>`
### `getPriceClassRequests()` → `List<PriceClassRequest>`
### `getProductPricingInfosByAccountIdMap()` → `List<ProductPricingInfo>>`
### `getProductPricingRequest(PriceClassResponse priceClassResponse, List<ProductPricingInfo> productPricingInfos)` → `ProductPricingRequest`
### `getQueryLocator()` → `Database.QueryLocator`
### `setup(BulkBilling.Request bulkBillingRequest)` → `void`
---
