# DataFactorySubscription class

Exposes constants and methods commonly used for creating and inserting Subscription records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.

---
## Methods
### `insertDefaultSubscription()` → `Subscription__c`

Creates and inserts a default subscription for a default person account. A default entity and subscription product is inserted. Also inserts basic entity setup information - such as payment methods, credit card issuers, and order item configurations.

#### Return

**Type**

Subscription__c

**Description**

A Subscription__c object.

---
