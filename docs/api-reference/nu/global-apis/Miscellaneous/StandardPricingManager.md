# StandardPricingManager class

Exposes methods for the standard Pricing Manager. 		Exposes methods to determine the price class and product pricing.

---
## Properties

### `EMPTY_PRODUCT_PRICES` → `Decimal>`

---
## Methods
### `GetPriceClass(PriceClassRequest priceClassRequest)` → `String`

Returns the Price Class name based on the PriceClassRequest passed in. 		This method delegates to the Bulk Pricing Manager specified to determine the price class name. 		By default, the StandardBulkPricingManager is used and if it is used and 		it is determined that the Account is a Member, returns the Member Price Class name; 		otherwise, returns the Default Price Class name.

#### Parameters
|Param|Description|
|-----|-----------|
|`PriceClassRequest` |  the PriceClassRequest |

#### Return

**Type**

String

**Description**

the String containing the name of the Price Class

### `GetProductPrices(ProductPricingRequest productPricingRequest)` → `Decimal>`

Returns a Map of product pricing based on the ProductPricingRequest passed in. 		This method delegates to the Bulk Pricing Manager specified to determine the product prices. 		If the Standard Bulk Pricing Manager is used, then the following applies. 		The returned Map uses the Product Ids as the keys, and the Decimal of the calculated price as the values. 		If the ProductPricingRequest or the ProductPricingInfos contained with the ProductPricingRequest is null, returns an empty Map. 		The calculations look to determine if there are SpecialPrices established for the products. If the products are event session products, 		the current date is also analyzed if early and late pricing is set. Otherwise, the list price on the product is used.

#### Parameters
|Param|Description|
|-----|-----------|
|`ProductPricingRequest` |  the ProductPricingRequest |

#### Return

**Type**

Decimal>

**Description**

the Map of Product Ids and Decimal values

---
