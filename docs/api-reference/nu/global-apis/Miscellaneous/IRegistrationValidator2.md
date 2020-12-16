# IRegistrationValidator2 interface

Validates registration records that are being inserted, updated, or deleted

---
## Methods
### `onBeforeDelete(Map<Id, Registration2__c> oldRegistrations)` → `void`

Called when existing registrations are deleted

#### Parameters
|Param|Description|
|-----|-----------|
|`old` |  registrations to remove |

### `onBeforeInsert(List<Registration2__c> newRegistrations)` → `void`

Called when new registration records are inserted

#### Parameters
|Param|Description|
|-----|-----------|
|`new` |  registrations to insert |

### `onBeforeUpdate(Map<Id, Registration2__c> newRegistrations, Map<Id, Registration2__c> oldRegistrations)` → `void`

Called when existing registrations are updated

#### Parameters
|Param|Description|
|-----|-----------|
|`new` |  registrations to insert, old registrations to remove |

### `validate(List<CartItemLine__c> cartItemLines, List<Registration2__c> registrations)` → `OperationResult`

Called to validate registraions for duplicates and warn about canceled registrations. If the returned OperationResult contains any OperationMessageLevel.ERROR level messages, the save button will be disabled as this is considered to be someone who is already registered.

#### Parameters
|Param|Description|
|-----|-----------|
|`itemlines` |  of the cart we are validating |
|`list` |  of registrations to check for duplicates |

#### Return

**Type**

OperationResult

**Description**

an OperationResult containing validation errors or warnings

---
