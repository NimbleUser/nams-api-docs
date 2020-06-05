## DefaultPaymentFactory class

The force-di framework needs this to be public to create the binding.

---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `create(List<SObject> records)` → `List<PaymentBase>`
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `createNew()` → `PaymentBase`
<!-- panels:end -->
---
### Inner Classes

#### DefaultPaymentFactory.DefaultApplier class

The force-di framework needs this to be public to create the binding.

---
##### Methods
<!-- panels:start -->
<!-- div:left-panel -->
###### `apply(Map<PaymentBase, PaymentApplierStrategyBase> paymentStrategyMap)` → `void`
<!-- panels:end -->
---
#### DefaultPaymentFactory.DefaultDetailsFactory class

The force-di framework needs this to be public to create the binding.

---
##### Methods
<!-- panels:start -->
<!-- div:left-panel -->
###### `create(SObject paymentRecord)` → `PaymentDetailsBase`
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
###### `create(String paymentType, Map<String, Object> data)` → `PaymentDetailsBase`
<!-- panels:end -->
---
#### DefaultPaymentFactory.DefaultLineFactory class

The force-di framework needs this to be public to create the binding.

---
##### Methods
<!-- panels:start -->
<!-- div:left-panel -->
###### `create(SObject record)` → `PaymentLineBase`
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
###### `createNew()` → `PaymentLineBase`
<!-- panels:end -->
---
#### DefaultPaymentFactory.DefaultMethodFactory class

The force-di framework needs this to be public to create the binding.

---
##### Methods
<!-- panels:start -->
<!-- div:left-panel -->
###### `create(List<SObject> records, List<Pluggable> plugins)` → `List<PaymentMethodBase>`
<!-- panels:end -->
---
#### DefaultPaymentFactory.DefaultMethodRetriever class

The force-di framework needs this to be public to create the binding.

---
##### Methods
<!-- panels:start -->
<!-- div:left-panel -->
###### `getByEntityId(Id entityId)` → `List<PaymentMethodBase>`
<!-- panels:end -->
---
#### DefaultPaymentFactory.DefaultPaymentRetriever class

The force-di framework needs this to be public to create the binding.

---
##### Methods
<!-- panels:start -->
<!-- div:left-panel -->
###### `getById(Set<Id> recordIds)` → `List<PaymentBase>`
<!-- panels:end -->
---
#### DefaultPaymentFactory.DefaultPersistenceService class

The force-di framework needs this to be public to create the binding.

---
##### Methods
<!-- panels:start -->
<!-- div:left-panel -->
###### `commitWork()` → `void`
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
###### `register(PaymentBase objectToRegister)` → `PaymentsApiPersistenceService`
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
###### `register(List<PaymentBase> objectsToRegister)` → `PaymentsApiPersistenceService`
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
###### `registerDeleted(IPersistenceSupport objectToRegister)` → `PaymentsApiPersistenceService`
<!-- panels:end -->
---
#### DefaultPaymentFactory.DefaultRefundService class

The force-di framework needs this to be public to create the binding.

---
##### Methods
<!-- panels:start -->
<!-- div:left-panel -->
###### `generateRefundPayments(List<PaymentBase> refundedPayments)` → `List<PaymentBase>`
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
###### `refund(Set<Id> paymentIds)` → `List<RefundResponse>`
<!-- panels:end -->
---
#### DefaultPaymentFactory.DefaultService class

The force-di framework needs this to be public to create the binding.

---
##### Methods
<!-- panels:start -->
<!-- div:left-panel -->
###### `process(List<PaymentBase> paymentsToProcess)` → `void`
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
###### `registerProcessor(IPaymentProcessor processor, Set<String> paymentTypes)` → `void`
<!-- panels:end -->
---
