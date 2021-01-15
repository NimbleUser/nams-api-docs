# DataFactoryMembership class

Exposes constants and methods commonly used for creating and inserting Membership records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.

---
## Methods
### `createAutoRenewingMembership(Id accountId, Id autoRenewingMembershipTypeId, Id recurringPaymentId)` → `Membership__c`

Creates an Auto Renewing Membership for the specified Account Id, auto renewing Membership Type Id, and optional recurring payment id. A default start and end date is used. The Membership Type should be of the correct type - ie, Individual Membership Types should not be assigned to Business Accounts.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Account the Membership is for |
|`Id` |  the Id of the Auto Renewing Membership Type of the Membership |
|`Id` |  the Id of the Recurring Payment. This is optional. |

#### Return

**Type**

Membership__c

**Description**

a Membership__c object

### `createMembership(Id accountId, Id membershipTypeId, Date startDate, Date endDate)` → `Membership__c`

Creates a Membership for the specified Account and Membership Type Ids, using the supplied start and end dates. The Membership Type should be of the correct type - ie, Individual Membership Types should not be assigned to Business Accounts. The start date should be before the end date. The start date must be at the beginning of a month and the end date must be at the end of a month.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Account the Membership is for |
|`Id` |  the Id of the Membership Type of the Membership |
|`Date` |  the Start Date of the Membership |
|`Date` |  the End Date of the Membership |

#### Return

**Type**

Membership__c

**Description**

a Membership__c object

### `insertAutoRenewingMembership(Id accountId, Id autoRenewingMembershipTypeId, Id recurringPaymentId)` → `Membership__c`

Creates and inserts an Auto Renewing Membership for the specified Account Id, auto renewing Membership Type Id, and optional recurring payment id. A default start and end date is used. The Membership Type should be of the correct type - ie, Individual Membership Types should not be assigned to Business Accounts.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Account the Membership is for |
|`Id` |  the Id of the Auto Renewing Membership Type of the Membership |
|`Id` |  the Id of the Recurring Payment. This is optional. |

#### Return

**Type**

Membership__c

**Description**

a Membership__c object

### `insertAutoRenewingWithRecurringPaymentMembership()` → `Membership__c`

Creates and inserts a default Auto Renewing Membership with an active Recurring Payment. A default Entity and Individual Membership Type is inserted. Also inserts basic Entity setup information - such as payment methods, credit card issuers, and order item configurations.

#### Return

**Type**

Membership__c

**Description**

a Membership__c object

### `insertAutoRenewingWithRecurringPaymentMembership(Id membershipTypeId)` → `Membership__c`

Creates and inserts an Auto Renewing Membership with an active Recurring Payment using the supplied auto renewing membership type. A default Entity is inserted. Also inserts basic Entity setup information - such as payment methods, credit card issuers, and order item configurations.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the id of the auto renewing membership type to use. |

#### Return

**Type**

Membership__c

**Description**

a Membership__c object

### `insertAutoRenewingWithRecurringPaymentMemberships(Integer numMemberships)` → `List<Membership__c>`

Creates and inserts a specified number of default Auto Renewing Membership with active Recurring Payments. A default Entity and Individual Membership Type is inserted. Also inserts basic Entity setup information - such as payment methods, credit card issuers, and order item configurations.

#### Parameters
|Param|Description|
|-----|-----------|
|`Integer` |  the number of memberships to insert |

#### Return

**Type**

List<Membership__c>

**Description**

a Membership__c object

### `insertAutoRenewingWithRecurringPaymentMemberships(Integer numMemberships, Id autoRenewingMembershipTypeId)` → `List<Membership__c>`

Creates and inserts a specified number of supplied Auto Renewing Memberships with active Recurring Payments. A default Entity is inserted. Also inserts basic Entity setup information - such as payment methods, credit card issuers, and order item configurations.

#### Parameters
|Param|Description|
|-----|-----------|
|`Integer` |  the number of memberships to insert |
|`Id` |  the id of the auto renewing membership type to use. |

#### Return

**Type**

List<Membership__c>

**Description**

a Membership__c object

### `insertAutoRenewingWithRecurringPaymentMemberships(Integer numMemberships,Id autoRenewingMembershipTypeId,Id recurringPaymentId)` → `List<Membership__c>`

Creates and inserts a specified number of supplied Auto Renewing Memberships with active Recurring Payments. A default Entity is inserted. Also inserts basic Entity setup information - such as payment methods, credit card issuers, and order item configurations.

#### Parameters
|Param|Description|
|-----|-----------|
|`Integer` |  the number of memberships to insert |
|`Id` |  the id of the auto renewing membership type to use. |
|`Id` |  the id of the recurring payment to use. |

#### Return

**Type**

List<Membership__c>

**Description**

a Membership__c object

### `insertDefaultCompanyMembership(Id accountId)` → `Membership__c`

Creates and inserts a default Membership for the specified Account Id. A default Entity and Company Membership Type is inserted. Also inserts basic Entity setup information - such as payment methods, credit card issuers, and order item configurations.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Account the Membership is for |

#### Return

**Type**

Membership__c

**Description**

a Membership__c object

### `insertDefaultExpiredMembership(Id acctId)` → `Membership__c`

Creates and inserts a default expired Membership for the specified Account Id. A default Entity and Individual Membership Type is inserted. Also inserts basic Entity setup information - such as payment methods, credit card issuers, and order item configurations.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Account the Membership is for |

#### Return

**Type**

Membership__c

**Description**

a Membership__c object

### `insertDefaultMembership(Id acctId)` → `Membership__c`

Creates and inserts a default Membership for the specified Account Id. A default Entity and Individual Membership Type is inserted. Also inserts basic Entity setup information - such as payment methods, credit card issuers, and order item configurations. This method should be used for testing purposes only.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Account the Membership is for |

#### Return

**Type**

Membership__c

**Description**

a Membership__c object

### `insertDefaultMembership(Id acctId, Id entityId)` → `Membership__c`

Creates and inserts a default Membership for the specified Account and Entity Ids. A default Individual Membership Type is inserted.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Account the Membership is for |
|`Id` |  the Id of the Entity |

#### Return

**Type**

Membership__c

**Description**

a Membership__c object

### `insertDefaultMembership()` → `Membership__c`

Creates and inserts a default Membership for a default Person Account. A default Entity and Individual Membership Type is inserted. Also inserts basic Entity setup information - such as payment methods, credit card issuers, and order item configurations.

#### Return

**Type**

Membership__c

**Description**

a Membership__c object

### `insertMembership(Id accountId, Id membershipTypeId, Date startDate, Date endDate)` → `Membership__c`

Creates and inserts a Membership for the specified Account and Membership Type Ids, using the supplied start and end dates. The Membership Type should be of the correct type - ie, Individual Membership Types should not be assigned to Business Accounts. The start date should be before the end date. The start date must be at the beginning of a month and the end date must be at the end of a month.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Account the Membership is for |
|`Id` |  the Id of the Membership Type of the Membership |
|`Date` |  the Start Date of the Membership |
|`Date` |  the End Date of the Membership |

#### Return

**Type**

Membership__c

**Description**

a Membership__c object

### `insertPurchasedAutoRenewingWithMonthlyRecurringPaymentMembership()` → `Membership__c`

Creates and inserts a purchased auto renewing membership with a monthly recurring Payment. A default Entity, default Individual Membership Type, and default membership product are inserted. Also inserts basic Entity setup information - such as payment methods, credit card issuers, and order item configurations.

#### Return

**Type**

Membership__c

**Description**

a Membership__c object

### `insertPurchasedAutoRenewingWithRecurringPaymentMembership()` → `Membership__c`

Creates and inserts a purchased auto renewing membership with a recurring Payment. A default Entity, default Individual Membership Type, and default membership product are inserted. Also inserts basic Entity setup information - such as payment methods, credit card issuers, and order item configurations.

#### Return

**Type**

Membership__c

**Description**

a Membership__c object

---
