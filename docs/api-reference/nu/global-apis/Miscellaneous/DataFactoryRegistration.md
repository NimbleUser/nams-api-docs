# DataFactoryRegistration class

Exposes constants and methods commonly used for creating and inserting Registration records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.

---
## Methods
### `createOrderLessRegistration(Id registrantAcctId, Id eventId, Decimal externalAmount)` → `Registration2__c`

Creates a Registration for the specified Account and Event Ids and amount.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Account for which the Registration is for |
|`Id` |  the Id of the Event for which the Registration is for |
|`Decimal` |  the amount of the Registration |

#### Return

**Type**

Registration2__c

**Description**

a Registration2__c object

### `createRegistration(Id registrantAcctId, Id evtId, Id orderItemId)` → `Registration2__c`

Creates a Registration for the specified Account, Event, and Order Item Ids.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Account for which the Registration is for |
|`Id` |  the Id of the Event for which the Registration is for |
|`Id` |  the Id of the Registration Order Item |

#### Return

**Type**

Registration2__c

**Description**

a Registration2__c object

### `createRegistration()` → `Registration2__c`

Creates a default Registration. A default Person Account, Event, and Order Item is created. Also inserts basic Entity setup information - such as payment methods, credit card issuers, and order items configurations. This method should be used for testing purposes only.

#### Return

**Type**

Registration2__c

**Description**

a Registration2__c object

### `insertOrderLessRegistration(Id registrantAcctId, Id eventId, Decimal externalAmount)` → `Registration2__c`

Creates and inserts a Registration for the specified Account and Event Ids and amount.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Account for which the Registration is for |
|`Id` |  the Id of the Event for which the Registration is for |
|`Decimal` |  the amount of the Registration |

#### Return

**Type**

Registration2__c

**Description**

a Registration2__c object

### `insertOrderLessRegistrations(Id eventId, Integer numOfEvtRegistrationsToCreate)` → `List<Registration2__c>`

Creates and inserts Registrations for the specified Event Id. Default Person Accounts will be created, one for each Registration. The List Price is NOT the same for all products - it is randomized.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Event for which the Registration is for |
|`Integer` |  the number of Registrations to create |

#### Return

**Type**

List<Registration2__c>

**Description**

a List of Registration2__c object records

### `insertRegistration(Id registrantAcctId, Id evtId, Id orderItemId)` → `Registration2__c`

Creates and inserts a Registration for the specified Account, Event, and Order Item Ids.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Account for which the Registration is for |
|`Id` |  the Id of the Event for which the Registration is for |
|`Id` |  the Id of the Registration Order Item |

#### Return

**Type**

Registration2__c

**Description**

a Registration2__c object

### `insertRegistration()` → `Registration2__c`

Creates and inserts a default Registration. A default Person Account, Event, and Order Item is created. Also inserts basic Entity setup information - such as payment methods, credit card issuers, and order items configurations. This method should be used for testing purposes only.

#### Return

**Type**

Registration2__c

**Description**

a Registration2__c object

---
