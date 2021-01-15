# Product class

Represents a Product.

---
## Properties

### `RecurringEligible` → `Boolean`

Whether this product is enabled for recurring or not.

### `RecurringFrequencyId` → `Id`

If this product is recurring eligible, this holds the Frequency the product can recur on.

---
## Methods
### `newInstance(Product__c record)` → `Product`

Returns a new Product instance.

#### Parameters
|Param|Description|
|-----|-----------|
|`record` |  The Product__c record to wrap. |
|`record` |  The Product__c record to wrap. |

#### Return

**Type**

Product

**Description**

The constructed Product instance.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if record is null. |

---
