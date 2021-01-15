# OrderProcessorResponse class

Response returned after an order has been processed by an IOrderProcessor with information regarding the processed orders.

---
## Properties

### `AsyncBatchId` → `Id`

The Id of the batch job (AsyncApexJob) for generating orders. This will only be populated if the request specified to process the transactions asynchronously.

### `Orders` → `List<Order>`

List of processed orders.

### `Result` → `Operation`

OperationResult with information about the result of the operation.

---
