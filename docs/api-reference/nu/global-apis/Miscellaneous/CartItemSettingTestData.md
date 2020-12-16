# CartItemSettingTestData class

Used for creating and inserting CartItemSetting__c records. For testing only.

---
## Methods
### `createDonationSetting()` → `CartItemSetting__c`

Creates a Cart Item Constructor record for donation cart items.

#### Return

**Type**

CartItemSetting__c

**Description**

A Cart Item Setting record.

### `createMembershipSetting()` → `CartItemSetting__c`

Creates a Cart Item Constructor record for membership cart items.

#### Return

**Type**

CartItemSetting__c

**Description**

A Cart Item Setting record.

### `createMerchandiseSetting()` → `CartItemSetting__c`

Creates a Cart Item Constructor record for merchandise cart items.

#### Return

**Type**

CartItemSetting__c

**Description**

A Cart Item Setting record.

### `createRegistrationSetting()` → `CartItemSetting__c`

Creates a Cart Item Constructor record for registration cart items.

#### Return

**Type**

CartItemSetting__c

**Description**

A Cart Item Setting record.

### `createSetting(String recordTypeName, String className)` → `CartItemSetting__c`

Creates a CartItemSetting__c record where the name should be a CartItem__c record type. The class name should not include the inner constructor class. This is automatically appended along with the package namespace.

#### Parameters
|Param|Description|
|-----|-----------|
|`recordTypeName` |  Name of a cart item record type. |
|`className` |  Name of a CartItem class. |

#### Return

**Type**

CartItemSetting__c

**Description**

A Cart Item Setting record.

### `deleteAll()` → `void`

Deletes all CartItemSetting__c records if any exist. If none exist, no DML will be done.

### `insertCartItemSettings()` → `List<CartItemSetting__c>`

Inserts CartItemSetting__c records for all cart items that are currently supported by the CartService.cls.

#### Return

**Type**

List<CartItemSetting__c>

**Description**

A list of Cart Item Setting records.

### `insertDonationSetting()` → `CartItemSetting__c`

Inserts a Cart Item Constructor record for donation cart items.

#### Return

**Type**

CartItemSetting__c

**Description**

A Cart Item Setting record.

### `insertMembershipSetting()` → `CartItemSetting__c`

Inserts a Cart Item Constructor record for membership cart items.

#### Return

**Type**

CartItemSetting__c

**Description**

A Cart Item Setting record.

### `insertMerchandiseSetting()` → `CartItemSetting__c`

Inserts a Cart Item Constructor record for merchandise cart items.

#### Return

**Type**

CartItemSetting__c

**Description**

A Cart Item Setting record.

### `insertRegistrationSetting()` → `CartItemSetting__c`

Inserts a Cart Item Constructor record for registration cart items.

#### Return

**Type**

CartItemSetting__c

**Description**

A Cart Item Setting record.

### `insertSetting(String recordTypeName, String className)` → `CartItemSetting__c`

Creates a CartItemSetting__c record where the name should be a CartItem__c record type. This method does not automatically append a package prefix or assume the class name is for an inner class. This is ideal for subscribers or extension packages.

#### Parameters
|Param|Description|
|-----|-----------|
|`recordTypeName` |  Name of a cart item record type. |
|`className` |  Name of a CartItem class. |

#### Return

**Type**

CartItemSetting__c

**Description**

A Cart Item Setting record.

---
