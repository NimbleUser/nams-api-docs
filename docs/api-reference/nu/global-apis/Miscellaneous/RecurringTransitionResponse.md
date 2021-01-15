# RecurringTransitionResponse class

Response class with the result from a IRecurringTransition process.

---
## Constructors
### `RecurringTransitionResponse(List<OrderLine> orderLines)`

Constructs a new successful RecurringTransitionResponse with generated order lines.
#### Parameters
|Param|Description|
|-----|-----------|
|`orderLines` |  List of generated order lines. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if orderLines is null. |

### `RecurringTransitionResponse(OperationResult failedResult)`

Constructs a new unsuccessful RecurringTransitionResponse.
#### Parameters
|Param|Description|
|-----|-----------|
|`failedResult` |  The failed OperationResult with the reason for the failure. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if failedResult is null. |

---
