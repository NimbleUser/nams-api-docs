# DataFactoryDeferredRevenueMethod class

Exposes constants and methods commonly used for creating and inserting Deferred Revenue Method records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.

---
## Methods
### `createDeferredRevenueMethod(String deferredRevenueMethodName, Id deferredRevenueGLAccountId, Id recordTypeId, String eventRecognition)` → `DeferredRevenueMethod__c`

Creates a Deferred Revenue Method using the specified name and GL Account and Record Type Ids. If specified, the Event Recognition name determines the process in which the Event Deferred Revenue should be recognized. The Event Recognition string is not a required parameter and can be null, unless creating an Event Deferred Revenue Method. The possible values can be derived by looking at the picklist values on the Deferred Revenue Method object in Salesforce.

#### Parameters
|Param|Description|
|-----|-----------|
|`String` |  the name of the Deferred Revenue Method |
|`Id` |  the Id of the Deferred Revenue GL Account to use when revenue is to be recognized |
|`Id` |  the Id of the Deferred Revenue Method Record Type |
|`String` |  the Event Recognition technique to use when revenue is to be recognized. Optional. |

#### Return

**Type**

DeferredRevenueMethod__c

**Description**

a DeferredRevenueMethod__c object

### `insertAnyDeferredRevenueMethod()` → `DeferredRevenueMethod__c`

Creates and inserts a Membership Deferred Revenue Method using a default Entity and Revenue GL Account. Other Entity-relation information is also inserted, and this method should only be used for testing purposes. A default name will be used.

#### Return

**Type**

DeferredRevenueMethod__c

**Description**

a DeferredRevenueMethod__c object

### `insertDeferredRevenueMethod(String deferredRevenueMethodName, Id deferredRevenueGLAccountId, Id recordTypeId, String eventRecognition)` → `DeferredRevenueMethod__c`

Creates and inserts a Deferred Revenue Method using the specified name and GL Account and Record Type Ids. If specified, the Event Recognition name determines the process in which the Event Deferred Revenue should be recognized. The Event Recognition string is not a required parameter and can be null, unless creating an Event Deferred Revenue Method. The possible values can be derived by looking at the picklist values on the Deferred Revenue Method object in Salesforce.

#### Parameters
|Param|Description|
|-----|-----------|
|`String` |  the name of the Deferred Revenue Method |
|`Id` |  the Id of the Deferred Revenue GL Account to use when revenue is to be recognized |
|`Id` |  the Id of the Deferred Revenue Method Record Type |
|`String` |  the Event Recognition technique to use when revenue is to be recognized. Optional. |

#### Return

**Type**

DeferredRevenueMethod__c

**Description**

a DeferredRevenueMethod__c object

### `insertDeferredRevenueMethod(Id entityId)` → `DeferredRevenueMethod__c`

Creates and inserts a Membership Deferred Revenue Method. A default Revenue GL Account will be created from the Entity Id specified. A default name will be used.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity |

#### Return

**Type**

DeferredRevenueMethod__c

**Description**

a DeferredRevenueMethod__c object

### `insertDeferredRevenueMethod(Id entityId, Id recordTypeId)` → `DeferredRevenueMethod__c`

Creates and inserts a Deferred Revenue Method of the specified Record Type Id. A default Revenue GL Account will be created from the Entity Id specified. A default name will be used.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity |
|`Id` |  the Id of the Deferred Revenue Method Record Type |

#### Return

**Type**

DeferredRevenueMethod__c

**Description**

a DeferredRevenueMethod__c object

### `insertDeferredRevenueMethod(Id entityId, Id recordTypeId, String eventRecognition)` → `DeferredRevenueMethod__c`

Creates and inserts a Deferred Revenue Method of the specified Record Type Id. A default Revenue GL Account will be created from the Entity Id specified. A default name will be used. If specified, the Event Recognition name determines the process in which the Event Deferred Revenue should be recognized. The Event Recognition string is not a required parameter and can be null, unless creating an Event Deferred Revenue Method. The possible values can be derived by looking at the picklist values on the Deferred Revenue Method object in Salesforce.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity |
|`Id` |  the Id of the Deferred Revenue Method Record Type |
|`String` |  the Event Recognition technique to use when revenue is to be recognized. Optional. |

#### Return

**Type**

DeferredRevenueMethod__c

**Description**

a DeferredRevenueMethod__c object

### `insertMembershipRevenueMethod(Id entityId)` → `DeferredRevenueMethod__c`

Creates and inserts a Membership Deferred Revenue Method. A default Revenue GL Account will be created from the Entity Id specified. A default name will be used.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity |

#### Return

**Type**

DeferredRevenueMethod__c

**Description**

a DeferredRevenueMethod__c object

### `insertRegistrationRevenueMethod(Id entityId)` → `DeferredRevenueMethod__c`

Creates and inserts a Registration Deferred Revenue Method. A default Revenue GL Account will be created from the Entity Id specified. A default name will be used. The Event Recognition will be the Start Date Recognition method.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity |

#### Return

**Type**

DeferredRevenueMethod__c

**Description**

a DeferredRevenueMethod__c object

### `insertSubscriptionRevenueMethod(Id entityId)` → `DeferredRevenueMethod__c`

Creates and inserts a Subscription Deferred Revenue Method. A default Revenue GL Account will be created from the Entity Id specified. A default name will be used.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity |

#### Return

**Type**

DeferredRevenueMethod__c

**Description**

a DeferredRevenueMethod__c object

---
