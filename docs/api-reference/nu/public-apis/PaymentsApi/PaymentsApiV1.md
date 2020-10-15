## PaymentsApiV1 class

Version 1 implementation of the PaymentsApi. Do not call directly, but through `PaymentsApi.v1`.

---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `applier()` → `PaymentsApiApplier`

Gets the configured PaymentsApiApplier.
<!-- div:right-panel -->
##### Example
```apex
PaymentsApi.v1.applier().apply(payment, strategy);
```

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `detailsFactory()` → `PaymentsApiDetailsFactory`

Gets the configured PaymentsApiDetailsFactory.
<!-- div:right-panel -->
##### Example
```apex
PaymentDetailsBase details = PaymentsApi.v1.detailsFactory()
    .create('Cash');
```

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `lineFactory()` → `PaymentsApiLineFactory`

Gets the configured PaymentsApiLineFactory.
<!-- div:right-panel -->
##### Example
```apex
PaymentLineBase line = PaymentsApi.v1.lineFactory()
    .createNew();
```

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `methodFactory()` → `PaymentsApiMethodFactory`

Gets the configured PaymentsApiMethodFactory.
<!-- div:right-panel -->
##### Example
```apex
List<EntityPaymentMethod__c> records = ...
List<PaymentMethodBase> methods = PaymentsApi.v1.methodFactory()
    .create(records);
```

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `methodRetriever()` → `PaymentsApiMethodRetriever`

Gets the configured PaymentsApiMethodRetriever.
<!-- div:right-panel -->
##### Example
```apex
List<PaymentMethodBase> methods = PaymentsApi.v1.methodRetriever()
    .getByEntityId(entityId);
```

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `paymentFactory()` → `PaymentsApiPaymentFactory`

Gets the configured PaymentsApiPaymentFactory.
<!-- div:right-panel -->
##### Example
```apex
PaymentBase payment = PaymentsApi.v1.paymentFactory()
    .createNew();
```

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `paymentRetriever()` → `PaymentsApiPaymentRetriever`

Gets the configured PaymentsApiPaymentRetriever.
<!-- div:right-panel -->
##### Example
```apex
List<PaymentBase> payments = PaymentsApi.v1.paymentRetriever()
    .with(new PaymentWithPaymentDetailsPlugin())
    .getById(paymentIds);
```

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `persistenceService()` → `PaymentsApiPersistenceService`

Gets the configured PaymentsApiPersistenceService.
<!-- div:right-panel -->
##### Example
```apex
PaymentsApi.v1.persistenceService()
    .register(paymentIntent)
    .commitWork();
```

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `refundService()` → `PaymentsApiRefundService`

Gets the configured PaymentsApiRefundService.
<!-- div:right-panel -->
##### Example
```apex
List<RefundResponses> refundResponses = PaymentsApi.v1.refundService().refund(paymentIds);
```

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `service()` → `PaymentsApiService`

Gets the configured PaymentsApiService.
<!-- div:right-panel -->
##### Example
```apex
PaymentsApi.v1.service().process(paymentIntent);
```

<!-- panels:end -->
---
