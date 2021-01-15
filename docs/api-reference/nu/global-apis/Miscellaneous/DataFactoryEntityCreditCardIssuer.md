# DataFactoryEntityCreditCardIssuer class

Exposes constants and methods commonly used for creating and inserting Entity Credit Card Issuer records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.

---
## Methods
### `createEntityCreditCardIssuer(Id entityId, Id cciId, Id bankAcctId)` → `EntityCreditCardIssuer__c`

Creates an Entity Credit Card Issuer from the specified Entity, Credit Card Issuer, and Bank Account Ids.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity |
|`Id` |  the Id of the Credit Card Issuer |
|`Id` |  the Id of the Bank Account |

#### Return

**Type**

EntityCreditCardIssuer__c

**Description**

a EntityCreditCardIssuer__c object

### `insertSystemEntityCreditCardIssuers(Id entityId)` → `List<EntityCreditCardIssuer__c>`

Creates and inserts Entity Credit Card Issuer records for all of the system Credit Card Issuer records for the specified Entity Id. First, the default system Credit Card Issuers for Visa, Mastercard, Discover, and American Express will be inserted. A test Bank Account will also be created and inserted. This method should be used for testing purposes only.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity |

#### Return

**Type**

List<EntityCreditCardIssuer__c>

**Description**

a List of EntityCreditCardIssuer__c object records

---
