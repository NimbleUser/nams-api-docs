# ShippingCalculatorRequest class

Stores information needed to determine shipping and handling calculations.

---
## Properties

### `CustomerId` → `Id`

Holds the Id of the customer to which the products are being shipped.

### `ProductShippingInfos` → `List<ProductShippingInfo>`

The list of ProductShippingInfos, which contains information on the products that are being shipped.

### `ShipMethodIds` → `Set<Id>`

The set of valid Ship Method Ids.

### `ShippingAddress` → `Address`

Holds the address to which the products are being shipped.

### `TotalPrice` → `Decimal`

Returns the total price of all Products being shipped. @return the total price of all Products being shipped.

### `TotalWeight` → `Double`

Returns the total weight of all Products being shipped. @return the total weight of all Products being shipped.

---
