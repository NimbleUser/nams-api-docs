## PaymentLineBase class

Represents a Payment Line.

---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `getAmount()` → `AmountBase`

Returns the Payment amount.
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getAppliedToId()` → `String`

Returns the record Id this payment line is being applied to.
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getFieldValue(Schema.SObjectField field)` → `Object`

Gets field value based on an SObjectField.
##### Parameters
|Param|Description|
|-----|-----------|
|`field` |  The field to get the value from. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getFieldValue(String fieldName)` → `Object`

Gets field value based on an SObjectField.
##### Parameters
|Param|Description|
|-----|-----------|
|`fieldName` |  The field to get the value from. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getId()` → `String`

Returns the Id that represents the Payment Line.
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getPayment()` → `PaymentBase`

Returns the parent payment for this line.
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getRecord()` → `SObject`

Returns the wrapped record by this IPersistenceSupport implementation. Avoid using this method directly. Instead, if you want to persist any changes to this object into the database, use the PaymentsApi endpoints.
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setAmount(Decimal paymentAmount)` → `PaymentLineBase`

Sets the Payment Line amount.
##### Parameters
|Param|Description|
|-----|-----------|
|`paymentAmount` |  The amount to set. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setAmount(Decimal paymentAmount, String currencyIsoCode)` → `PaymentLineBase`

Sets the Payment Line amount.
##### Parameters
|Param|Description|
|-----|-----------|
|`paymentAmount` |  The amount to set. |
|`currencyIsoCode` |  The currency ISO code. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setAppliedToId(String recordId)` → `PaymentLineBase`

Sets the record Id this line will apply payment to.
##### Parameters
|Param|Description|
|-----|-----------|
|`recordId` |  The record Id the payment is being applied to. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setFieldValue(Schema.SObjectField field, Object value)` → `PaymentLineBase`

Sets field value based on an SObjectField.
##### Parameters
|Param|Description|
|-----|-----------|
|`field` |  The field to get the value from. |
|`value` |  Value to set. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setFieldValue(String fieldName, Object value)` → `PaymentLineBase`

Sets field value based on an SObjectField.
##### Parameters
|Param|Description|
|-----|-----------|
|`fieldName` |  The field to get the value from. |
|`value` |  Value to set. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setPayment(PaymentBase parentPayment)` → `PaymentLineBase`

Sets the parent payment for this line.
##### Parameters
|Param|Description|
|-----|-----------|
|`parentPayment` |  The parent payment for this line. |

<!-- panels:end -->
---
