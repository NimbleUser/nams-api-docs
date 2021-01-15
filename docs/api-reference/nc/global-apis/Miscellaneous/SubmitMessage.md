# SubmitMessage class

A Message subclass that is used to notify subscribers to submit any changes entered by users.

---
## Constructors
### `SubmitMessage(UnitOfWork uow)`

Constructor for the SubmitMessage.
#### Parameters
|Param|Description|
|-----|-----------|
|`uow` |  The unit of work instance that all subscribers will use to register DML transactions. |

#### Throws
|Exception|Description|
|---------|-----------|
|`An` |  ArgumentNullException if the specified UnitOfWork instance is null. |

---
## Methods
### `getParameter()` → `UnitOfWork`

Gets the unit of work instance that is stored as this message's parameter.

#### Return

**Type**

UnitOfWork

**Description**

A unit of work instance.

### `getType()` → `Type`

Gets the SubmitMessage type.

#### Return

**Type**

Type

**Description**

The class type.

---
