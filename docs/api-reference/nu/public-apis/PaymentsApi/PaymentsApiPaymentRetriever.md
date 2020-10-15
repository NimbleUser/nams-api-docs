## PaymentsApiPaymentRetriever class

Responsible for retrieving Payment and returning the corresponding PaymentBase instances.

---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `getById(Set<Id> recordIds)` → `List<PaymentBase>`

Returns wrapped payments by record Ids.
##### Parameters
|Param|Description|
|-----|-----------|
|`recordIds` |  Ids to get Payments by. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getPlugins()` → `List<Pluggable>`

Gets the plugins associated with this retriever instance.
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `with(Pluggable plugin)` → `PaymentsApiPaymentRetriever`

Extends the PaymentBase being retrieved based on the passed in Pluggable.
##### Parameters
|Param|Description|
|-----|-----------|
|`plugin` |  Pluggable instance with the extension logic. |

<!-- panels:end -->
---
