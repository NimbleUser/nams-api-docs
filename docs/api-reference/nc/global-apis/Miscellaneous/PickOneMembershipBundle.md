# PickOneMembershipBundle class

NU.MembershipBundleDisplay implementation requiring the user to select exactly one option.

---
## Methods
### `construct(List<znu.BundleComponent> components)` → `void`

Constructs a list of NU.BundleComponent instances for display.

#### Parameters
|Param|Description|
|-----|-----------|
|`components` |  NU.BundleComponent instances to display. |

### `getDisplayType()` → `znu.MembershipBundleDisplay.DisplayType`

Gets the type of UI to use for display - checkbox or radio buttons.

#### Return

**Type**

znu.MembershipBundleDisplay.DisplayType

**Description**

The DisplayType enum to use for display.

### `getGroupedComponents()` → `List<znu.BundleComponent>>`

Gets the grouped components for display. The key is used as the title label.

#### Return

**Type**

List<znu.BundleComponent>>

**Description**

Map of NU.MembershipBundleComponent instances by their group heading.

### `handleComponentSelected(String selectedIdentifier)` → `void`

Handles when a component is selected in the UI.

#### Parameters
|Param|Description|
|-----|-----------|
|`selectedIdentifier` |  The identifier of the selected component. |

### `validate()` → `znu.OperationResult`

Validates that exactly 1 component is selected.

#### Return

**Type**

znu.OperationResult

**Description**

A successful operation result if valid.

---
