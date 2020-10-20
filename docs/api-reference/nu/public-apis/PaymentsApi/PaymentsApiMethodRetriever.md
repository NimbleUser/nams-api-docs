## PaymentsApiMethodRetriever class

Responsible for retrieving Payment Methods and returning the corresponding PaymentMethodBase instances.

---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `getByEntityId(Id entityId)` → `List<PaymentMethodBase>`

Returns wrapped Payment Methods for the provided entity.
##### Parameters
|Param|Description|
|-----|-----------|
|`entityId` |  The entity Id to get the payment methods for. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getPlugins()` → `List<Pluggable>`

Gets the plugins associated with this retriever instance.
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `with(Pluggable plugin)` → `PaymentsApiMethodRetriever`

Extends the PaymentMethodBase being retrieved based on the passed in plugin.
##### Parameters
|Param|Description|
|-----|-----------|
|`plugin` |  Pluggable instance with the extension logic. |

<!-- panels:end -->
---
