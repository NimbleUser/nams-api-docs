# AccountService class

Exposes Account methods and functions for use outside of the package.

---
## Methods
### `getAccountById(Id accountId)` → `Account`

Provides the Account instance for this Id. 		A subset of custom and standard fields used by the package are populated, 		namely: Username__c, Type, TickerSymbol, SystemModstamp, Site, Sic, 		ShippingStreet, ShippingState, ShippingPostalCode, ShippingCountry, 		ShippingCity, Rating, Phone, PersonEmail__c, NumberOfEmployees, Name, 		Suffix__c, Status__c, RecordTypeName__c, PrimaryAffiliation__c, 		PrimaryAffiliation__r.Name, PersonContact__c, PersonContact__r.MailingStreet, 		PersonContact__r.MailingCity, PersonContact__r.MailingState, 		PersonContact__r.MailingPostalCode, PersonContact__r.MailingCountry, 		PersonContact__r.OtherStreet, PersonContact__r.OtherCity, 		PersonContact__r.OtherState, PersonContact__r.OtherPostalCode, 		PersonContact__r.OtherCountry, PersonContact__r.Title, 		PersonContact__r.Salutation, PersonContact__r.LastName, 		PersonContact__r.FirstName, PersonContact__r.HomePhone, 		PersonContact__r.Email, OtherFax__c, OtherEmail__c, MiddleName__c, 		MembershipType__c, MemberThru__c, Membership__c, Member__c, MarkForDelete__c, 		LegacyID__c, LastLogin__c, Lapsed__c, LapsedOn__c, JoinOn__c, CasualName__c, 		Gender__c, FullName__c, Ethnicity__c, CopyFromPrimaryAffiliationBilling__c, 		CopyFromMailingToShipping__c, CopyFromMailingToOther__c, 		CopyFromMailingToBilling__c, CommunicationPreference__c, Industry, Id, 		Description, BillingStreet, BillingState, BillingPostalCode, BillingCountry, 		BillingCity, AnnualRevenue, AccountNumber, Designation__c.

#### Parameters
|Param|Description|
|-----|-----------|
|`accountId` |  The Id of the Account object to be retrieved. |

#### Return

**Type**

Account

**Description**

An Account object.

### `getAccountsByIds(Set<Id> accountIds)` → `List<Account>`

Provides a list of Account instances from a specified Set of Ids. A subset of custom and standard fields used by the package are populated (see getAccountById).

#### Parameters
|Param|Description|
|-----|-----------|
|`Set<Id>` |  the Set of Ids of Account objects to be retrieved |

#### Return

**Type**

List<Account>

**Description**

a List of Account objects

### `getIndividualAccountRecordType()` → `Schema.Recordtypeinfo`

Provides the Individual Account RecordTypeInfo.

#### Return

**Type**

Schema.Recordtypeinfo

**Description**

The RecordTypeInfo of the Individual Account Record Type.

### `getOrganizationAccountRecordType()` → `Schema.RecordTypeInfo`

Provides the Organization Account RecordTypeInfo instance 		used by the package.

#### Return

**Type**

Schema.RecordTypeInfo

**Description**

The RecordTypeInfo of the Organization Account Record Type.

---
