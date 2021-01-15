# CartTestData class

Builder class for dealing with Cart__c records. Solely used for testing, NOT a data factory.

---
## Properties

### `DefaultCart` → `Cart__c`

Returns the default Cart__c. @return A Cart__c object.

---
## Methods
### `asBillMe()` → `CartTestData`

Sets the BillMe__c field for the Cart__c that is being built as true.

#### Return

**Type**

CartTestData

**Description**

The instance of CartTestData.

### `billTo(Id accountId)` → `CartTestData`

Change the BillTo__c field for the Cart__c that is being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`accountId` |  The value of the BillTo__c field. |

#### Return

**Type**

CartTestData

**Description**

The instance of CartTestData.

### `create()` → `Cart__c`

Builds the Cart__c object.

#### Parameters
|Param|Description|
|-----|-----------|
|`confirmationEmail` |  The value of the ConfirmationEmail__c field. |
|`additionalEmails` |  The value of the AdditionalEmails__c field. |
|`@param` |  records A List of SObject records to write to a relationship field. |

#### Return

**Type**

Cart__c

**Description**

The created Cart__c object.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if records is null, ArgumentException if a relationship could not be found. |

### `identifiedBy(Id accountId)` → `CartTestData`

Change the Identifier__c field for the Cart__c that is being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`accountId` |  The value of the Identifier__c field. |

#### Return

**Type**

CartTestData

**Description**

The instance of CartTestData.

### `insertRecord()` → `Cart__c`

Inserts the built Cart__c.

#### Return

**Type**

Cart__c

**Description**

The inserted Cart__c object.

### `newInstance()` → `CartTestData`

Method for getting a new instance of CartTestData.

#### Return

**Type**

CartTestData

**Description**

A new instance of CartTestData.

### `with(Schema.SObjectField field, Object value)` → `CartTestData`

Dynamically sets the Schema.SObjectField noted by field to value for Carts being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`field` |  The Schema.SObjectField to map the value to and cannot be null. |
|`value` |  The value for the field and can be set to null. |

#### Return

**Type**

CartTestData

**Description**

The instance of CartTestData.

### `withAdjustmentEntity(Id entityId)` → `CartTestData`

Change the AdjustmentEntity__c for the Cart__c that is being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`transactionDate` |  The value of the TransactionDate__c field. |
|`batchId` |  The value of the Batch__c field. |
|`entityId` |  The value of the AdjustmentEntity__c field. |

#### Return

**Type**

CartTestData

**Description**

The instance of CartTestData.

### `withEntity(Id entityId)` → `CartTestData`

Change the Entity__c for the Cart__c that is being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`entityId` |  The value of the Entity__c field. |

#### Return

**Type**

CartTestData

**Description**

The instance of CartTestData.

### `withIdentifier(String identifer)` → `CartTestData`

Change the Identifier__c field for the Cart__c that is being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`identifer` |  The value of the Identifier__c field. |

#### Return

**Type**

CartTestData

**Description**

The instance of CartTestData.

### `withInvoiceDate(Date invoiceDate)` → `CartTestData`

Change the InvoiceDate__c field for the Cart__c that is being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`invoiceDate` |  The value of the InvoiceDate__c field. |

#### Return

**Type**

CartTestData

**Description**

The instance of CartTestData.

### `withInvoiceDescription(String invoiceDescription)` → `CartTestData`

Change the InvoiceDescription__c field for the Cart__c that is being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`invoiceDescription` |  The value of the InvoiceDescription__c field. |

#### Return

**Type**

CartTestData

**Description**

The instance of CartTestData.

### `withInvoiceEmail(String invoiceEmail)` → `CartTestData`

Change the InvoiceEmail__c field for the Cart__c that is being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`invoiceEmail` |  The value of the InvoiceEmail__c field. |

#### Return

**Type**

CartTestData

**Description**

The instance of CartTestData.

### `withInvoiceNumber(String invoiceNumber)` → `CartTestData`

Change the InvoiceNumber__c field for the Cart__c that is being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`invoiceNumber` |  The value of the InvoiceNumber__c field. |

#### Return

**Type**

CartTestData

**Description**

The instance of CartTestData.

### `withInvoiceTerm(Integer invoiceTerm)` → `CartTestData`

Change the InvoiceTerm__c field for the Cart__c that is being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`invoiceTerm` |  The value of the InvoiceTerm__c field. |

#### Return

**Type**

CartTestData

**Description**

The instance of CartTestData.

### `withOrder(Id orderId)` → `CartTestData`

Change the Order__c for the Cart__c that is being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`orderId` |  The value of the Order__c field. |

#### Return

**Type**

CartTestData

**Description**

The instance of CartTestData.

### `withPaymentIdentifier(String identifer)` → `CartTestData`

Change the PaymentIdentifier__c field for the Cart__c that is being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`identifer` |  The value of the PaymentIdentifier__c field. |

#### Return

**Type**

CartTestData

**Description**

The instance of CartTestData.

### `withPurchaseOrderNumber(String purchaseOrderNumber)` → `CartTestData`

Change the PurchaseOrderNumber__c field for the Cart__c that is being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`purchaseOrderNumber` |  The value of the PurchaseOrderNumber__c field. |

#### Return

**Type**

CartTestData

**Description**

The instance of CartTestData.

### `withPurpose(String purpose)` → `CartTestData`

Change the Purpose__c field for the Cart__c that is being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`purpose` |  The value of the Purpose__c field. |

#### Return

**Type**

CartTestData

**Description**

The instance of CartTestData.

---
