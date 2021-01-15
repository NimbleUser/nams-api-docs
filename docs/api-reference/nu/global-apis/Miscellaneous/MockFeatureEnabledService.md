# MockFeatureEnabledService class

A mock implementation of IFeatureEnabled for use in unit testing.

---
## Properties

### `Instance` → `MockFeatureEnabledService`

A singleton to allow external access for setting whether or not the mock class should return true or false.

---
## Methods
### `isFeatureEnabled(FeatureEnabledRequest request)` → `FeatureEnabledResponse`

Determines if the mock feature is enabled via the value of isFeaturedEnabled. If the All Feature Enabled/Disabled override is set, then the response will be built with that value. Otherwise the feature name in the request will be used to determine if a feature is enabled or not. If the neither the override nor the passed in feature named are set in the mock, the response will return false.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  A FeatureEnabledRequest object which is completely unused in this mock class. |

#### Return

**Type**

FeatureEnabledResponse

**Description**

The value of isFeaturedEnabled wrapped in a FeatureEnabledResponse.

### `setAllFeaturesEnabled()` → `void`

Sets the value of allFeaturesEnabled to true.

### `setAllFeaturesNotEnabled()` → `void`

Sets the value of allFeaturesEnabled to false.

### `setIsFeatureEnabled(String featureName)` → `void`

Sets the passed in featureName as enabled.

#### Parameters
|Param|Description|
|-----|-----------|
|`featureName` |  The name of the feature to set as enabled. |

### `setIsFeatureNotEnabled(String featureName)` → `void`

Sets the passed in featureName as not enabled.

#### Parameters
|Param|Description|
|-----|-----------|
|`featureName` |  The name of the feature to set as not enabled. |

---
