# ShippingServiceResponse class

The response class used by ShippingService.

---
## Properties

### `Result` → `Operation`

The OperationResult of any DML operations performed.

### `ShipMethods` → `List<ShipMethod>`

The list of ship method costs.

---
## Inner Classes

### ShippingServiceResponse.ShipMethod class

A wrapper class to encapsulate a ship method and associated cost.

---
#### Properties

##### `Cost` → `Decimal`

The cost of this ship method.

##### `CurrencyIsoCode` → `String`

Currency ISO Code of the SObject.

##### `Id` → `global`

The ID of the ship method.

##### `Name` → `String`

The name of the ship method.

---
