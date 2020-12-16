# DataFactoryPaymentLine class

Exposes constants and methods commonly used for creating and inserting Payment Line records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.

---
## Methods
### `createPaymentLine(Id paymentId, Id orderItemId, Decimal paymentAmt)` → `PaymentLine__c`

Creates a Payment Line for the specified Payment and Order Item Ids for the given amount.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Payment that the line is for |
|`Id` |  the Id of the Order Item to which the line is being applied |
|`Decimal` |  the amount to be paid |

#### Return

**Type**

PaymentLine__c

**Description**

a PaymentLine__c object

### `insertCashPaymentLine(Id orderItemId, Decimal paymentAmt)` → `PaymentLine__c`

Creates and inserts a cash Payment Line for the specified Order Item Id for the given amount. A cash payment record is inserted.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Order Item to which the line is being applied |
|`Decimal` |  the amount to be paid |

#### Return

**Type**

PaymentLine__c

**Description**

a PaymentLine__c object

### `insertFullPaymentPaymentLines(List<OrderItem__c> orderItemsToPay)` → `List<PaymentLine__c>`

Creates and inserts Payment Lines for the List of Order Item passed in. A Cash Payment record is also created. The Transaction Date is set to the current day of the User logged in.

#### Parameters
|Param|Description|
|-----|-----------|
|`List<OrderItem__c>` |  a List of OrderItem__c object records to which the lines are to be applied |

#### Return

**Type**

List<PaymentLine__c>

**Description**

a List of PaymentLine__c object records

### `insertFullPaymentPaymentLines(List<OrderItem__c> orderItemsToPay, Id paymentId)` → `List<PaymentLine__c>`

Creates and inserts Payment Lines for the List of Order Item and specified Payment Id. The Transaction Date is set to the current day of the User logged in.

#### Parameters
|Param|Description|
|-----|-----------|
|`List<OrderItem__c>` |  a List of OrderItem__c object records to which the lines are to be applied |
|`Id` |  the Id of the Payment that the lines are for |

#### Return

**Type**

List<PaymentLine__c>

**Description**

a List of PaymentLine__c object records

### `insertFullRefundPaymentLines(List<OrderItem__c> orderItemsToRefund, Id paymentId)` → `List<PaymentLine__c>`

Creates and inserts Payment Lines for the List of Order Item and specified Payment Id. This method invokes the insertFullPaymentPaymentLines(List,Id) method - since this is the 'refund' method, it is expected that the Balances of the Order Items are negative, but that is not a requirement. The Transaction Date is set to the current day of the User logged in.

#### Parameters
|Param|Description|
|-----|-----------|
|`List<OrderItem__c>` |  a List of OrderItem__c object records to which the lines are to be applied |
|`Id` |  the Id of the Payment that the lines are for |

#### Return

**Type**

List<PaymentLine__c>

**Description**

a List of PaymentLine__c object records

### `insertFullRefundPaymentLines(List<OrderItem__c> orderItemsToRefund)` → `List<PaymentLine__c>`

Creates and inserts Payment Lines for the List of Order Item passed in. A Cash Payment record is also created. This method invokes the insertFullPaymentPaymentLines(List) method - since this is the 'refund' method, it is expected that the Balances of the Order Items are negative, but that is not a requirement. The Transaction Date is set to the current day of the User logged in.

#### Parameters
|Param|Description|
|-----|-----------|
|`List<OrderItem__c>` |  a List of OrderItem__c object records to which the lines are to be applied |

#### Return

**Type**

List<PaymentLine__c>

**Description**

a List of PaymentLine__c object records

### `insertPaymentLine(Id paymentId, Id orderItemId, Decimal paymentAmt)` → `PaymentLine__c`

Creates and inserts a Payment Line for the specified Payment and Order Item Ids for the given amount.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Payment that the line is for |
|`Id` |  the Id of the Order Item to which the line is being applied |
|`Decimal` |  the amount to be paid |

#### Return

**Type**

PaymentLine__c

**Description**

a PaymentLine__c object

---
