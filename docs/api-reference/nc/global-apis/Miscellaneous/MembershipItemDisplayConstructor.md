# MembershipItemDisplayConstructor class

The constructor class used to create multiple instances of the MembershipItemDisplay class. This class handles querying any additional records which may be needed for display.

---
## Methods
### `construct(List<SObject> records)` → `List<MembershipItemDisplay>`

This method takes in a list of either cart items or order items, then queries any additional data needed to build the MembershipItemDisplay instances.

#### Parameters
|Param|Description|
|-----|-----------|
|`records` |  A list of SObjects. |

#### Return

**Type**

List<MembershipItemDisplay>

**Description**

A list of MembershipItemDisplay instances.

### `constructItemDisplayClass(List<SObject> displayRecords)` → `MembershipItemDisplay`

Constructs the MembershipItemDisplay class.

#### Parameters
|Param|Description|
|-----|-----------|
|`displayRecords` |  The SObjects for display. |

#### Return

**Type**

MembershipItemDisplay

**Description**

An instantiated MembershipItemDisplay class.

### `constructSingleDisplayObject(SObject record)` → `MembershipItemDisplay`

Constructs the item display from the provided SObject record.

#### Parameters
|Param|Description|
|-----|-----------|
|`record` |  The SObject record to construct the display for. |

#### Return

**Type**

MembershipItemDisplay

**Description**

A constructed MembershipItemDisplay.

### `getAdditionalMembershipTypeFields()` → `Set<String>`

Optional additional fields to select when querying for membership types. This is to be used by classes that extend this base class.

#### Return

**Type**

Set<String>

**Description**

Empty set of strings.

### `getAdditionalMtplFields()` → `Set<String>`

Optional additional fields to select when querying for membership type product links. This is to be used by classes that extend this base class.

#### Return

**Type**

Set<String>

**Description**

Empty set of strings.

---
