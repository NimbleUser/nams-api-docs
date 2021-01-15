# MembershipItemDisplay class

Class used to display membership order items and cart items.

---
## Constructors
### `MembershipItemDisplay(List<SObject> records)`

Class constructor for the MembershipItemDisplay class.
#### Parameters
|Param|Description|
|-----|-----------|
|`records` |  A list of SObjects. |

---
## Properties

### `MembershipTypeId` → `Id`

The membership type id of the membership item.

### `MembershipTypeName` → `String`

The name of a membership type.

---
## Methods
### `buildItemLineDisplay(SObject itemLine)` → `ItemLineDisplay`

Builds a new MembershipItemLineDisplay for the itemLine passed in, and marks if it is a primary item.

#### Parameters
|Param|Description|
|-----|-----------|
|`itemLine` |  the item line for which to build a display. |

#### Return

**Type**

ItemLineDisplay

**Description**

The ItemLineDisplay object.

### `constructItemLineDisplayClass(SObject itemLine,znu__MembershipTypeProductLink__c mtpl)` → `ItemLineDisplay`

Constructs the MembershipItemLineDisplay class.

#### Parameters
|Param|Description|
|-----|-----------|
|`itemLine` |  the item line for which to build a display. |
|`mtpl` |  The membership type product link for the item line. |

#### Return

**Type**

ItemLineDisplay

**Description**

An instantiated MembershipItemLineDisplay class.

### `getIdStrings()` → `List<String>`

The URL Parameters that will be provided for the edit button. This will provide the membership type id.

#### Return

**Type**

List<String>

**Description**

The URL parameters as a list of strings.

### `isComplete()` → `OperationResult`

Validates the membership item to determine if it is complete. A membership order item is complete by default. A membership cart item is not complete if no primary product is in the cart item, or if not all required products are in the cart item.

#### Return

**Type**

OperationResult

**Description**

The result of the validation.

---
