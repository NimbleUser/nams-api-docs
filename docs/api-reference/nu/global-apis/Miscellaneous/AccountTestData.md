# AccountTestData class

Builder class for dealing with Account records. Solely used for testing, NOT a data factory.

---
## Properties

### `DefaultIndividual` → `Account`

Returns the default individual account without an email address and all billing addresses populated. @return An individual Account.

### `DefaultOrganization` → `Account`

Returns the default organization account. @return An organization Account.

---
## Methods
### `asIndividual()` → `AccountTestData`

Make the account an individual by setting its record type, and setting the last name if it's not set.

#### Return

**Type**

AccountTestData

**Description**

The instance of AccountTestData.

### `asOrganization()` → `AccountTestData`

Make the account an organization by setting its record type.

#### Return

**Type**

AccountTestData

**Description**

The instance of AccountTestData.

### `create()` → `Account`

Builds the Account object.

#### Return

**Type**

Account

**Description**

The created Account object.

### `insertRecord()` → `Account`

Inserts the built Account object.

#### Return

**Type**

Account

**Description**

The inserted Account object.

### `insertRecords(Integer numberToInsert)` → `List<Account>`

Inserts a list of Account objects.

#### Parameters
|Param|Description|
|-----|-----------|
|`numberToInsert` |  the number of Account objects to insert. |

#### Return

**Type**

List<Account>

**Description**

A list of the inserted Account objects.

### `newInstance()` → `AccountTestData`

Method for getting a new instance of AccountTestData.

#### Return

**Type**

AccountTestData

**Description**

A new instance of AccountTestData.

### `with(Schema.SObjectField field, Object value)` → `AccountTestData`

Dynamically sets the Schema.SObjectField noted by field to value for Accounts being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`field` |  The Schema.SObjectField to map the value to and cannot be null. |
|`value` |  The value for the field and can be set to null. |

#### Return

**Type**

AccountTestData

**Description**

The instance of AccountTestData.

### `withBillingAddress(Address address)` → `AccountTestData`

Define the billing address of the account.

#### Parameters
|Param|Description|
|-----|-----------|
|`address` |  An Address representation of the address that will set |

#### Return

**Type**

AccountTestData

**Description**

The instance of AccountTestData.

### `withBillingAddress()` → `AccountTestData`

Define the billing address of the account using the default address.

#### Return

**Type**

AccountTestData

**Description**

The instance of AccountTestData.

### `withEmail(String email)` → `AccountTestData`

Change the PersonEmail for the Account that is being built. Sets last name if it is not set.

#### Parameters
|Param|Description|
|-----|-----------|
|`name` |  The new full name for the account. |
|`email` |  The new email for the account. |

#### Return

**Type**

AccountTestData

**Description**

The instance of AccountTestData.

### `withFirstName(String name)` → `AccountTestData`

Change the FirstName for the Account that is being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`name` |  The new first name for the account. |

#### Return

**Type**

AccountTestData

**Description**

The instance of AccountTestData.

### `withHomePhone(String homePhone)` → `AccountTestData`

Change the PersonHomePhone for the Account that is being built. Sets last name if it is not set.

#### Parameters
|Param|Description|
|-----|-----------|
|`homePhone` |  The new home phone for the account. |

#### Return

**Type**

AccountTestData

**Description**

The instance of AccountTestData.

### `withLapsedOnOverride(Date overrideDate)` → `AccountTestData`

Change the LapsedOnOverride__c for the Account that is being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`overrideDate` |  The new LapsedOnOverride__c for the account. |

#### Return

**Type**

AccountTestData

**Description**

The instance of AccountTestData.

### `withLastName(String name)` → `AccountTestData`

Change the LastName for the Account that is being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`name` |  The new last name for the account. |

#### Return

**Type**

AccountTestData

**Description**

The instance of AccountTestData.

### `withMembershipType(Id membershipType)` → `AccountTestData`

Change the membership type for the Account that is being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  membershipType The membership type to set. |

#### Return

**Type**

AccountTestData

**Description**

The instance of AccountTestData.

### `withName(String name)` → `AccountTestData`

Make the account an organization by getting rid of the account first name and last name and setting a name for the account.

#### Parameters
|Param|Description|
|-----|-----------|
|`name` |  The name that the organization will have. |

#### Return

**Type**

AccountTestData

**Description**

The instance of AccountTestData.

### `withShippingAddress(Address address)` → `AccountTestData`

Define the shipping address of the account.

#### Parameters
|Param|Description|
|-----|-----------|
|`address` |  An Address representation of the address that will set |

#### Return

**Type**

AccountTestData

**Description**

The instance of AccountTestData.

### `withShippingAddress()` → `AccountTestData`

Define the shipping address of the account using the default address.

#### Return

**Type**

AccountTestData

**Description**

The instance of AccountTestData.

---
