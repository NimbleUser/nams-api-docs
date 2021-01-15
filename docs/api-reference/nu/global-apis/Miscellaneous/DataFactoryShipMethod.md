# DataFactoryShipMethod class

Exposes constants and methods commonly used for creating and inserting Ship Method records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.

---
## Properties

### `DEFAULT_HANDLING_RATE` → `Decimal`

### `DEFAULT_SHIPPING_PRICE` → `Decimal`

### `DEFAULT_SHIPPING_RATE` → `Decimal`

### `DEFAULT_SHIP_METHOD_NAME` → `String`

### `DEFAULT_THRESHOLD` → `Decimal`

---
## Methods
### `createCostShipMethod(Decimal threshold)` → `ShipMethod__c`

Creates a Cost Ship Method record using the default name, price, and handling rate.

#### Parameters
|Param|Description|
|-----|-----------|
|`Decimal` |  the threshold to use |

#### Return

**Type**

ShipMethod__c

**Description**

a ShipMethod__c object

### `createCostShipMethod()` → `ShipMethod__c`

Creates a Cost Ship Method record using the default name, price, handling rate, and threshold.

#### Return

**Type**

ShipMethod__c

**Description**

a ShipMethod__c object

### `createFlatRateShipMethod()` → `ShipMethod__c`

Creates a Flat Rate Ship Method record using the default name, price, and handling rate.

#### Return

**Type**

ShipMethod__c

**Description**

a ShipMethod__c object

### `createPercentageOfCostShipMethod()` → `ShipMethod__c`

Creates a Percentage of Cost Ship Method record using the default name, rate, and handling rate.

#### Return

**Type**

ShipMethod__c

**Description**

a ShipMethod__c object

### `createShipMethod()` → `ShipMethod__c`

Creates a Ship Method record using the default name, price, and handling rate.

#### Return

**Type**

ShipMethod__c

**Description**

a ShipMethod__c object

### `createWeightShipMethod(Decimal threshold)` → `ShipMethod__c`

Creates a Weight Ship Method record using the default name, price, and handling rate.

#### Parameters
|Param|Description|
|-----|-----------|
|`Decimal` |  the threshold to use |

#### Return

**Type**

ShipMethod__c

**Description**

a ShipMethod__c object

### `createWeightShipMethod()` → `ShipMethod__c`

Creates a Weight Ship Method record using the default name, price, handling rate, and threshold.

#### Return

**Type**

ShipMethod__c

**Description**

a ShipMethod__c object

### `insertCostShipMethod(Decimal threshold)` → `ShipMethod__c`

Creates and inserts a Cost Ship Method record using the default name, price, and handling rate.

#### Parameters
|Param|Description|
|-----|-----------|
|`Decimal` |  the threshold to use |

#### Return

**Type**

ShipMethod__c

**Description**

a ShipMethod__c object

### `insertCostShipMethod()` → `ShipMethod__c`

Creates and inserts a Cost Ship Method record using the default name, price, handling rate, and threshold.

#### Return

**Type**

ShipMethod__c

**Description**

a ShipMethod__c object

### `insertFlatRateShipMethod()` → `ShipMethod__c`

Creates and inserts a Flat Rate Ship Method record using the default name, price, and handling rate.

#### Return

**Type**

ShipMethod__c

**Description**

a ShipMethod__c object

### `insertPercentageOfCostShipMethod()` → `ShipMethod__c`

Creates and inserts a Percentage of Cost Ship Method record using the default name, rate, and handling rate.

#### Return

**Type**

ShipMethod__c

**Description**

a ShipMethod__c object

### `insertShipMethod()` → `ShipMethod__c`

Creates and inserts a Ship Method record using the default name, price, and handling rate.

#### Return

**Type**

ShipMethod__c

**Description**

a ShipMethod__c object

### `insertWeightShipMethod(Decimal threshold)` → `ShipMethod__c`

Creates and inserts a Weight Ship Method record using the default name, price, and handling rate.

#### Parameters
|Param|Description|
|-----|-----------|
|`Decimal` |  the threshold to use |

#### Return

**Type**

ShipMethod__c

**Description**

a ShipMethod__c object

### `insertWeightShipMethod()` → `ShipMethod__c`

Creates and inserts a Weight Ship Method record using the default name, price, handling rate, and threshold.

#### Return

**Type**

ShipMethod__c

**Description**

a ShipMethod__c object

---
