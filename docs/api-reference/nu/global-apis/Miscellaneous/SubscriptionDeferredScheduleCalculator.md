# SubscriptionDeferredScheduleCalculator class

Calculates deferred schedules for subscriptions.

---
## Methods
### `calculateDeferredSchedules(List<DeferredScheduleCalculatorRequest> requests)` → `List<DeferredScheduleCalculatorResponse>`

Calculates the deferred schedule and adds it to the returned response.

#### Parameters
|Param|Description|
|-----|-----------|
|`requests` |  A list of DeferredScheduleCalculatorRequest to calculated schedules. |

#### Return

**Type**

List<DeferredScheduleCalculatorResponse>

**Description**

A list of DeferredScheduleCalculatorResponse for the provided requests.

### `getRemainingRecognitionCount(Subscription__c subscription,DeferredRevenueMethod__c deferredRevenueMethod)` → `Integer`

Gets the remaining recognition count for the Subscription's deferred schedule. 1. Try recognition based upon a lookup frequency record. 2. Try recognition based upon a lookup publication record. 3. Fall back to straight-line recognition.

#### Parameters
|Param|Description|
|-----|-----------|
|`subscription` |  The related Subscription record. |
|`deferredRevenueMethod` |  The related Deferred Revenue Method record. |

#### Return

**Type**

Integer

**Description**

The number of remaining recognitions.

### `getStartDate(Subscription__c subscription, DeferredRevenueMethod__c deferredRevenueMethod)` → `Date`

Gets the start date for the Subscription's deferred schedule.

#### Parameters
|Param|Description|
|-----|-----------|
|`subscription` |  The related Subscription record. |
|`deferredRevenueMethod` |  The related Deferred Revenue Method record. |

#### Return

**Type**

Date

**Description**

The start date for the deferred schedule.

---
