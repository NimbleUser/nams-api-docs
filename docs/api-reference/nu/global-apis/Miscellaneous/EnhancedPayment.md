# EnhancedPayment class

Enhanced data to include with the transaction request to qualify for Level 2 and Level 3 exchange rates.

---
## Constructors
### `EnhancedPayment()`
---
## Properties

### `CustomerReference` → `String`

Defines a reference used by the customer for the purchase. Required by Visa for Level 3 rates.

### `DeliveryType` → `String`

Defines the shipping method used for delivery of the product.

### `DestinationCountryCode` → `String`

Code of the destination address.

### `DetailTax` → `String`

Used to specify detailed tax information (e.g. city, local tax). @deprecated Use DetailTaxes instead.

### `DetailTaxes` → `global`

Used to specify detailed tax information for standard, L2, and L3 processing.

### `DiscountAmount` → `Decimal`

Total discount for the order. Required by Visa for Level 3 rates.

### `DutyAmount` → `Decimal`

Duty on the total purchased amount of the order. Required by Visa for Level 3 rates.

### `InvoiceReferenceNumber` → `String`

Merchant's invoice number.

### `LineItems` → `List<EnhancedPaymentLine>`

EnhancedPaymentLines representing detailed information on individual items in the order.

### `OrderDate` → `String`

The date the order was placed. Format: YYYY-MM-DD.

### `SalesTax` → `Decimal`

The amount of sales tax for the order.

### `ShipFromPostalCode` → `String`

The postal code from which the order ships.

### `ShippingAmount` → `Decimal`

The shipping cost for the order.

### `TaxExempt` → `Boolean`

Whether the transaction is exempt from sales tax or not.

---
## Methods
### `addLineItem(EnhancedPaymentLine lineItemToAdd)` → `void`

Adds a line item with information of individual items in the order. When providing line item data, each item has to be sequentially number starting from 1, so the sequence is updated whenever an item is added.

#### Parameters
|Param|Description|
|-----|-----------|
|`lineItemToAdd` |  The EnhancedPaymentLine to add. |

### `addLineItems(List<EnhancedPaymentLine> lineItemsToAdd)` → `void`

Adds line items with information of individual items in the order.

#### Parameters
|Param|Description|
|-----|-----------|
|`lineItemsToAdd` |  The EnhancedPaymentLines to add. |

---
