# ConfigurationService class

Service for managing the import and export of Community Hub custom settings.

---
## Properties

### `Instance` → `ConfigurationService`

Singleton instance for the service.

---
## Methods
### `exportAsJson()` → `String`

Export the Community Hub custom settings as a JSON string with all the fields removed which would cause an error on import.

#### Return

**Type**

String

**Description**

JSON String representation of the Community Hub custom settings.

### `exportConfiguration()` → `Configuration`

Export the Community Hub custom settings as a JSON string with all the fields removed which would cause an error on import.

#### Return

**Type**

Configuration

**Description**

Configuration instance that contains the Export information.

### `exportConfiguration(String bundleTag)` → `Configuration`

Export the Community Hub custom settings with all the fields removed which would cause an error on import based upon the specified tag.

#### Parameters
|Param|Description|
|-----|-----------|
|`bundleTag` |  The Tag__c value to filter records by. |

#### Return

**Type**

Configuration

**Description**

Configuration instance that contains the Export information.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if bundleTag is blank. |

### `importJson(String jsonConfiguration)` → `void`

Import Community Hub custom settings from a string that is formatted as JSON.

#### Parameters
|Param|Description|
|-----|-----------|
|`jsonConfiguration` |  JSON string representation that is used for importing custom settings. |

---
