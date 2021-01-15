# TriggerHandlersBase class

A base class for implementing trigger handlers

---
## Methods
### `onAfterDelete(Map<Id, sObject> oldRecordMap)` → `void`

Called after records have been deleted.

#### Parameters
|Param|Description|
|-----|-----------|
|`oldRecordMap` |  A map of IDs to the old versions of the sObject records. |

### `onAfterInsert(Map<Id, sObject> newRecordMap)` → `void`

Called after records have been inserted.

#### Parameters
|Param|Description|
|-----|-----------|
|`newRecordMap` |  A map of IDs to the new versions of the sObject records. |

### `onAfterUndelete(Map<Id, sObject> newRecordMap)` → `void`

Called after records have been undeleted.

#### Parameters
|Param|Description|
|-----|-----------|
|`newRecordMap` |  A map of IDs to the new versions of the sObject records. |

### `onAfterUpdate(Map<Id, sObject> newRecordMap, Map<Id, sObject> oldRecordMap)` → `void`

Called after records have been updated.

#### Parameters
|Param|Description|
|-----|-----------|
|`newRecordMap` |  A map of IDs to the new versions of the sObject records. |
|`oldRecordMap` |  A map of IDs to the old versions of the sObject records. |

### `onBeforeDelete(Map<Id, sObject> oldRecordMap)` → `void`

Called before records are deleted.

#### Parameters
|Param|Description|
|-----|-----------|
|`oldRecordMap` |  A map of IDs to the old versions of the sObject records. |

### `onBeforeInsert(List<sObject> newRecords)` → `void`

Called before records are inserted.

#### Parameters
|Param|Description|
|-----|-----------|
|`newRecords` |  A list of the new versions of the sObject records. |

### `onBeforeUpdate(Map<Id, sObject> newRecordMap, Map<Id, sObject> oldRecordMap)` → `void`

Called before records are updated.

#### Parameters
|Param|Description|
|-----|-----------|
|`newRecordMap` |  A map of IDs to the new versions of the sObject records. |
|`oldRecordMap` |  A map of IDs to the old versions of the sObject records. |

---
