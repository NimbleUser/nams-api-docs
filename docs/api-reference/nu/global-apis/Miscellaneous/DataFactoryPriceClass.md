# DataFactoryPriceClass class

Exposes constants and methods commonly used for creating and inserting Price Class records. 				These constants and methods are global to help aid in testing customizations and extensions 				that are created outside of the package.

---
## Methods
### `createDefaultPriceClass()` → `PriceClass__c`

Creates the default Price Class.

#### Return

**Type**

PriceClass__c

**Description**

a PriceClass__c object

### `createPriceClass(String priceClassName, Integer seqNumber)` → `PriceClass__c`

Creates a Price Class for the specified name, with the given sequence number. 			 A Price Class with a lower sequence number will be processed before a Price Class of a higher number.

#### Parameters
|Param|Description|
|-----|-----------|
|`String` |  the name of the Price Class |
|`Integer` |  the sequence for the Price Class |

#### Return

**Type**

PriceClass__c

**Description**

a PriceClass__c object

### `insertDefaultPriceClass()` → `PriceClass__c`

Creates and inserts the default Price Class.

#### Return

**Type**

PriceClass__c

**Description**

a PriceClass__c object

### `insertPriceClass(String priceClassName, Integer seqNum)` → `PriceClass__c`

Creates and inserts a Price Class for the specified name, with the given sequence number. 			A Price Class with a lower sequence number will be processed before a Price Class of a higher number.

#### Parameters
|Param|Description|
|-----|-----------|
|`String` |  the name of the Price Class |
|`Integer` |  the sequence for the Price Class |

#### Return

**Type**

PriceClass__c

**Description**

a PriceClass__c object

### `insertSystemPriceClasses()` → `List<PriceClass__c>`

Creates and inserts the default, speaker, and member Price Classes.

#### Return

**Type**

List<PriceClass__c>

**Description**

a List of PriceClass__c object records

---
