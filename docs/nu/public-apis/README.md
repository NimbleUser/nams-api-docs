# Classes
## PaymentsApi

### [AvailablePaymentMethodsPlugin](nu/public-apis/PaymentsApi/AvailablePaymentMethodsPlugin.md)


Plugin for getting the available payment methods and setting them on the PaymentBase.



### [CashPaymentDetails](nu/public-apis/PaymentsApi/CashPaymentDetails.md)


Cash payment details.



### [CashPaymentProcessor](nu/public-apis/PaymentsApi/CashPaymentProcessor.md)


Handles processing cash payments.



### [CheckPaymentDetails](nu/public-apis/PaymentsApi/CheckPaymentDetails.md)


Check payment details.



### [CheckPaymentProcessor](nu/public-apis/PaymentsApi/CheckPaymentProcessor.md)


Handles processing check payments.



### [CreditCardPaymentDetails](nu/public-apis/PaymentsApi/CreditCardPaymentDetails.md)


Credit card payment details.



### [CreditCardPaymentProcessor](nu/public-apis/PaymentsApi/CreditCardPaymentProcessor.md)


Handles processing credit card payments.



### [CreditCardPaymentRefundProcessor](nu/public-apis/PaymentsApi/CreditCardPaymentRefundProcessor.md)


Refunds Credit Card Payments.



### [CreditCardRefundPaymentGenerator](nu/public-apis/PaymentsApi/CreditCardRefundPaymentGenerator.md)


Generate new refund payment objects from a list of refunded payments.



### [DefaultPaymentFactory](nu/public-apis/PaymentsApi/DefaultPaymentFactory.md)


The force-di framework needs this to be public to create the binding.



### [IPaymentProcessor](nu/public-apis/PaymentsApi/IPaymentProcessor.md)


Processes passed in PaymentBase objects.



### [IPaymentRefundProcessor](nu/public-apis/PaymentsApi/IPaymentRefundProcessor.md)


Refunds payments.



### [IRefundPaymentGenerator](nu/public-apis/PaymentsApi/IRefundPaymentGenerator.md)


Generate new refund payment objects from a list of refunded payments.



### [NullPaymentApplierStrategy](nu/public-apis/PaymentsApi/NullPaymentApplierStrategy.md)


Null payment applier which creates no lines. Used when manually specifying lines and no strategy is needed.



### [OrderItemPaymentApplier](nu/public-apis/PaymentsApi/OrderItemPaymentApplier.md)


Order Item payment applier which creates a Payment Line for each active Order Item with a balance. Payment is applied in the order of OrderItem.PaymentSortOrder.



### [PaymentApplierStrategyBase](nu/public-apis/PaymentsApi/PaymentApplierStrategyBase.md)


Base class used to create payment lines based on their context of being applied.



### [PaymentBase](nu/public-apis/PaymentsApi/PaymentBase.md)


Represents a Payment.



### [PaymentBaseTestData](nu/public-apis/PaymentsApi/PaymentBaseTestData.md)






### [PaymentCurrencyAmount](nu/public-apis/PaymentsApi/PaymentCurrencyAmount.md)


Represents an Amount and Currency for use with Payments.



### [PaymentDetailsBase](nu/public-apis/PaymentsApi/PaymentDetailsBase.md)


Represents Payment Details for the payment being made.



### [PaymentDetailsBaseTestData](nu/public-apis/PaymentsApi/PaymentDetailsBaseTestData.md)






### [PaymentLine](nu/public-apis/PaymentsApi/PaymentLine.md)


Represents a Payment Line.



### [PaymentLineBase](nu/public-apis/PaymentsApi/PaymentLineBase.md)


Represents a Payment Line.



### [PaymentLineBaseTestData](nu/public-apis/PaymentsApi/PaymentLineBaseTestData.md)






### [PaymentLinePersistenceDefinition](nu/public-apis/PaymentsApi/PaymentLinePersistenceDefinition.md)


Represents how a PaymentLineBase exists in the database.



### [PaymentMethodBase](nu/public-apis/PaymentsApi/PaymentMethodBase.md)


Represents a Payment Method.



### [PaymentMethodBaseTestData](nu/public-apis/PaymentsApi/PaymentMethodBaseTestData.md)






### [PaymentPersistenceDefinition](nu/public-apis/PaymentsApi/PaymentPersistenceDefinition.md)


Represents how a PaymentBase exists in the database.



### [PaymentV2](nu/public-apis/PaymentsApi/PaymentV2.md)


Represents a Payment.



### [PaymentWithDefaultFieldsPlugin](nu/public-apis/PaymentsApi/PaymentWithDefaultFieldsPlugin.md)


Plugin to add default fields to query for use in PaymentBase.



### [PaymentWithPaymentDetailsPlugin](nu/public-apis/PaymentsApi/PaymentWithPaymentDetailsPlugin.md)


PaymentsApiPaymentRetriever plugin that populates Payment Details information to the PaymentBase being retrieved.



### [PaymentsApi](nu/public-apis/PaymentsApi/PaymentsApi.md)


Provides endpoints for interacting with Payments.



### [PaymentsApiApplier](nu/public-apis/PaymentsApi/PaymentsApiApplier.md)


Manages applying payments through the PaymentsApi.



### [PaymentsApiDependenciesDefaulter](nu/public-apis/PaymentsApi/PaymentsApiDependenciesDefaulter.md)


In charge of setting the default implementations used by the PaymentsApi.



### [PaymentsApiDetailsFactory](nu/public-apis/PaymentsApi/PaymentsApiDetailsFactory.md)


Allows for the creation of PaymentDetailsBase objects.



### [PaymentsApiException](nu/public-apis/PaymentsApi/PaymentsApiException.md)


Signals an error has ocurred when interacting with the PaymentsApi.



### [PaymentsApiLineFactory](nu/public-apis/PaymentsApi/PaymentsApiLineFactory.md)


Allows for the creation of PaymentLineBase objects.



### [PaymentsApiMethodFactory](nu/public-apis/PaymentsApi/PaymentsApiMethodFactory.md)


Wraps SObjects into PaymentMethodBase objects.



### [PaymentsApiMethodRetriever](nu/public-apis/PaymentsApi/PaymentsApiMethodRetriever.md)


Responsible for retrieving Payment Methods and returning the corresponding PaymentMethodBase instances.



### [PaymentsApiPaymentFactory](nu/public-apis/PaymentsApi/PaymentsApiPaymentFactory.md)


Allows for the creation of PaymentBase objects.



### [PaymentsApiPaymentRetriever](nu/public-apis/PaymentsApi/PaymentsApiPaymentRetriever.md)


Responsible for retrieving Payment and returning the corresponding PaymentBase instances.



### [PaymentsApiPersistenceService](nu/public-apis/PaymentsApi/PaymentsApiPersistenceService.md)


Service for saving model objects from the PaymentsApi into the database.



### [PaymentsApiRefundService](nu/public-apis/PaymentsApi/PaymentsApiRefundService.md)


Service in charge of payment refunding operations.



### [PaymentsApiService](nu/public-apis/PaymentsApi/PaymentsApiService.md)


Manages interactions with the PaymentsApi.



### [PaymentsApiV1](nu/public-apis/PaymentsApi/PaymentsApiV1.md)


Version 1 implementation of the PaymentsApi. Do not call directly, but through `PaymentsApi.v1`.



### [PaymentsApiV1Applier](nu/public-apis/PaymentsApi/PaymentsApiV1Applier.md)


Applies payments and generates transactions for the applied payments.



### [PaymentsApiV1DetailsFactory](nu/public-apis/PaymentsApi/PaymentsApiV1DetailsFactory.md)


PaymentsApiDetailsFactory implementation for the V1 of the PaymentsApi.



### [PaymentsApiV1LineFactory](nu/public-apis/PaymentsApi/PaymentsApiV1LineFactory.md)


PaymentsApiLineFactory implementation for the V1 of the PaymentsApi.



### [PaymentsApiV1MethodFactory](nu/public-apis/PaymentsApi/PaymentsApiV1MethodFactory.md)


PaymentsApiMethodFactory implementation for the V1 of the PaymentsApi.



### [PaymentsApiV1MethodRetriever](nu/public-apis/PaymentsApi/PaymentsApiV1MethodRetriever.md)


PaymentsApiMethodRetriever implementation for the V1 of the PaymentsApi.



### [PaymentsApiV1PaymentFactory](nu/public-apis/PaymentsApi/PaymentsApiV1PaymentFactory.md)


OrdersApiOrderFactory implementation for the V1 of the PaymentsApi.



### [PaymentsApiV1PaymentRetriever](nu/public-apis/PaymentsApi/PaymentsApiV1PaymentRetriever.md)


Responsible for retrieving Payment and returning the corresponding PaymentBase instances.



### [PaymentsApiV1PersistenceService](nu/public-apis/PaymentsApi/PaymentsApiV1PersistenceService.md)


V1 implementation of the PaymentsApiPersistenceService. Service for saving model objects from the PaymentsApi into the database.



### [PaymentsApiV1RefundService](nu/public-apis/PaymentsApi/PaymentsApiV1RefundService.md)


Service in charge of payment refunding operations.



### [PaymentsApiV1Service](nu/public-apis/PaymentsApi/PaymentsApiV1Service.md)


Manages interactions with the v1 of the PaymentsApi.



### [PaymentsWithExtPaymentProfilesPlugin](nu/public-apis/PaymentsApi/PaymentsWithExtPaymentProfilesPlugin.md)


Plugin that extends the PaymentsApi to be able to retrieve ExternalPaymentProfile__c records and use them to set the PaymentBase attributes.



### [PaymentsWithExternalProfilesPlugin](nu/public-apis/PaymentsApi/PaymentsWithExternalProfilesPlugin.md)


Plugin that extends the PaymentsApi to be able to retrieve ExternalPaymentProfile__r.ExternalProfile__c information from Payment records.



### [PaymentsWithPaymentLinesPlugins](nu/public-apis/PaymentsApi/PaymentsWithPaymentLinesPlugins.md)


Plugin that extends the PaymentsApi to be able to retrieve PaymentLine__c records alongside Payment__c records being queried.



### [ProcessorPaymentDetails](nu/public-apis/PaymentsApi/ProcessorPaymentDetails.md)


Base class for payment details that use a payment processor.



### [RefundResponse](nu/public-apis/PaymentsApi/RefundResponse.md)


Represents a response for a single payment being refunded.



### [StandardPaymentRefundProcessor](nu/public-apis/PaymentsApi/StandardPaymentRefundProcessor.md)


Base IPaymentRefundProcessor implementation that has the refund strategy.



### [StandardRefundPaymentGenerator](nu/public-apis/PaymentsApi/StandardRefundPaymentGenerator.md)


Generate new refund payment objects from a list of refunded payments.


