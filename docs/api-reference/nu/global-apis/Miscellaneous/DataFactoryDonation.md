# DataFactoryDonation class

Exposes constants and methods commonly used for creating and inserting Donation records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.

---
## Methods
### `insertDefaultDonation()` → `Donation__c`

Creates and inserts a default donation for a default person account. A default entity and donation product is inserted. Also inserts basic entity setup information - such as payment methods, credit card issuers, and order item configurations.

#### Return

**Type**

Donation__c

**Description**

A Donation__c object.

---
