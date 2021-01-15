# EnhancedPaymentLine class

Provides support for level 3 payment data.

---
## Constructors
### `EnhancedPaymentLine(String description)`

Constructs a EnhancedLineItem instance.
#### Parameters
|Param|Description|
|-----|-----------|
|`description` |  A required line item description. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if description is null. |

---
## Properties

### `CommodityCode` → `String`

Specifies the Identifier assigned by the card acceptor that categorizes the purchased item. Required by Visa for Level 3 interchange rates.

### `ItemDescription` → `String`

Item Description.

### `ItemDiscountAmount` → `Decimal`

Item Discount Amount. Required by Visa for Level 3 interchange rates.

### `LineItemTotal` → `Decimal`

Line item total total cost of the line items purchased not including tax. Required by Visa and MasterCard when specifying line item data.

### `LineItemTotalWithTax` → `Decimal`

Line item total with tax.

### `ProductCode` → `String`

Merchant-defined code for the product/service. Required by Visa/Mastercard when specifying line item data.

### `Quantity` → `Decimal`

Number of items purchased on this line item. Required by Visa and MasterCard when specifying line item data.

### `TaxAmount` → `Decimal`

Tax Amount.

### `TaxRate` → `Decimal`

The tax rate (percentage).

### `UnitCost` → `Decimal`

Price for one unit of the item purchased. Required by Visa for Level III interchange rates

### `UnitOfMeasure` → `String`

Unit of Measure (e.g. "each", "pair", "gallon", "month"). Required by Visa and MasterCard when specifying line item data.

---
