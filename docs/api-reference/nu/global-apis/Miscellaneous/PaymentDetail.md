# PaymentDetail class

Base class used to represent payment details.

---
## Properties

### `IsExpressPayment` → `Boolean`

Denotes if this statement was made via Express functionality in order to stamp it on the eventual Payment__c.ExpressPayment__c field.

### `Source` → `String`

Overrides any stock logic regarding the Source__c on the inevitable payment record allowing API consumers to specify a custom source.

---
