# AccountCreatedMessage class

A Message subclass that is used to notify subscribers that an account has been inserted.

---
## Constructors
### `AccountCreatedMessage(UnitOfWork relationshipWorker, Account createdAccount)`

Constructor for the AccountCreatedMessage.
#### Parameters
|Param|Description|
|-----|-----------|
|`relationshipWorker` |  The unit of work to register account relationships against. |
|`createdAccount` |  The account whose creation this message is communicating. |

#### Throws
|Exception|Description|
|---------|-----------|
|`An` |  ArgumentNullException if the any parameter is null. |

---
## Properties

### `Worker` → `UnitOfWork`

The unit of work to register account relationships against.

---
## Methods
### `getParameter()` → `Account`

Gets the account that is stored as this message's parameter.

#### Return

**Type**

Account

**Description**

The account parameter.

### `getType()` → `Type`

Gets the AccountCreatedMessage type.

#### Return

**Type**

Type

**Description**

The class type.

---
