# ShippingCalculatorResponse class

The response to a shipping calculator request which contains the calculated shipping and handling costs for a ship method.

---
## Constructors
### `ShippingCalculatorResponse()`

Default constructor.
### `ShippingCalculatorResponse(ShippingCalculatorRequest request, ShipMethod__c shipMethod)`

Constructor that accepts parameters for populating the Request and Ship Method with values. The Handling Cost and Shipping Cost parameters are initialized at 0.
#### Parameters
|Param|Description|
|-----|-----------|
|`ShippingCalculatorRequest` |  the original shipping calculator request |
|`ShipMethod__c` |  the Ship Method record that these costs are for |

---
## Properties

### `HandlingCost` → `Decimal`

The determined handling cost for this shipping calculator request.

### `Request` → `ShippingCalculator`

The original shipping calculator request. Useful for the caller to determine whose request this is for.

### `ShipMethod` → `global`

The Ship Method record that the costs are for.

### `ShippingCost` → `Decimal`

The determined shipping cost for this shipping calculator request.

---
