# DataFactoryAccount class

Exposes constants and methods commonly used for account creation. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.

---
## Properties

### `DEFAULT_EMAIL` → `String`

### `DEFAULT_FIRST_NAME` → `String`

### `DEFAULT_LAST_NAME` → `String`

### `DEFAULT_ORG_NAME` → `String`

### `IndividualRecordTypeId` → `Id`

### `OrganizationRecordTypeId` → `Id`

---
## Methods
### `createAccountIndividuals(Integer numToCreate)` → `List<Account>`

Creates a number of Person Accounts using the default name and address information. An e-mail address is not populated.

#### Parameters
|Param|Description|
|-----|-----------|
|`Integer` |  the number of Person Accounts to create |

#### Return

**Type**

List<Account>

**Description**

a List of Account objects

### `createAccountIndividuals(Integer numToCreate, Boolean createEmail)` → `List<Account>`

Creates a number of Person Accounts using the default name and address information. An e-mail address is populated if createEmail is true. Otherwise, it's not populated.

#### Parameters
|Param|Description|
|-----|-----------|
|`Integer` |  the number of Person Accounts to create |
|`Boolean` |  Determines if the accounts have their emails populated. |

#### Return

**Type**

List<Account>

**Description**

a List of Account objects

### `createAccountOrganizations(Integer numToCreate)` → `List<Account>`

Creates a number of Business Accounts using the default name and address information.

#### Parameters
|Param|Description|
|-----|-----------|
|`Integer` |  the number of Business Accounts to create |

#### Return

**Type**

List<Account>

**Description**

a List of Account objects

### `createIndividualAccount()` → `Account`

Creates a Person Account using the default name and address information. An e-mail address is not populated.

#### Return

**Type**

Account

**Description**

an Account object

### `createIndividualAccount(Boolean createAddresses)` → `Account`

Creates a Person Account using the default name information. If Boolean parameter is true, also populates the default address information. An e-mail address is not populated.

#### Parameters
|Param|Description|
|-----|-----------|
|`Boolean` |  if true, default address information will be populated |

#### Return

**Type**

Account

**Description**

an Account object

### `createIndividualAccount(Boolean createAddresses, Boolean createEmail)` → `Account`

Creates a Person Account using the default name information. If first Boolean parameter is true, populates the default address information. If second Boolean parameter is true, also populates e-mail address with the default. An e-mail address is not populated.

#### Parameters
|Param|Description|
|-----|-----------|
|`Boolean` |  if true, default address information will be populated |
|`Boolean` |  if true, e-mail address will be populated |

#### Return

**Type**

Account

**Description**

an Account object

### `createOrganizationAccount()` → `Account`

Creates an Account using the default name and address information.

#### Return

**Type**

Account

**Description**

an Account object

### `createOrganizationAccount(Boolean createAddresses)` → `Account`

Creates an Account using the default name information. If Boolean parameter is true, also populates the default address information.

#### Parameters
|Param|Description|
|-----|-----------|
|`Boolean` |  if true, default address information will be populated |

#### Return

**Type**

Account

**Description**

an Account object

### `insertIndividualAccount()` → `Account`

Creates and inserts a Person Account using the default name and address information. An e-mail address is not populated.

#### Return

**Type**

Account

**Description**

an Account object

### `insertIndividualAccount(Boolean createAddresses)` → `Account`

Creates and inserts a Person Account using the default name information. If Boolean parameter is true, also populates the default address information. An e-mail address is not populated.

#### Parameters
|Param|Description|
|-----|-----------|
|`Boolean` |  if true, default address information will be populated |

#### Return

**Type**

Account

**Description**

an Account object

### `insertIndividualAccount(Boolean createAddresses, Boolean createEmail)` → `Account`

Creates and inserts a Person Account using the default name information. If first Boolean parameter is true, populates the default address information. If second Boolean parameter is true, also populates e-mail address with the default. An e-mail address is not populated.

#### Parameters
|Param|Description|
|-----|-----------|
|`Boolean` |  if true, default address information will be populated |
|`Boolean` |  if true, e-mail address will be populated |

#### Return

**Type**

Account

**Description**

an Account object

### `insertIndividualAccounts(Integer numToInsert)` → `List<Account>`

Creates and inserts a number of Person Accounts using the default name and address information. An e-mail address is not populated.

#### Parameters
|Param|Description|
|-----|-----------|
|`Integer` |  the number of Person Accounts to insert |

#### Return

**Type**

List<Account>

**Description**

a List of Account objects

### `insertIndividualAccounts(Integer numToInsert, Boolean createEmail)` → `List<Account>`

Creates and inserts a number of Person Accounts using the default name and address information. An e-mail address is populated if createEmail is true. Otherwise, it's not populated.

#### Parameters
|Param|Description|
|-----|-----------|
|`Integer` |  the number of Person Accounts to create |
|`Boolean` |  Determines if the accounts have their emails populated. |

#### Return

**Type**

List<Account>

**Description**

a List of Account objects

### `insertOrganizationAccount()` → `Account`

Creates and inserts an Account using the default name and address information.

#### Return

**Type**

Account

**Description**

an Account object

### `insertOrganizationAccount(Boolean createAddresses)` → `Account`

Creates and inserts an Account using the default name information. If Boolean parameter is true, also populates the default address information.

#### Parameters
|Param|Description|
|-----|-----------|
|`Boolean` |  if true, default address information will be populated |

#### Return

**Type**

Account

**Description**

an Account object

### `insertOrganizationAccounts(Integer numToInsert)` → `List<Account>`

Creates and inserts a number of Business Accounts using the default name and address information.

#### Parameters
|Param|Description|
|-----|-----------|
|`Integer` |  the number of Business Accounts to insert |

#### Return

**Type**

List<Account>

**Description**

a List of Account objects

---
