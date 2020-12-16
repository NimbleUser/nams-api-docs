# DataFactoryBatch class

Exposes constants and methods commonly used for creating and inserting Batch records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.

---
## Properties

### `DEFAULT_MANUAL_BATCH_TITLE` → `String`

### `MANUAL_RECORD_TYPE_ID` → `Id`

---
## Methods
### `createAutomaticBatch(Id entityId)` → `Batch__c`

Creates an automatic batch for the specified entity.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the entity for which the batch is for |

#### Return

**Type**

Batch__c

**Description**

a Batch__c object

### `createManualBatch(Id entityId, String status, Date transactionDate)` → `Batch__c`

Creates a manual batch for the specified entity, status, and transaction date. The title is set to the default manual batch title.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the entity for which the batch is for |
|`String` |  the status of the batch |
|`Date` |  the transaction date of the batch |

#### Return

**Type**

Batch__c

**Description**

a Batch__c object

### `createManualBatch(Id entityId, String status)` → `Batch__c`

Creates a manual batch for the specified entity and status. The title is set to the default manual batch title, and the transaction date is set to the current day of the logged in User.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the entity for which the batch is for |
|`String` |  the status of the batch |

#### Return

**Type**

Batch__c

**Description**

a Batch__c object

### `createManualBatch(Id entityId)` → `Batch__c`

Creates a manual batch for the specified entity. The status is set to the default open status. The title is set to the default manual batch title, and the transaction date is set to the current day of the logged in User.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the entity for which the batch is for |

#### Return

**Type**

Batch__c

**Description**

a Batch__c object

### `createManualBatch()` → `Batch__c`

Inserts a default entity and creates a manual batch for that entity. The status is set to the default open status. The title is set to the default manual batch title, and the transaction date is set to the current day of the logged in User.

#### Return

**Type**

Batch__c

**Description**

a Batch__c object

### `insertAutomaticBatch(Id entityId)` → `Batch__c`

Creates and inserts an automatic batch for the specified entity.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the entity for which the batch is for |

#### Return

**Type**

Batch__c

**Description**

a Batch__c object

### `insertManualBatch()` → `Batch__c`

Inserts a default entity and creates and inserts a manual batch for that entity. The status is set to the default open status. The title is set to the default manual batch title, and the transaction date is set to the current day of the logged in User.

#### Return

**Type**

Batch__c

**Description**

a Batch__c object

### `insertManualBatch(Id entityId)` → `Batch__c`

Creates and inserts a manual batch for the specified entity. The status is set to the default open status. The title is set to the default manual batch title, and the transaction date is set to the current day of the logged in User.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the entity for which the batch is for |

#### Return

**Type**

Batch__c

**Description**

a Batch__c object

### `insertManualBatch(Id entityId, String status)` → `Batch__c`

Creates and inserts a manual batch for the specified entity and status. The title is set to the default manual batch title, and the transaction date is set to the current day of the logged in User.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the entity for which the batch is for |
|`String` |  the status of the batch |

#### Return

**Type**

Batch__c

**Description**

a Batch__c object

### `insertManualBatch(Id entityId, String status, Date transactionDate)` → `Batch__c`

Creates and inserts a manual batch for the specified entity, status, and transaction date. The title is set to the default manual batch title.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the entity for which the batch is for |
|`String` |  the status of the batch |
|`Date` |  the transaction date of the batch |

#### Return

**Type**

Batch__c

**Description**

a Batch__c object

### `insertManualPostedBatch()` → `Batch__c`

Inserts a default entity and creates, inserts, and posts a manual batch for that entity. The title is set to the default manual batch title, and the transaction date is set to the current day of the logged in User.

#### Return

**Type**

Batch__c

**Description**

a Batch__c object

### `insertManualPostedBatch(Id entityId)` → `Batch__c`

Creates, inserts, and posts a manual batch for the specified entity. The title is set to the default manual batch title, and the transaction date is set to the current day of the logged in User.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the entity for which the batch is for |

#### Return

**Type**

Batch__c

**Description**

a Batch__c object

### `insertManualPostedBatch(Id entityId, Date transactionDate)` → `Batch__c`

Creates, inserts, and posts a manual batch for the specified entity and transaction date. The title is set to the default manual batch title.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the entity for which the batch is for |
|`Date` |  the transaction date of the batch |

#### Return

**Type**

Batch__c

**Description**

a Batch__c object

---
