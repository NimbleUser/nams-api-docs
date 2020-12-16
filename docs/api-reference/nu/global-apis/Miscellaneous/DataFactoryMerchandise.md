# DataFactoryMerchandise class

Exposes constants and methods commonly used for creating and inserting Merchandise records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.

---
## Methods
### `insertDefaultMerchandise()` → `Merchandise__c`

Creates and inserts a default merchandise for a default person account. A default entity and merchandise product is inserted. Also inserts basic entity setup information - such as payment methods, credit card issuers, and order item configurations.

#### Return

**Type**

Merchandise__c

**Description**

A Merchandise__c object.

---
