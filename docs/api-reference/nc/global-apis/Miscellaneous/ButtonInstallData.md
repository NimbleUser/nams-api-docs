# ButtonInstallData class

Builder class for dealing with button custom settings. Intended for use in install scripts. This is a data factory, but please use sparingly and NOT in tests (TestData classes exist for that purpose).

---
## Properties

### `Instance` → `ButtonInstallData`

Gets an instance of ButtonInstallData. @return ButtonInstallData instance.

---
## Methods
### `atBlock()` → `ButtonInstallData`

Sets Location__c to Button.LOCATION_BLOCK.

#### Return

**Type**

ButtonInstallData

**Description**

The instance of ButtonInstallData.

### `atBottomLeft()` → `ButtonInstallData`

Sets Location__c to Bottom Left.

#### Return

**Type**

ButtonInstallData

**Description**

The instance of ButtonInstallData.

### `atBottomRight()` → `ButtonInstallData`

Sets Location__c to Bottom Right.

#### Return

**Type**

ButtonInstallData

**Description**

The instance of ButtonInstallData.

### `atLeft()` → `ButtonInstallData`

Sets Location__c to Button.LOCATION_LEFT.

#### Return

**Type**

ButtonInstallData

**Description**

The instance of ButtonInstallData.

### `atRight()` → `ButtonInstallData`

Sets Location__c to Button.LOCATION_RIGHT.

#### Return

**Type**

ButtonInstallData

**Description**

The instance of ButtonInstallData.

### `create()` → `Button`

Default constructor. Calls SObjectInstallData's constructor.

### `getSObjectType()` → `Schema.SObjectType`

Returns the SObject type for ButtonInstallData builder.

#### Parameters
|Param|Description|
|-----|-----------|
|`tag` |  The tag string to set. |
|`buttonNames` |  A set of button name strings. |

#### Return

**Type**

Schema.SObjectType

**Description**

Button__c.SObjectType

### `isPrimaryAction()` → `ButtonInstallData`

Sets IsPrimaryAction__c to true.

#### Return

**Type**

ButtonInstallData

**Description**

The instance of ButtonInstallData.

### `withButtonNames(List<String> buttonNames)` → `ButtonInstallData`

Sets the Buttons__c of this button to a string-list of button names as formatted by the delimitButtonNameSet method.

#### Parameters
|Param|Description|
|-----|-----------|
|`buttonNames` |  A list of button names as strings. |

#### Return

**Type**

ButtonInstallData

**Description**

The instance of ButtonInstallData.

### `withClassName(String className)` → `ButtonInstallData`

Sets the Class__c of this button.

#### Parameters
|Param|Description|
|-----|-----------|
|`className` |  The class name string to set. |

#### Return

**Type**

ButtonInstallData

**Description**

The instance of ButtonInstallData.

### `withDataSourceName(String dataSourceName)` → `ButtonInstallData`

Sets the DataSource__c of this button.

#### Parameters
|Param|Description|
|-----|-----------|
|`dataSourceName` |  The data source name name string to set. |

#### Return

**Type**

ButtonInstallData

**Description**

The instance of ButtonInstallData.

### `withLabel(String label)` → `ButtonInstallData`

Sets the Label__c of this button.

#### Parameters
|Param|Description|
|-----|-----------|
|`label` |  The label string to set. |

#### Return

**Type**

ButtonInstallData

**Description**

The instance of ButtonInstallData.

### `withName(String name)` → `ButtonInstallData`

Sets the Name of this button.

#### Parameters
|Param|Description|
|-----|-----------|
|`name` |  The name string to set. |

#### Return

**Type**

ButtonInstallData

**Description**

The instance of ButtonInstallData.

### `withOnClick(String onClick)` → `ButtonInstallData`

Sets the OnClick__c of this button.

#### Parameters
|Param|Description|
|-----|-----------|
|`onClick` |  The onClick string to set. |

#### Return

**Type**

ButtonInstallData

**Description**

The instance of ButtonInstallData.

### `withOnComplete(String onComplete)` → `ButtonInstallData`

Sets the OnComplete__c of this button.

#### Parameters
|Param|Description|
|-----|-----------|
|`onComplete` |  The onComplete string to set. |

#### Return

**Type**

ButtonInstallData

**Description**

The instance of ButtonInstallData.

### `withReRender(String reRender)` → `ButtonInstallData`

Sets the ReRender__c of this button.

#### Parameters
|Param|Description|
|-----|-----------|
|`reRender` |  The reRender string to set. |

#### Return

**Type**

ButtonInstallData

**Description**

The instance of ButtonInstallData.

### `withSuccessLabel(String successLabelName)` → `ButtonInstallData`

Sets the SuccessLabel__c to the value specified.

#### Parameters
|Param|Description|
|-----|-----------|
|`String` |  successLabelName the label to use for a success message. |

#### Return

**Type**

ButtonInstallData

**Description**

The instance of ButtonInstallData.

### `withURL(String url)` → `ButtonInstallData`

Sets the Url__c of this button.

#### Parameters
|Param|Description|
|-----|-----------|
|`url` |  The label string to set. |

#### Return

**Type**

ButtonInstallData

**Description**

The instance of ButtonInstallData.

---
