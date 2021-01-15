# DataFactoryRecurringPayment class

Exposes constants and methods commonly used for creating and inserting Recurring Payment records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.

---
## Properties

### `DEFAULT_AMOUNT` → `Decimal`

### `DEFAULT_AUTH_DOT_NET_SUBSCRIPTION_ID` → `String`

### `DEFAULT_CREDIT_CARD_EXPIRATION_MONTH` → `String`

### `DEFAULT_CREDIT_CARD_EXPIRATION_YEAR` → `String`

### `DEFAULT_CREDIT_CARD_NUMBER` → `String`

### `DEFAULT_FIRST_PAYMENT_DATE` → `Date`

### `DEFAULT_NEXT_PAYMENT_DATE` → `Date`

---
## Methods
### `createRecurringPayment()` → `RecurringPayment__c`

Creates an active Recurring Payment with a default amount, subscription id, credit card expiration year, credit card expiration month, and credit card number. A default Entity and Individual account is inserted. Also inserts basic Entity setup information - such as payment methods, credit card issuers, and order items configurations.

#### Return

**Type**

RecurringPayment__c

**Description**

a RecurringPayment__c object

### `createRecurringPayment(Id entityId)` → `RecurringPayment__c`

Creates and inserts an active Recurring Payment using the given entity with a default amount, subscription id, credit card expiration year, credit card expiration month, and credit card number. A default Individual account is inserted.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the entity id of the recurring payment. |

#### Return

**Type**

RecurringPayment__c

**Description**

a RecurringPayment__c object

### `createRecurringPayment(String status)` → `RecurringPayment__c`

Creates a Recurring Payment using the given status with a default amount, subscription id, credit card expiration year, credit card expiration month, and credit card number. A default Entity and Individual account is inserted. Also inserts basic Entity setup information - such as payment methods, credit card issuers, and order items configurations.

#### Parameters
|Param|Description|
|-----|-----------|
|`String` |  the status of the recurring payment. |

#### Return

**Type**

RecurringPayment__c

**Description**

a RecurringPayment__c object

### `createRecurringPayment(Id entityId, String status)` → `RecurringPayment__c`

Creates a Recurring Payment using the given entity and status with a default amount, subscription id, credit card expiration year, credit card expiration month, and credit card number. A default Individual account is inserted.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the entity id of the recurring payment. |
|`String` |  the status of the recurring payment. |

#### Return

**Type**

RecurringPayment__c

**Description**

a RecurringPayment__c object

### `createRecurringPayment(Id entityId, Date firstPaymentDate, Date nextPaymentDate)` → `RecurringPayment__c`

Creates a Recurring Payment using the given entity, first payment date and next payment date with a default amount, subscription id, credit card expiration year, credit card expiration month, and credit card number. A default Individual account is inserted.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the entity id of the recurring payment. |
|`Date` |  the date of the first payment. |
|`Date` |  the date of the next payment. |

#### Return

**Type**

RecurringPayment__c

**Description**

a RecurringPayment__c object

### `createRecurringPayment(Id entityId, Account account, Decimal amount, String status)` → `RecurringPayment__c`

Creates a Recurring Payment using the given entity, account, amount, and status with a default amount, subscription id, credit card expiration year, credit card expiration month, and credit card number.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the entity id of the recurring payment. |
|`SObject` |  the account for the recurring payment. |
|`Decimal` |  the amount for the recurring payment. |
|`String` |  the status of the recurring payment. |

#### Return

**Type**

RecurringPayment__c

**Description**

a RecurringPayment__c object

### `createRecurringPayment(Id entityId,Account account,Decimal amount,Date firstPaymentDate,Date nextPaymentDate,String status)` → `RecurringPayment__c`

Creates a Recurring Payment using the given entity, account, amount, first payment date, next payment date and status with a default amount, subscription id, credit card expiration year, credit card expiration month, and credit card number.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the entity id of the recurring payment. |
|`SObject` |  the account for the recurring payment. |
|`Decimal` |  the amount for the recurring payment. |
|`Date` |  the date of the first payment. |
|`Date` |  the date of the next payment. |
|`String` |  the status of the recurring payment. |

#### Return

**Type**

RecurringPayment__c

**Description**

a RecurringPayment__c object

### `insertCancelPendingRecurringPayments(Integer numberToInsert)` → `List<RecurringPayment__c>`

Creates and inserts the specified number of Cancel Pending Recurring Payments using a default entity, individual amount, subscription id, credit card expiration year, credit card expiration month, and credit card number. A default Individual account and default entity is inserted. Also inserts basic Entity setup information - such as payment methods, credit card issuers, and order items configurations.

#### Return

**Type**

List<RecurringPayment__c>

**Description**

a RecurringPayment__c object

### `insertInstallmentRecurringPayment(Id entityId,Id paymentScheduleLinkId)` → `RecurringPayment__c`

Creates and inserts an active Installment Recurring Payment using the given entity and payment schedule link with a default amount, subscription id, credit card expiration year, credit card expiration month, and credit card number.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the entity id of the recurring payment. |
|`Id` |  the payment schedule link id of the payment schedule to use. |

#### Return

**Type**

RecurringPayment__c

**Description**

a RecurringPayment__c object

### `insertRecurringPayment()` → `RecurringPayment__c`

Creates and inserts an active Recurring Payment with a default amount, subscription id, credit card expiration year, credit card expiration month, and credit card number. A default Entity and Individual account is inserted. Also inserts basic Entity setup information - such as payment methods, credit card issuers, and order items configurations.

#### Return

**Type**

RecurringPayment__c

**Description**

a RecurringPayment__c object

### `insertRecurringPayment(String status)` → `RecurringPayment__c`

Creates and inserts a Recurring Payment using the given status with a default amount, subscription id, credit card expiration year, credit card expiration month, and credit card number. A default Entity and Individual account is inserted. Also inserts basic Entity setup information - such as payment methods, credit card issuers, and order items configurations.

#### Parameters
|Param|Description|
|-----|-----------|
|`String` |  the status of the recurring payment. |

#### Return

**Type**

RecurringPayment__c

**Description**

a RecurringPayment__c object

### `insertRecurringPayment(Id entityId)` → `RecurringPayment__c`

Creates and inserts an active Recurring Payment using the given entity with a default amount, subscription id, credit card expiration year, credit card expiration month, and credit card number. A default Individual account is inserted.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the entity id of the recurring payment. |

#### Return

**Type**

RecurringPayment__c

**Description**

a RecurringPayment__c object

### `insertRecurringPayment(Id entityId, Date firstPaymentDate, Date nextPaymentDate)` → `RecurringPayment__c`

Creates and inserts an active Recurring Payment using the given entity, first payment date and next payment date with a default amount, subscription id, credit card expiration year, credit card expiration month, and credit card number. A default Individual account is inserted.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the entity id of the recurring payment. |
|`Date` |  the date of the first payment. |
|`Date` |  the date of the next payment. |

#### Return

**Type**

RecurringPayment__c

**Description**

a RecurringPayment__c object

### `insertRecurringPayment(Id entityId, String status)` → `RecurringPayment__c`

Creates and inserts a Recurring Payment using the given entity and status with a default amount, subscription id, credit card expiration year, credit card expiration month, and credit card number. A default Individual account is inserted.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the entity id of the recurring payment. |
|`String` |  the status of the recurring payment. |

#### Return

**Type**

RecurringPayment__c

**Description**

a RecurringPayment__c object

### `insertRecurringPayment(Id entityId,Account account,Decimal amount)` → `RecurringPayment__c`

Creates and inserts an active Recurring Payment using the given entity, account and amount with a default amount, subscription id, credit card expiration year, credit card expiration month, and credit card number.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the entity id of the recurring payment. |
|`SObject` |  the account for the recurring payment. |
|`Decimal` |  the amount for the recurring payment. |

#### Return

**Type**

RecurringPayment__c

**Description**

a RecurringPayment__c object

### `insertRecurringPayments(List<Account> accounts)` → `List<RecurringPayment__c>`

Creates and inserts the specified number of active Recurring Payments using a default entity, individual amount, subscription id, credit card expiration year, credit card expiration month, and credit card number. A default entity is inserted. Also inserts basic Entity setup information - such as payment methods, credit card issuers, and order items configurations.

#### Return

**Type**

List<RecurringPayment__c>

**Description**

a RecurringPayment__c object

---
