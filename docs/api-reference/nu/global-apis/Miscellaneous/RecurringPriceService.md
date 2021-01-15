# RecurringPriceService class

Service to get price of recurred order.

---
## Properties

### `Instance` → `RecurringPriceService`

A static singleton access for retrieving a shared instance of PaymentGatewayService. @return An instance of PaymentGatewayService

---
## Methods
### `getRecurringPrice(RecurringPriceRequest request)` → `RecurringPriceResponse`

Gets the recurred price based on schedule.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  Gets the Set of schedule Ids. |

#### Return

**Type**

RecurringPriceResponse

**Description**

Returns RecurringPriceResponse.

#### Throws
|Exception|Description|
|---------|-----------|
|`An` |  ArgumentNullException if request is null. |

---
