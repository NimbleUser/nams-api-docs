# DataFactoryPayment class

Exposes constants and methods commonly used for creating and inserting Payment records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.

---
## Methods
### `createAnyCreditCardPayment(Id entityId)` → `Payment__c`

Creates a Credit Card Payment of a default payment amount for the specified Entity Id. The Transaction Date is set to the current day of the User logged in.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity |

#### Return

**Type**

Payment__c

**Description**

a Payment__c object

### `createAnyCreditCardPayment(Id creditCardEntityPaymentMethodId, Id entityCreditCardIssuerId)` → `Payment__c`

Creates a Credit Card Payment of a default payment amount for the specified credit card Entity Payment Method and specified entity credit card issuer. The Transaction Date is set to the current day of the User logged in.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the id of the credit card entity payment method |
|`Id` |  the id of the entity credit card issuer |

#### Return

**Type**

Payment__c

**Description**

a Payment__c object

### `createCashPrepayment(Id entityId, Decimal paymentAmount)` → `Payment__c`

Creates a Cash Credit Payment for the specified Entity Id and amount with a default payer. The Transaction Date is set to the current day of the User logged in.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity |
|`Decimal` |  the amount to be paid |

#### Return

**Type**

Payment__c

**Description**

a Payment__c object

### `createCashPrepayment(Id entityId, Decimal paymentAmount, Id payerId)` → `Payment__c`

Creates a Cash Prepayment for the specified Entity Id, amount, and payer. The Transaction Date is set to the current day of the User logged in. A payable GL Account is inserted and is used for the payment's CreditPayableGLAccount.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity |
|`Decimal` |  the amount to be paid |
|`Id` |  the Id of the payer |

#### Return

**Type**

Payment__c

**Description**

a Payment__c object

### `createPayment(Id entityId)` → `Payment__c`

Creates a Cash Payment of a default payment amount for the specified Entity Id. The Transaction Date is set to the current day of the User logged in.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity |

#### Return

**Type**

Payment__c

**Description**

a Payment__c object

### `createPayment(Id entityId, Decimal paymentAmount)` → `Payment__c`

Creates a Cash Payment for the specified Entity Id and amount. The Transaction Date is set to the current day of the User logged in.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity |
|`Decimal` |  the amount to be paid |

#### Return

**Type**

Payment__c

**Description**

a Payment__c object

### `createPayment(Decimal paymentAmount, Id entityPaymentMethodId, Date paymentDate)` → `Payment__c`

Creates a Cash Payment for the specified Entity Id and amount.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity |
|`Decimal` |  the amount to be paid |
|`Date` |  the date of the payment |

#### Return

**Type**

Payment__c

**Description**

a Payment__c object

### `insertARBPayment(List<Account> payers)` → `List<Payment__c>`

Creates and inserts automated recurring billing (ARB) Credit Card Payments for the specified payers. A default entity is inserted and Recurring Payments are inserted for each given payer. The Transaction Date is set to the current day of the User logged in.

#### Parameters
|Param|Description|
|-----|-----------|
|`List<Account>` |  The payers to create ARB payments for |

#### Return

**Type**

List<Payment__c>

**Description**

List<Payment__c> object

### `insertAnyCreditCardPayment(Id entityId)` → `Payment__c`

Creates and inserts a Credit Card Payment of a default payment amount for the specified Entity Id. The Transaction Date is set to the current day of the User logged in.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity |

#### Return

**Type**

Payment__c

**Description**

a Payment__c object

### `insertCashPrepayment(Id entityId, Decimal paymentAmount)` → `Payment__c`

Creates and inserts a Cash Prepayment with the given payment amount for the specified Entity Id. The Transaction Date is set to the current day of the User logged in. A payable GL Account is inserted and is used for the payment's CreditPayableGLAccount.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity |

#### Return

**Type**

Payment__c

**Description**

a Payment__c object

### `insertCashPrepayment(Id entityId, Decimal paymentAmount, Id payerId)` → `Payment__c`

Creates and inserts a Cash Prepayment for the specified Entity Id, amount, and payer. The Transaction Date is set to the current day of the User logged in. A payable GL Account is inserted and is used for the payment's CreditPayableGLAccount.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity |
|`Decimal` |  the amount to be paid |
|`Id` |  ht Id of the payer |

#### Return

**Type**

Payment__c

**Description**

a Payment__c object

### `insertCashPrepayment(Id entityId)` → `Payment__c`

Creates and inserts a Cash Prepayment of a default payment amount for the specified Entity Id. The Transaction Date is set to the current day of the User logged in. A payable GL Account is inserted and is used for the payment's CreditPayableGLAccount.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity |

#### Return

**Type**

Payment__c

**Description**

a Payment__c object

### `insertPayment(Id entityId, Decimal paymentAmount, Id entityPaymentMethodId, Date paymentDate)` → `Payment__c`

Creates and inserts a Payment for the specified Entity and Entity Payment Method Ids for the given amount.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity |
|`Decimal` |  the amount to be paid |
|`Id` |  the Id of the Entity Payment Method |
|`Date` |  the date of the payment |

#### Return

**Type**

Payment__c

**Description**

a Payment__c object

### `insertPayment(Id entityId)` → `Payment__c`

Creates and inserts a Cash Payment of a default payment amount for the specified Entity Id. The Transaction Date is set to the current day of the User logged in.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity |

#### Return

**Type**

Payment__c

**Description**

a Payment__c object

### `insertPayment(Id entityId, Decimal paymentAmount)` → `Payment__c`

Creates and inserts a Cash Payment for the specified Entity Id and amount. The Transaction Date is set to the current day of the User logged in.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity |
|`Decimal` |  the amount to be paid |

#### Return

**Type**

Payment__c

**Description**

a Payment__c object

---
