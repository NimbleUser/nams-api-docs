# NimbleAmsSettingsService class

Provides global access to various NimbleAmsSettings__c record fields via methods.

---
## Properties

### `Instance` → `NimbleAmsSettingsService`

Singleton instance for the NimbleAmsSettingsService.

---
## Methods
### `enablePilotFeatures()` → `void`

Setting the Enable Pilot Features to true in NimbleAMSSettings.

### `getCheckoutUrl()` → `String`

Gets the checkout URL specified on the Configure page.

#### Return

**Type**

String

**Description**

The checkout URL.

### `getDefaultEntityId()` → `Id`

Gets the Id specified as the DefaultEntity__c.

#### Return

**Type**

Id

**Description**

The Id specified in DefaultEntity__c. Null if none is specified.

#### Throws
|Exception|Description|
|---------|-----------|
|`ConfigurationException` |  if the value is not an Id, or is the Id of an incorrect SObject type. |

### `getDownloadProxyUrl()` → `String`

Gets the download proxy URL specified on the Configure page.

#### Return

**Type**

String

**Description**

The download proxy URL.

### `getEmailConfirmationTemplate()` → `String`

Gets the Email Confirmation Template specified on the Configure page.

#### Return

**Type**

String

**Description**

The Email Confirmation Template.

### `setDefaultEntityId(Id entityId)` → `void`

Sets the Id specified as the DefaultEntity__c.

#### Parameters
|Param|Description|
|-----|-----------|
|`entityId` |  The Id to set for DefaultEntity__c. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ConfigurationException` |  if the passed in value is the Id of an incorrect SObject type. |

---
