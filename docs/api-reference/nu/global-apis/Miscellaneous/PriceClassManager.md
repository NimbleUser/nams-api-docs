# PriceClassManager class

Exposes the method for getting the pricing manager.

---
## Methods
### `getBulkPricingManager()` → `IBulkPricingManager`

Returns the bulk pricing manager that is established on the Nimble AMS Configure page. If the bulk pricing implementation is not set on the Configure page, returns the StandardBulkPricingManager.

#### Return

**Type**

IBulkPricingManager

**Description**

the IBulkPricingManager

### `getPricingImpl()` → `IPricingImpl`

 @deprecated Use PriceClassManager.getBulkPricingManager instead.

### `getPricingManager()` → `IPricingManager`

Returns the pricing manager that is established on the Nimble AMS Configure page. If the pricing implementation is not set on the Configure page, returns the StandardPricingManager.

#### Return

**Type**

IPricingManager

**Description**

The IPricingManager.

---
