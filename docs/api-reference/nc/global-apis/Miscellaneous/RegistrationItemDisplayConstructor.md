# RegistrationItemDisplayConstructor class

Convert registration order items and cart items into objects that can be used for display.

---
## Methods
### `construct(List<SObject> records)` → `List<RegistrationItemDisplay>`

Convert records into display wrappers, querying additional data as needed.

#### Parameters
|Param|Description|
|-----|-----------|
|`records` |  A list of order or cart items. |

#### Return

**Type**

List<RegistrationItemDisplay>

**Description**

RegistrationItemDisplay wrappers for display.

### `constructItemDisplayClass(List<SObject> displayRecords)` → `RegistrationItemDisplay`

Constructs the RegistrationItemDisplay class.

#### Parameters
|Param|Description|
|-----|-----------|
|`displayRecords` |  The SObjects for display. |

#### Return

**Type**

RegistrationItemDisplay

**Description**

An instantiated RegistrationItemDisplay class.

---
