# DataFactoryMembershipType class

Exposes constants and methods commonly used for creating and inserting Membership Type records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.

---
## Properties

### `DEFAULT_START_MONTH` → `String`

---
## Methods
### `createAnnualDefaultMembershipType(Id entityId, String category)` → `MembershipType__c`

Creates a default Annual Membership Type for the specified Entity Id and category. The possible values for the Category can be derived by looking at the picklist values on the Membership Type object in Salesforce. Default values for the Term, Start Date Control, Grace Period, and Start month are used.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity the Membership Type is for |
|`String` |  the Category of the Membership Type |

#### Return

**Type**

MembershipType__c

**Description**

a MembershipType__c object

### `createDefaultAutoRenewMembershipType(Id entityId, String category)` → `MembershipType__c`

Creates a default Auto-Renewing Anniversary Membership Type for the specified Entity Id and category. The possible values for the Category can be derived by looking at the picklist values on the Membership Type object in Salesforce. Default values for the Term, Start Date Control, and Grace Period are used.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity the Membership Type is for |
|`String` |  the Category of the Membership Type |

#### Return

**Type**

MembershipType__c

**Description**

a MembershipType__c object

### `createDefaultAutoRenewMembershipType(Id entityId)` → `MembershipType__c`

Creates a default Auto-Renewing Individual Anniversary Membership Type for the specified Entity Id. Default values for the Term, Start Date Control, and Grace Period are used.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity the Membership Type is for |

#### Return

**Type**

MembershipType__c

**Description**

a MembershipType__c object

### `createDefaultMembershipType(Id entityId, String category)` → `MembershipType__c`

Creates a default Anniversary Membership Type for the specified Entity Id and category. The possible values for the Category can be derived by looking at the picklist values on the Membership Type object in Salesforce. Default values for the Term, Start Date Control, and Grace Period are used.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity the Membership Type is for |
|`String` |  the Category of the Membership Type |

#### Return

**Type**

MembershipType__c

**Description**

a MembershipType__c object

### `createDefaultMembershipType(Id entityId)` → `MembershipType__c`

Creates a default Individual Anniversary Membership Type for the specified Entity Id. Default values for the Term, Start Date Control, and Grace Period are used.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity the Membership Type is for |

#### Return

**Type**

MembershipType__c

**Description**

a MembershipType__c object

### `insertAnnualDefaultMembershipType(Id entityId, String category)` → `MembershipType__c`

Creates and inserts a default Annual Membership Type for the specified Entity Id and category. The possible values for the Category can be derived by looking at the picklist values on the Membership Type object in Salesforce. Default values for the Term, Start Date Control, Grace Period, and Start month are used.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity the Membership Type is for |
|`String` |  the Category of the Membership Type |

#### Return

**Type**

MembershipType__c

**Description**

a MembershipType__c object

### `insertAnnualIndividualDefaultMembershipType()` → `MembershipType__c`

Creates and inserts a default Annual Individual Membership Type for a default Entity. Default values for the Term, Start Month, and Grace Period are used. Also inserts basic Entity setup information - such as payment methods, credit card issuers, and order items configurations. This method should be used for testing purposes only.

#### Return

**Type**

MembershipType__c

**Description**

a MembershipType__c object

### `insertDefaultAutoRenewMembershipType(Id entityId, String category)` → `MembershipType__c`

Creates and inserts a default Auto-Renewing Anniversary Membership Type for the specified Entity Id and category. The possible values for the Category can be derived by looking at the picklist values on the Membership Type object in Salesforce. Default values for the Term, Start Date Control, and Grace Period are used.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity the Membership Type is for |
|`String` |  the Category of the Membership Type |

#### Return

**Type**

MembershipType__c

**Description**

a MembershipType__c object

### `insertDefaultAutoRenewMembershipType(Id entityId)` → `MembershipType__c`

Creates and inserts a default Auto-Renewing Individual Anniversary Membership Type for the specified Entity Id. Default values for the Term, Start Date Control, and Grace Period are used.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity the Membership Type is for |

#### Return

**Type**

MembershipType__c

**Description**

a MembershipType__c object

### `insertDefaultCompanyMembershipType()` → `MembershipType__c`

Creates and inserts a default Company Anniversary Membership Type for a default Entity. Default values for the Term, Start Date Control, and Grace Period are used. Also inserts basic Entity setup information - such as payment methods, credit card issuers, and order items configurations. This method should be used for testing purposes only.

#### Return

**Type**

MembershipType__c

**Description**

a MembershipType__c object

### `insertDefaultCompanyMembershipType(Id entityId)` → `MembershipType__c`

Creates and inserts a default Company Anniversary Membership Type for the specified Entity Id. Default values for the Term, Start Date Control, and Grace Period are used.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity the Membership Type is for |

#### Return

**Type**

MembershipType__c

**Description**

a MembershipType__c object

### `insertDefaultIndividualAutoRenewMembershipType()` → `MembershipType__c`

Creates and inserts a default Anniversary Auto Renew Individual Membership Type for a default Entity. Default values for the Term, Start Month, and Grace Period are used. Also inserts basic Entity setup information - such as payment methods, credit card issuers, and order items configurations. This method should be used for testing purposes only.

#### Return

**Type**

MembershipType__c

**Description**

a MembershipType__c object

### `insertDefaultMembershipType(Id entityId, String category)` → `MembershipType__c`

Creates and inserts a default Anniversary Membership Type for the specified Entity Id and category. The possible values for the Category can be derived by looking at the picklist values on the Membership Type object in Salesforce. Default values for the Term, Start Date Control, and Grace Period are used.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity the Membership Type is for |
|`String` |  the Category of the Membership Type |

#### Return

**Type**

MembershipType__c

**Description**

a MembershipType__c object

### `insertDefaultMembershipType(Id entityId)` → `MembershipType__c`

Creates and inserts a default Individual Anniversary Membership Type for the specified Entity Id. Default values for the Term, Start Date Control, and Grace Period are used.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity the Membership Type is for |

#### Return

**Type**

MembershipType__c

**Description**

a MembershipType__c object

### `insertDefaultMembershipType()` → `MembershipType__c`

Creates and inserts a default Individual Anniversary Membership Type for a default Entity. Default values for the Term, Start Date Control, and Grace Period are used. Also inserts basic Entity setup information - such as payment methods, credit card issuers, and order items configurations. This method should be used for testing purposes only.

#### Return

**Type**

MembershipType__c

**Description**

a MembershipType__c object

---
