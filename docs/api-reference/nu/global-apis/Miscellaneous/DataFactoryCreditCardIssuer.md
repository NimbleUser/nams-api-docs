# DataFactoryCreditCardIssuer class

Exposes constants and methods commonly used for creating and inserting Credit Card Issuer records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.

---
## Properties

### `systemCCIs` → `List<CreditCardIssuer__c>`

Holds a List of Credit Card Issuer records. Can be programmatically populated by invoking the insertSystemCreditCardIssuers() method.

---
## Methods
### `createAmexCreditCardIssuer()` → `CreditCardIssuer__c`

Creates a Credit Card Issuer for an American Express credit card with defined expressions and an error message.

#### Return

**Type**

CreditCardIssuer__c

**Description**

a CreditCardIssuer__c object

### `createCreditCardIssuer(String name,String imgStaticResourceName, String numberRegEx, String numberErrMsg, String identifierRegex)` → `CreditCardIssuer__c`

Creates a Credit Card Issuer from the specified inputs, none of which can be null or empty. The regular expression that identifies the credit card number will be more simplified than the regular expression of the entire credit card number. For example, Visa credit card numbers all begin with a 4, so the identifier regular expression is ^4.*

#### Parameters
|Param|Description|
|-----|-----------|
|`String` |  the name for the Credit Card Issuer record |
|`String` |  the name of the static resource of the credit card image, for displaying in the order process |
|`String` |  the regular expression of the credit card number - the credit card number entered must pass this validation |
|`String` |  the error message to display when the number entered does not pass the defined regular expressions |
|`String` |  the regular expression that identifies the credit card number as belonging to this definition |

#### Return

**Type**

CreditCardIssuer__c

**Description**

a CreditCardIssuer__c object

### `createDiscoverCreditCardIssuer()` → `CreditCardIssuer__c`

Creates a Credit Card Issuer for a Discover credit card with defined expressions and an error message.

#### Return

**Type**

CreditCardIssuer__c

**Description**

a CreditCardIssuer__c object

### `createMastercardCreditCardIssuer()` → `CreditCardIssuer__c`

Creates a Credit Card Issuer for a Mastercard credit card with defined expressions and an error message.

#### Return

**Type**

CreditCardIssuer__c

**Description**

a CreditCardIssuer__c object

### `createVisaCreditCardIssuer()` → `CreditCardIssuer__c`

Creates a Credit Card Issuer for a Visa credit card with defined expressions and an error message.

#### Return

**Type**

CreditCardIssuer__c

**Description**

a CreditCardIssuer__c object

### `insertSystemCreditCardIssuers()` → `List<CreditCardIssuer__c>`

Creates and inserts the default system Credit Card Issuers for Visa, Mastercard, Discover, and American Express with defined expressions and error messages.

#### Return

**Type**

List<CreditCardIssuer__c>

**Description**

a List of CreditCardIssuer__c object records

---
