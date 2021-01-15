# RegistrationDeferredScheduleCalculator class

Calculates deferred schedules for registrations.

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

### `getStartDate(Event__c event, DeferredRevenueMethod__c deferredRevenueMethod)` → `Date`

Gets the start date for the Membership's deferred schedule.

#### Parameters
|Param|Description|
|-----|-----------|
|`event` |  The related Event record. |
|`deferredRevenueMethod` |  The related Deferred Revenue Method record. |

#### Return

**Type**

Date

**Description**

The start date for the deferred schedule.

---
