# ProductService class

Utility class for interacting with Product__c records.

---
## Methods
### `getProductById(Id productId)` → `Product__c`

Provides the Product instance for this Id. A subset of fields used by the package are populated.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Product object to be retrieved |

#### Return

**Type**

Product__c

**Description**

a Product object

### `getProductsByIds(Set<Id> productIds)` → `List<Product__c>`

Provides a list of Product instances from a specified Set of Ids. A subset of fields used by the package are populated.

#### Parameters
|Param|Description|
|-----|-----------|
|`Set<Id>` |  the Set of Ids of Product objects to be retrieved |

#### Return

**Type**

List<Product__c>

**Description**

a List of Product objects

---
