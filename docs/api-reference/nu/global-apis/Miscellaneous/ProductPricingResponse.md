# ProductPricingResponse class

The response to a product pricing request which contains the calculated product prices.

---
## Constructors
### `ProductPricingResponse()`
---
## Properties

### `ProductPrices` → `Decimal>`

The calculated product prices. The Id is the product Id. The decimal is the product's price.

### `Request` → `ProductPricing`

The original Product Pricing Request so the pricing requester knows which product prices these are for.

---
## Methods
### `calculateProductPricesSum()` → `Decimal`

Calculates the sum of the product prices. If there are no product prices, 0 is returned;

---
