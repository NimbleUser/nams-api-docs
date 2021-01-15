# ItemDisplaySettingTestData class

Builder class for dealing with ItemDisplaySetting__c records. Solely used for testing, NOT a data factory.

---
## Properties

### `Instance` → `ItemDisplaySettingTestData`

Gets an instance of ItemDisplaySettingTestData. @return ItemDisplaySettingTestData instance.

---
## Methods
### `asDonation()` → `ItemDisplaySettingTestData`

Sets the ConstructorType__c and Name fields for the ItemDisplaySetting__c being built.  Sets the fields to the corresponding donation values.

#### Return

**Type**

ItemDisplaySettingTestData

**Description**

The instance of ItemDisplaySettingTestData.

### `asMembership()` → `ItemDisplaySettingTestData`

Sets the ConstructorType__c and Name fields for the ItemDisplaySetting__c being built.  Sets the fields to the corresponding membership values.

#### Return

**Type**

ItemDisplaySettingTestData

**Description**

The instance of ItemDisplaySettingTestData.

### `asMerchandise()` → `ItemDisplaySettingTestData`

Sets the ConstructorType__c and Name fields for the ItemDisplaySetting__c being built.  Sets the fields to the corresponding merchandise values.

#### Return

**Type**

ItemDisplaySettingTestData

**Description**

The instance of ItemDisplaySettingTestData.

### `asMiscellaneous()` → `ItemDisplaySettingTestData`

Sets the ConstructorType__c and Name fields for the ItemDisplaySetting__c being built.  Sets the fields to the corresponding miscellaneous values.

#### Return

**Type**

ItemDisplaySettingTestData

**Description**

The instance of ItemDisplaySettingTestData.

### `asRegistration()` → `ItemDisplaySettingTestData`

Sets the ConstructorType__c and Name fields for the ItemDisplaySetting__c being built.  Sets the fields to the corresponding registration values.

#### Return

**Type**

ItemDisplaySettingTestData

**Description**

The instance of ItemDisplaySettingTestData.

### `asSubscription()` → `ItemDisplaySettingTestData`

Sets the ConstructorType__c and Name fields for the ItemDisplaySetting__c being built.  Sets the fields to the corresponding subscription values.

#### Return

**Type**

ItemDisplaySettingTestData

**Description**

The instance of ItemDisplaySettingTestData.

### `create()` → `ItemDisplaySetting__c`
### `insertAllItemDisplaySettings()` → `List<ItemDisplaySetting__c>`

Inserts item display setting records for all currently supported record types.

#### Return

**Type**

List<ItemDisplaySetting__c>

**Description**

List of ItemDisplaySetting records.

### `insertItemDisplaySetting()` → `ItemDisplaySetting__c`

Builds and inserts a ItemDisplaySetting.

#### Return

**Type**

ItemDisplaySetting__c

**Description**

The built and inserted ItemDisplaySetting.

### `withConstructorType(String constructorType)` → `ItemDisplaySettingTestData`

Sets the ConstructorType__c field for the ItemDisplaySetting__c being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`constructorType` |  The Constructor Type to set the ConstructorType__c field on the |

#### Return

**Type**

ItemDisplaySettingTestData

**Description**

The instance of ItemDisplaySettingTestData.

### `withName(String name)` → `ItemDisplaySettingTestData`

Sets the Name field for the ItemDisplaySetting__c being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`name` |  The name to set the Name field on the currently created Item Display |

#### Return

**Type**

ItemDisplaySettingTestData

**Description**

The instance of ItemDisplaySettingTestData.

---
