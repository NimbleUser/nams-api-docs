## PaymentV2 class

Represents a Payment.

---
### Constructors
<!-- panels:start -->
<!-- div:left-panel -->
#### `PaymentV2()`

Constructs a new PaymentV2 instance.
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `PaymentV2(Payment__c paymentRecord)`

Constructs a new PaymentV2 instance with a Payment__c record to wrap.
##### Parameters
|Param|Description|
|-----|-----------|
|`paymentRecord` |  The Payment__c record to wrap. |

<!-- panels:end -->
---
### Properties

#### `amount` → `PaymentCurrencyAmount`

The payment amount to send/receive from the lightning component.

#### `methodData` → `Object>`

The payment method specific data from the lightning component.

#### `methodType` → `String`

The payment method type from the lightning component.

#### `payerId` → `Id`

The payer Id from the lightning component.

#### `supportedPaymentMethods` → `List<PaymentMethodBase>`

Returns the Supported Payment Methods for this Payment.

---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `addLine(PaymentLineBase paymentLine)` → `PaymentBase`

Adds a child Payment Line to this Payment.
##### Parameters
|Param|Description|
|-----|-----------|
|`paymentLine` |  Payment Line to add. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `addLines(List<PaymentLineBase> paymentLines)` → `PaymentBase`

Adds children Payment Lines to this Payment.
##### Parameters
|Param|Description|
|-----|-----------|
|`paymentLines` |  Payment Lines to add. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getAmount()` → `AmountBase`

Returns the Payment amount.
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getAvailablePaymentMethods()` → `List<PaymentMethodBase>`

Returns the available Payment Methods for this Payment.
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getDate()` → `Date`

Returns the payment date.
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
#### `getGatewayId()` → `Id`

Returns the Payment Gateway Id for this Payment.
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getId()` → `String`

Returns the Id that represents the Payment.
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getIsExpressPayment()` → `Boolean`

Returns whether or not this is an express payment.
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getLines()` → `List<PaymentLineBase>`

Returns the children Payment Lines for this Payment.
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getName()` → `String`

Returns the Name that represents the Payment.
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getPayerId()` → `String`

Returns the Id of the payment payer.
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getPaymentDetails()` → `PaymentDetailsBase`

Returns the Payment Details for this Payment.
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getRecord()` → `SObject`

Returns the wrapped record by this IPersistenceSupport implementation. Avoid using this method directly. Instead, if you want to persist any changes to this object into the database, use the PaymentsApi endpoints.
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getSource()` → `String`

Returns the name of the source of payment.
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `removeLine(PaymentLineBase lineToRemove)` → `PaymentLineBase`

Removes the passed in PaymentLineBase from the list of lines on the payment. Returns the instance of the removed line if found. If nothing is found null is returned.
##### Parameters
|Param|Description|
|-----|-----------|
|`lineToRemove` |  The PaymentLineBase instance that should be removed. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setAmount(Decimal paymentAmount)` → `PaymentBase`

Sets the Payment amount.
##### Parameters
|Param|Description|
|-----|-----------|
|`paymentAmount` |  The amount to set. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setAmount(Decimal paymentAmount, String currencyIsoCode)` → `PaymentBase`

Sets the Payment amount.
##### Parameters
|Param|Description|
|-----|-----------|
|`paymentAmount` |  The amount to set. |
|`currencyIsoCode` |  The currency ISO code. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setAvailablePaymentMethods(List<PaymentMethodBase> methods)` → `PaymentBase`

Sets the available Payment Methods for this Payment.
##### Parameters
|Param|Description|
|-----|-----------|
|`methods` |  The available Payment Methods to set. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setDate(Date dateToSet)` → `PaymentBase`

Sets the payment date on this object.
##### Parameters
|Param|Description|
|-----|-----------|
|`dateToSet` |  Date to set. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setFieldValue(Schema.SObjectField field, Object value)` → `PaymentBase`

Sets field value based on an SObjectField.
##### Parameters
|Param|Description|
|-----|-----------|
|`field` |  The field to get the value from. |
|`value` |  Value to set. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setFieldValue(String fieldName, Object value)` → `PaymentBase`

Sets field value based on an SObjectField.
##### Parameters
|Param|Description|
|-----|-----------|
|`fieldName` |  The field to get the value from. |
|`value` |  Value to set. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setGatewayId(Id gatewayId)` → `PaymentBase`

Sets the Payment Gateway Id for this Payment.
##### Parameters
|Param|Description|
|-----|-----------|
|`gatewayId` |  Payment Gateway Id to set. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setIsExpressPayment(Boolean isExpress)` → `PaymentBase`

Sets whether or not this is an express payment.
##### Parameters
|Param|Description|
|-----|-----------|
|`isExpress` |  Flag for if the payment is an express payment. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setPayerId(Id payerId)` → `PaymentBase`

Sets the payer lookup on the payment.
##### Parameters
|Param|Description|
|-----|-----------|
|`payerId` |  The Account making the payment. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setPaymentDetails(PaymentDetailsBase details)` → `PaymentBase`

Sets the Payment Details for this Payment.
##### Parameters
|Param|Description|
|-----|-----------|
|`details` |  Payment Details to set. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setSource(String source)` → `PaymentBase`

Sets the name of the source of payment.
##### Parameters
|Param|Description|
|-----|-----------|
|`source` |  The payment's source. |

<!-- panels:end -->
---
