# LicenseManager class

Manages customer community user licenses.

---
## Properties

### `Instance` → `LicenseManager`

Gets an instance of LicenseManager. @return LicenseManager instance.

---
## Methods
### `execute(Database.BatchableContext bc, List<User> activeUsers)` → `void`

Called for each batch of user records. Increments the private counter to calculate the number of active login licenses used.

#### Parameters
|Param|Description|
|-----|-----------|
|`bc` |  The context of the batch process. |
|`activeUsers` |  The batch of active Users of the query returned by the start() method. |

### `executeCustomerCommunityLoginLicenseBuffer()` → `void`

Executes the batch process if the CustomizationSetting__c's CustomerCommunityLoginLicenseCount__c is specified.

### `finish(Database.BatchableContext bc)` → `void`

Called at the very end of the batch execution. Calls private method to free up licenses, if within the set threshold.

#### Parameters
|Param|Description|
|-----|-----------|
|`bc` |  The context of the batch process. |

### `start(Database.BatchableContext bc)` → `Database.QueryLocator`

Called at the very beginning of the batch execution.

#### Parameters
|Param|Description|
|-----|-----------|
|`bc` |  The context of the batch process. |

#### Return

**Type**

Database.QueryLocator

**Description**

The QueryLocator that will be executed in batch.

---
