# IPricingProcessor interface

This interface is used to process records which may require repricing.

---
## Methods
### `process(PricingProcessorRequest request)` → `PricingProcessorResponse`

This method is implemented to specify the logic for repricing carts.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  The PricingProcessorRequest containing the records to process. |

#### Return

**Type**

PricingProcessorResponse

**Description**

A PricingProcessorResponse.

---
