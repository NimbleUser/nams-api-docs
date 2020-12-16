# MockFeatureToggleService class

A mock implementation of IFeatureToggle for use in unit testing.

---
## Properties

### `Instance` → `MockFeatureToggleService`

A singleton to allow external access for setting whether or not the mock class should return true or false.

---
## Methods
### `setIsFeatureEnabled()` → `void`

Sets the value of isFeatureEnabled to true.

### `setIsFeatureNotEnabled()` → `void`

Sets the value of isFeatureEnabled to false.

#### Parameters
|Param|Description|
|-----|-----------|
|`featureName` |  The name of the feature to set as enabled. |
|`featureName` |  The name of the feature to set as disabled. |

---
