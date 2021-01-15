# StandardRegistrationValidator class

The standard implementation of the IRegistrationValidator2 interface. 		It prevents the deletion of registrations connected to an order, and the insertion 		of duplicate registrations with the same account and event

---
## Methods
### `onBeforeDelete(Map<Id, Registration2__c> oldRegistrations)` → `void`

Prevents the deletion of registrations connected to an order.

#### Parameters
|Param|Description|
|-----|-----------|
|`oldRegistrations` |  Old registrations to remove |

### `onBeforeInsert(List<Registration2__c> newRegistrations)` → `void`

Prevents the insertion of duplicate registrations with the same account and event

#### Parameters
|Param|Description|
|-----|-----------|
|`newRegistrations` |  New registrations to insert. |

### `onBeforeUpdate(Map<Id, Registration2__c> newRegistrations,Map<Id, Registration2__c> oldRegistrations)` → `void`

Not implemented; takes no action.

#### Parameters
|Param|Description|
|-----|-----------|
|`newRegistrations` |  New registrations to insert. |
|`oldRegistrations` |  Old registrations to remove. |

### `validate(List<CartItemLine__c> cartItemLines,List<Registration2__c> registrations)` → `OperationResult`

Validate registraions for duplicates and warn about canceled registrations. 		Used in the staff view registration order process.

#### Parameters
|Param|Description|
|-----|-----------|
|`cartItemLines` |  Item lines of the cart we are validating. |
|`registrations` |  List of registrations to check for duplicates. |

#### Return

**Type**

OperationResult

**Description**

An OperationResult containing validation errors or warnings.

---
