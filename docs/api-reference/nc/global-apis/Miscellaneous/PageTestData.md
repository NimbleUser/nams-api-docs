# PageTestData class

Handles data management for the Page__c custom settings. Solely used for testing, NOT a data factory.

---
## Properties

### `Instance` → `PageTestData`

Gets an instance of PageTestData. @return PageTestData instance.

---
## Methods
### `insertPage()` → `Page__c`

Inserts the built Page__c.

#### Return

**Type**

Page__c

**Description**

The inserted Page__c object.

### `withCards(List<String> cards)` → `PageTestData`

Sets the Cards for the Page__c being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`cards` |  The list of values for the Cards field. |

#### Return

**Type**

PageTestData

**Description**

The instance of PageTestData.

### `withDescriptionLabel(String descriptionLabel)` → `PageTestData`

Sets the Description Label for the Page__c being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`descriptionLabel` |  Name of the label to use for the description of the page. |

#### Return

**Type**

PageTestData

**Description**

The instance of PageTestData.

### `withDisplayName(String displayName)` → `PageTestData`

Sets the Display Name for the Page__c being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`displayName` |  The value for the Display Name field. |

#### Return

**Type**

PageTestData

**Description**

The instance of PageTestData.

### `withDynamicPageUrl(String dynamicPageUrl)` → `PageTestData`

Sets the Dynamic Page Url for the Page__c being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`dynamicPageUrl` |  Url of the Dynamic Visualforce page to render. |

#### Return

**Type**

PageTestData

**Description**

The instance of PageTestData.

### `withFriendlyUrl(String friendlyUrl)` → `PageTestData`

Sets the FriendlyURL__c for the Page__c being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`friendlyUrl` |  The value for the Friendly URL field. |

#### Return

**Type**

PageTestData

**Description**

The instance of PageTestData.

### `withHeadingLabel(String headingLabel)` → `PageTestData`

Sets the Heading Label for the Page__c being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`headingLabel` |  Name of the label to use for the heading of the page. |

#### Return

**Type**

PageTestData

**Description**

The instance of PageTestData.

### `withName(String name)` → `PageTestData`

Sets the Name for the Page__c being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`name` |  The value for the Name field. |

#### Return

**Type**

PageTestData

**Description**

The instance of PageTestData.

### `withTag(String tag)` → `PageTestData`

Sets the Tag for the Page__c being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`cards` |  A string value to set the Cards__c value to. |
|`controllerName` |  A string value to set the Controller__c value to. |
|`tag` |  The value for the Tag field. |

#### Return

**Type**

PageTestData

**Description**

The instance of PageTestData.

---
