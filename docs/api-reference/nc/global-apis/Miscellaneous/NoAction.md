# NoAction class

Returned when there are no possible actions.

---
## Constructors
### `NoAction(Id accountId, Id eventId)`

Constructs the NoAction action type.
#### Parameters
|Param|Description|
|-----|-----------|
|`accountId` |  The account Id for the action. |
|`eventId` |  The event Id related to the action. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any argument is null. |

### `NoAction(Id eventId)`

Constructs the NoAction action type.
#### Parameters
|Param|Description|
|-----|-----------|
|`eventId` |  The event Id related to the action. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if eventId is null. |

### `NoAction(Id accountId, Id eventId, String reason)`

Constructs the NoAction action type with a reason.
#### Parameters
|Param|Description|
|-----|-----------|
|`accountId` |  The account Id for the action. |
|`eventId` |  The event Id related to the action. |
|`reason` |  The reason no action will be taken. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any argument is null. |

---
## Methods
### `getName()` → `String`

Gets the name of this action.

#### Return

**Type**

String

**Description**

The value of NO_ACTION_NAME.

---
