## Affiliation class

`NamespaceAccessible`

Represents an Affiliation.

---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `get(Schema.SObjectField field)` → `Object`

`NamespaceAccessible`
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `get(String fieldName)` → `Object`

`NamespaceAccessible`

Gets value based on an SObjectField name.

##### Parameters
|Param|Description|
|-----|-----------|
|`fieldName` |  The field to get the value from. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getChildAccount()` → `AccountBase`

`NamespaceAccessible`

Gets the Child [AccountBase](apis/AccountsApi/AccountBase.md) related to this Affiliation.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getChildId()` → `String`

`NamespaceAccessible`

Returns the Id of the child of this Affiliation.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getEndDate()` → `Date`

`NamespaceAccessible`

Returns the End Date of this Affiliation.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getEndingReason()` → `String`

`NamespaceAccessible`

Gets the ending reason for this Affiliation.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getId()` → `String`

`NamespaceAccessible`

Returns the Id of this Affiliation.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getIsPrimary()` → `Boolean`

`NamespaceAccessible`

Returns whether or not this Affiliation is primary.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getParentAccount()` → `AccountBase`

`NamespaceAccessible`

Gets the Parent [AccountBase](apis/AccountsApi/AccountBase.md) related to this Affiliation.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getParentId()` → `String`

`NamespaceAccessible`

Returns the Id of the parent of this Affiliation.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getRecord()` → `SObject`

`NamespaceAccessible`

The wrapped SObject that should be saved into the database.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getRecordType()` → `String`

`NamespaceAccessible`

Gets the Record Type of this Affiliation.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getRoles()` → `Set<String>`

`NamespaceAccessible`

Gets the roles related to this Affiliation.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getStartDate()` → `Date`

`NamespaceAccessible`

Returns the Start Date of this Affiliation.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getStatus()` → `String`

`NamespaceAccessible`

Returns the Status of this Affiliation.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `put(Schema.SObjectField field, Object value)` → `void`

`NamespaceAccessible`

Sets field value based on an SObjectField.

##### Parameters
|Param|Description|
|-----|-----------|
|`field` |  The field to get the value from. |
|`value` |  Value to set. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `put(String fieldName, Object value)` → `void`

`NamespaceAccessible`

Sets field value based on an SObjectField.

##### Parameters
|Param|Description|
|-----|-----------|
|`fieldName` |  The field to get the value from. |
|`value` |  Value to set. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setChildAccount(AccountBase childAccount)` → `Affiliation`

`NamespaceAccessible`

Sets the Child [AccountBase](apis/AccountsApi/AccountBase.md) for this Affiliation.

##### Parameters
|Param|Description|
|-----|-----------|
|`childAccount` |  The Child [AccountBase](apis/AccountsApi/AccountBase.md) to set. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setChildId(String childId)` → `Affiliation`

`NamespaceAccessible`

Sets the child Id for this Affiliation.

##### Parameters
|Param|Description|
|-----|-----------|
|`childId` |  The child Id to set. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setEndDate(Date endDate)` → `Affiliation`

`NamespaceAccessible`

Sets the End Date for this Affiliation.

##### Parameters
|Param|Description|
|-----|-----------|
|`endDate` |  The End Date to set. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setEndingReason(String endingReason)` → `Affiliation`

`NamespaceAccessible`

Sets the ending reason for this Affiliation.

##### Parameters
|Param|Description|
|-----|-----------|
|`endingReason` |  The ending reason to set. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setIsPrimary(Boolean isPrimary)` → `Affiliation`

`NamespaceAccessible`

Sets whether or not this Affiliation is primary.

##### Parameters
|Param|Description|
|-----|-----------|
|`isPrimary` |  The Is Primary flag to set. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setParentAccount(AccountBase parentAccount)` → `Affiliation`

`NamespaceAccessible`

Sets the Parent [AccountBase](apis/AccountsApi/AccountBase.md) for this Affiliation.

##### Parameters
|Param|Description|
|-----|-----------|
|`parentAccount` |  The Parent [AccountBase](apis/AccountsApi/AccountBase.md) to set. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setParentId(String parentId)` → `Affiliation`

`NamespaceAccessible`

Sets the parent Id for this Affiliation.

##### Parameters
|Param|Description|
|-----|-----------|
|`parentId` |  The parent Id to set. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setRecordType(String recordType)` → `Affiliation`

`NamespaceAccessible`

Sets the Record Type of this Affiliation.

##### Parameters
|Param|Description|
|-----|-----------|
|`recordType` |  The name of the Record Type to set. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setRoles(Set<String> roles)` → `Affiliation`

`NamespaceAccessible`

Sets the roles for this Affiliation.

##### Parameters
|Param|Description|
|-----|-----------|
|`roles` |  The roles to set. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setStartDate(Date startDate)` → `Affiliation`

`NamespaceAccessible`

Sets the Start Date for this Affiliation.

##### Parameters
|Param|Description|
|-----|-----------|
|`startDate` |  The Start Date to set. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setStatus(String status)` → `Affiliation`

`NamespaceAccessible`

Sets the Status for this Affiliation.

##### Parameters
|Param|Description|
|-----|-----------|
|`status` |  The Status to set. |

<!-- panels:end -->
---
