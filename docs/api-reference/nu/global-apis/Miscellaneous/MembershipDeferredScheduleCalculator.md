# MembershipDeferredScheduleCalculator class

Calculates deferred schedules for memberships.

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

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if requests is null. |

### `getRemainingRecognitionCount(Membership__c membership,DeferredRevenueMethod__c deferredRevenueMethod)` → `Integer`

Gets the remaining recognition count for the Membership's deferred schedule. - If the recognition is blank or Straightline, calculate the months between the Membership start and end dates. - Fall back to All On Start Date recognition - returns 1.

#### Parameters
|Param|Description|
|-----|-----------|
|`membership` |  The related Membership record. |
|`deferredRevenueMethod` |  The related Deferred Revenue Method record. |

#### Return

**Type**

Integer

**Description**

The number of remaining recognitions.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if deferredRevenueMethod is null. |

### `getStartDate(Membership__c membership, DeferredRevenueMethod__c deferredRevenueMethod)` → `Date`

Gets the start date for the Membership's deferred schedule.

#### Parameters
|Param|Description|
|-----|-----------|
|`membership` |  The related Membership record. |
|`deferredRevenueMethod` |  The related Deferred Revenue Method record. |

#### Return

**Type**

Date

**Description**

The start date for the deferred schedule.

---
