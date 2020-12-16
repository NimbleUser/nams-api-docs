# DataFactoryPaymentSchedule class

Exposes constants and methods commonly used for creating and inserting Payment Schedule records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.

---
## Methods
### `createDaysPaymentSchedule(String name, Integer daysIntervalAmount)` → `PaymentSchedule__c`

Creates a Payment Schedule of the specified number of days.

#### Parameters
|Param|Description|
|-----|-----------|
|`String` |  the name of the Payment Schedule |
|`Integer` |  the number of days for the interval amount |

#### Return

**Type**

PaymentSchedule__c

**Description**

a PaymentSchedule__c object

### `createMonthsPaymentSchedule(String name, Integer monthsIntervalAmount)` → `PaymentSchedule__c`

Creates a Payment Schedule of the specified number of months.

#### Parameters
|Param|Description|
|-----|-----------|
|`String` |  the name of the Payment Schedule |
|`Integer` |  the number of months for the interval amount |

#### Return

**Type**

PaymentSchedule__c

**Description**

a PaymentSchedule__c object

### `insertDaysPaymentSchedule(String name, Integer daysIntervalAmount)` → `PaymentSchedule__c`

Creates and inserts a Payment Schedule of the specified number of days.

#### Parameters
|Param|Description|
|-----|-----------|
|`String` |  the name of the Payment Schedule |
|`Integer` |  the number of days for the interval amount |

#### Return

**Type**

PaymentSchedule__c

**Description**

a PaymentSchedule__c object

### `insertMonthlyPaymentSchedule()` → `PaymentSchedule__c`

Creates and inserts a Payment Schedule with an interval amount of 1 and an interval unit of months.

#### Return

**Type**

PaymentSchedule__c

**Description**

a PaymentSchedule__c object

### `insertMonthsPaymentSchedule(String name, Integer monthsIntervalAmount)` → `PaymentSchedule__c`

Creates and inserts a Payment Schedule of the specified number of months.

#### Parameters
|Param|Description|
|-----|-----------|
|`String` |  the name of the Payment Schedule |
|`Integer` |  the number of months for the interval amount |

#### Return

**Type**

PaymentSchedule__c

**Description**

a PaymentSchedule__c object

---
