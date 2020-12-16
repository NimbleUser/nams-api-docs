# MembershipBundleDisplay class

Used to control the display for selecting membership bundle components.

---
## Enums
### DisplayType


The UI display type.

---
## Methods
### `construct(List<BundleComponent> components)` → `void`

Constructs NU.BundleComponent instances for display.

#### Parameters
|Param|Description|
|-----|-----------|
|`components` |  NU.BundleComponent instances to display. |

### `getDisplayType()` → `DisplayType`

Gets the type of UI to use for display - checkbox or radio buttons.

#### Return

**Type**

DisplayType

**Description**

The DisplayType enum to use for display.

### `getGroupedComponents()` → `List<BundleComponent>>`

Gets the grouped components for display. The key is used as the title label.

#### Return

**Type**

List<BundleComponent>>

**Description**

Map of NU.BundleComponent instances by their group heading.

### `handleComponentSelected(String selectedIdentifier)` → `void`

Handles when a component is selected in the UI.

#### Parameters
|Param|Description|
|-----|-----------|
|`selectedIdentifier` |  The identifier of the selected component. |

### `validate()` → `OperationResult`

Validates the bundle when the page is submitted.

#### Return

**Type**

OperationResult

**Description**

A successful operation result if valid.

---
