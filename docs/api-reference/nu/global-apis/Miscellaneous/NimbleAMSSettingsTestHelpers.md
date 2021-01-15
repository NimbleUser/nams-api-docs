# NimbleAMSSettingsTestHelpers class

Used to set values on the NimbleAMSSettings record in a test context.

---
## Methods
### `getValue(String fieldName)` → `Object`

Allows someone to get values from the NimbleAMSSettings__c record.

#### Parameters
|Param|Description|
|-----|-----------|
|`fieldName` |  The name of the field whose value will be retrieved. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if the fieldName param is blank. |

### `setValue(String fieldName, Object fieldValue)` → `void`

Allows someone to set values on the NimbleAMSSettings__c record.

#### Parameters
|Param|Description|
|-----|-----------|
|`fieldName` |  The name of the field whose value will be set. |
|`fieldValue` |  The value that will be set. Nulls are allowed. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if the fieldName param is blank. |

### `setValue(Schema.SObjectField field, Object fieldValue)` → `void`

Allows someone to set values on the NimbleAMSSettings__c record.

#### Parameters
|Param|Description|
|-----|-----------|
|`field` |  The field whose value will be set. |
|`fieldValue` |  The value that will be set. Nulls are allowed. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if the field param is null. |

---
