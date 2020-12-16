# DataFactorySpecialPrice class

Exposes constants and methods commonly used for creating and inserting Special Price records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.

---
## Methods
### `createSpecialPrice(Id productId, String priceClass, Decimal defaultPrice)` → `SpecialPrice__c`

Creates a Special Price records for the specified Product Id, Price Class, and Price.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Product |
|`String` |  the Price Class to get assigned the Special Price |
|`Decimal` |  the Special Price amount |

#### Return

**Type**

SpecialPrice__c

**Description**

a SpecialPrice__c object

### `createSpecialPrice(Id productId, String priceClass, Decimal defaultPrice, Decimal earlyPrice, Decimal latePrice)` → `SpecialPrice__c`

Creates a Special Price records for the specified Product Id, Price Class, and prices. Early Price and Late Price can be specified if the Product is a Registration Product. They are optional parameters.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Product |
|`String` |  the Price Class to get assigned the Special Price |
|`Decimal` |  the Special Price amount |
|`Decimal` |  the Early Price amount. Optional. |
|`Decimal` |  the Late Price amount. Optional. |

#### Return

**Type**

SpecialPrice__c

**Description**

a SpecialPrice__c object

### `insertSpecialPrice(Id productId, String priceClass, Integer defaultPrice)` → `SpecialPrice__c`

Creates and inserts a Special Price records for the specified Product Id, Price Class, and Price.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Product |
|`String` |  the Price Class to get assigned the Special Price |
|`Integer` |  the Special Price amount |

#### Return

**Type**

SpecialPrice__c

**Description**

a SpecialPrice__c object

### `insertSpecialPrice(Id productId, String priceClass, Integer defaultPrice, Decimal earlyPrice, Decimal latePrice)` → `SpecialPrice__c`

Creates and inserts a Special Price records for the specified Product Id, Price Class, and prices. Early Price and Late Price can be specified if the Product is a Registration Product. They are optional parameters.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Product |
|`String` |  the Price Class to get assigned the Special Price |
|`Integer` |  the Special Price amount |
|`Decimal` |  the Early Price amount. Optional. |
|`Decimal` |  the Late Price amount. Optional. |

#### Return

**Type**

SpecialPrice__c

**Description**

a SpecialPrice__c object

### `insertSpecialPrice(Id productId, String priceClass, Decimal defaultPrice)` → `SpecialPrice__c`

Creates and inserts a Special Price records for the specified Product Id, Price Class, and Price.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Product |
|`String` |  the Price Class to get assigned the Special Price |
|`Decimal` |  the Special Price amount |

#### Return

**Type**

SpecialPrice__c

**Description**

a SpecialPrice__c object

### `insertSpecialPrice(Id productId, String priceClass, Decimal defaultPrice, Decimal earlyPrice, Decimal latePrice)` → `SpecialPrice__c`

Creates and inserts a Special Price records for the specified Product Id, Price Class, and prices. Early Price and Late Price can be specified if the Product is a Registration Product. They are optional parameters.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Product |
|`String` |  the Price Class to get assigned the Special Price |
|`Decimal` |  the Special Price amount |
|`Decimal` |  the Early Price amount. Optional. |
|`Decimal` |  the Late Price amount. Optional. |

#### Return

**Type**

SpecialPrice__c

**Description**

a SpecialPrice__c object

---
