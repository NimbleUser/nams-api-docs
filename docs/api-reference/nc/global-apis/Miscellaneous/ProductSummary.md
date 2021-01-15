# ProductSummary class

Handles the data related to a product summary.

---
## Constructors
### `ProductSummary(znu__Product__c product)`

Constructs a ProductSummary object.
#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if product is null. |

---
## Properties

### `Description` → `String`

The long description of the product.

### `Id` → `global`

The Id of the product.

### `ImageUrl` → `String`

The image url of the product.

### `MemberPrice` → `Decimal`

The member price class special price of the product. If there is no member price, unit price is assigned to return.

### `Name` → `String`

The name of the product.

### `Price` → `Decimal`

The list price of the product.

### `ShortDescription` → `String`

The short description of the product.

---
## Methods
### `getRecord()` → `znu__Product__c`

Gets the znu__Product__c record wrapped by this object.

#### Return

**Type**

znu__Product__c

**Description**

znu__Product__c record.

---
