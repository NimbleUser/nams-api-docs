# DataFactoryPaymentScheduleLink class

Exposes constants and methods commonly used for creating and inserting Payment Schedule Link records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.

---
## Properties

### `DEFAULT_DISPLAY_ORDER` → `Integer`

### `NO_START_DAY_OVERRIDE` → `Integer`

---
## Methods
### `createMembershipTypePaymentScheduleLink(Id paymentScheduleId, Id membershipTypeId,Integer startDayOverride, Integer displayOrder, String status)` → `PaymentScheduleLink__c`

Creates a Payment Schedule Link for the specified Membership Type and Payment Schedule Ids. The Start Day Override, Display Order, and Status parameters are optional. If not specified, the Status will default to Active.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Payment Schedule |
|`Id` |  the Id of the Membership Type |
|`Integer` |  the Start Day Override. Optional. |
|`Integer` |  the Display Order. Optional. |
|`String` |  the Status of the Payment Schedule Link. Optional. |

#### Return

**Type**

PaymentScheduleLink__c

**Description**

a PaymentScheduleLink__c object

### `createMonthlyMembershipTypePaymentScheduleLink(Id membershipTypeId)` → `PaymentScheduleLink__c`

Creates a Monthly Payment Schedule Link for the specified Membership Type. There is no start day override. The display order is the default and the status is active. A Monthly payment schedule is inserted.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Membership Type |

#### Return

**Type**

PaymentScheduleLink__c

**Description**

a PaymentScheduleLink__c object

### `insertMembershipTypePaymentScheduleLink(Id paymentScheduleId, Id membershipTypeId)` → `PaymentScheduleLink__c`

Creates and inserts a Payment Schedule Link for the specified Membership Type and Payment Schedule Ids. The Status is set to Active.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Payment Schedule |
|`Id` |  the Id of the Membership Type |

#### Return

**Type**

PaymentScheduleLink__c

**Description**

a PaymentScheduleLink__c object

### `insertMembershipTypePaymentScheduleLink(Id paymentScheduleId, Id membershipTypeId,Integer startDayOverride, Integer displayOrder, String status)` → `PaymentScheduleLink__c`

Creates and inserts a Payment Schedule Link for the specified Membership Type and Payment Schedule Ids. The Start Day Override, Display Order, and Status parameters are optional. If not specified, the Status will default to Active.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Payment Schedule |
|`Id` |  the Id of the Membership Type |
|`Integer` |  the Start Day Override. Optional. |
|`Integer` |  the Display Order. Optional. |
|`String` |  the Status of the Payment Schedule Link. Optional. |

#### Return

**Type**

PaymentScheduleLink__c

**Description**

a PaymentScheduleLink__c object

### `insertMonthlyMembershipTypePaymentScheduleLink(Id membershipTypeId)` → `PaymentScheduleLink__c`

Creates and inserts a Monthly Payment Schedule Link for the specified Membership Type. There is no start day override. The display order is the default and the status is active. A Monthly payment schedule is inserted.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Membership Type |

#### Return

**Type**

PaymentScheduleLink__c

**Description**

a PaymentScheduleLink__c object

---
