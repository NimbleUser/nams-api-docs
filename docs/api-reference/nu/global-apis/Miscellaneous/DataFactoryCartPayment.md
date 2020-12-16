# DataFactoryCartPayment class

Exposes constants and methods commonly used for creating and inserting Cart Payment records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.

---
## Methods
### `createAnyCartPayment()` → `CartPayment__c`

Creates a Cash Cart Payment of a default payment amount for a default Cart record, using a default Entity and Person Account and should be used for testing purposes only. Also inserts basic Entity setup information - such as payment methods, credit card issuers, and order items configurations.

#### Return

**Type**

CartPayment__c

**Description**

a CartPayment__c object

### `createAnyCreditCardCartPayment()` → `CartPayment__c`

Creates a Credit Card Cart Payment of a default payment amount for a default Cart record, using a default Entity and Person Account and should be used for testing purposes only. Also inserts basic Entity setup information - such as payment methods, credit card issuers, and order items configurations.

#### Return

**Type**

CartPayment__c

**Description**

a CartPayment__c object

### `createAnyCreditCardCartPayment(Id entityId)` → `CartPayment__c`

Creates a Credit Card Cart Payment of a default payment amount for a Cart record assigning the Entity and should be used for testing purposes only.

#### Return

**Type**

CartPayment__c

**Description**

a CartPayment__c object

### `createCartPayment(Id cartId)` → `CartPayment__c`

Creates a Cash Cart Payment of a default payment amount for the specified Cart record.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Cart |

#### Return

**Type**

CartPayment__c

**Description**

a CartPayment__c object

### `createCartPayment(Id cartId, Decimal paymentAmount, Id entityPaymentMethodId)` → `CartPayment__c`

Creates a Cart Payment using the specified Cart and Entity Payment Method Ids.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Cart |
|`Decimal` |  the payment amount |
|`Id` |  the Id of the Entity Payment Method |

#### Return

**Type**

CartPayment__c

**Description**

a CartPayment__c object

### `createCreditCardCartPayment(Id cartId, Decimal paymentAmount, Id entityPaymentMethodId,String creditCardNumber, String creditCardExpirationMonth, String creditCardExpirationYear, String creditCardName)` → `CartPayment__c`

Creates a Cart Payment using the specified Cart Id, Entity Payment Method Id, and credit card information. If any credit card information is not specified, it will be set to a default value.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Cart |
|`Decimal` |  the payment amount |
|`Id` |  the Id of the Entity Payment Method |
|`String` |  the credit card number |
|`String` |  the credit card expiration month |
|`String` |  the credit card expiration year |
|`String` |  the name on the credit card |

#### Return

**Type**

CartPayment__c

**Description**

a CartPayment__c object

### `createCreditCartPayment(Id cartId, Decimal paymentAmount, Id entityPaymentMethodId, Id creditPaymentId)` → `CartPayment__c`

Creates a Credit Cart Payment using the specified Cart Id, Payment Amount, Entity Payment Method Id, and Credit Payment Id.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Cart |
|`Decimal` |  the payment amount |
|`Id` |  the Id of the Entity Payment Method |
|`Id` |  the Id of the Credit Payment from which this credit cart payment is being applied. |

#### Return

**Type**

CartPayment__c

**Description**

a CartPayment__c object

### `createCreditRefundCartPayment(Id cartId, Decimal refundAmount)` → `CartPayment__c`

Creates a Credit Refund Cart Payment using the specified Cart Id and Refund Amount.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Cart |
|`Decimal` |  the refund amount. This must be negative. |

#### Return

**Type**

CartPayment__c

**Description**

a CartPayment__c object

### `insertAnyCreditCardCartPayment()` → `CartPayment__c`

Creates and inserts a Credit Card Cart Payment of a default payment amount for a default Cart record, using a default Entity and Person Account and should be used for testing purposes only. Also inserts basic Entity setup information - such as payment methods, credit card issuers, and order items configurations.

#### Return

**Type**

CartPayment__c

**Description**

a CartPayment__c object

### `insertCartPayment(Id cartId, Decimal paymentAmount, Id entityPaymentMethodId)` → `CartPayment__c`

Creates and inserts a Cart Payment using the specified Cart and Entity Payment Method Ids.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Cart |
|`Decimal` |  the payment amount |
|`Id` |  the Id of the Entity Payment Method |

#### Return

**Type**

CartPayment__c

**Description**

a CartPayment__c object

### `insertCartPayment(Id cartId)` → `CartPayment__c`

Creates and inserts a Cash Cart Payment of a default payment amount for the specified Cart record.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Cart |

#### Return

**Type**

CartPayment__c

**Description**

a CartPayment__c object

### `insertCreditCardCartPayment(Id cartId, Decimal paymentAmount, Id entityPaymentMethodId,String creditCardNumber, String creditCardExpirationMonth, String creditCardExpirationYear, String creditCardName)` → `CartPayment__c`

Creates and inserts a Cart Payment using the specified Cart Id, Entity Payment Method Id, and credit card information. If any credit card information is not specified, it will be set to a default value.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Cart |
|`Decimal` |  the payment amount |
|`Id` |  the Id of the Entity Payment Method |
|`String` |  the credit card number |
|`String` |  the credit card expiration month |
|`String` |  the credit card expiration year |
|`String` |  the name on the credit card |

#### Return

**Type**

CartPayment__c

**Description**

a CartPayment__c object

### `insertCreditCartPayment(Id cartId, Decimal paymentAmount, Id entityPaymentMethodId, Id creditPaymentId)` → `CartPayment__c`

Creates and inserts a Credit Cart Payment using the specified Cart Id, Payment Amount, Entity Payment Method Id, and Credit Payment Id.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Cart |
|`Decimal` |  the payment amount |
|`Id` |  the Id of the Entity Payment Method |
|`Id` |  the Id of the Credit Payment from which this credit cart payment is being applied. |

#### Return

**Type**

CartPayment__c

**Description**

a CartPayment__c object

### `insertCreditRefundCartPayment(Id cartId, Decimal refundAmount)` → `CartPayment__c`

Creates and inserts a Credit Refund Cart Payment using the specified Cart Id and Refund Amount.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Cart |
|`Decimal` |  the refund amount. This must be negative. |

#### Return

**Type**

CartPayment__c

**Description**

a CartPayment__c object

---
