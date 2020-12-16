# MembershipBundleDisplayFactory class

Used to build MembershipBundleDisplay instances based on a list of components. Only MembershipBundleComponents with a Display Class set will be used for constructing.

---
## Properties

### `Instance` → `MembershipBundleDisplayFactory`

Gets the MembershipBundleDisplayFactory instance.

---
## Methods
### `construct(List<BundleComponent> components)` → `List<MembershipBundleDisplay>`

Constructs a list of MembershipBundleDisplay from a list of BundleComponent instances.

#### Parameters
|Param|Description|
|-----|-----------|
|`components` |  The BundleComponent to group and construct MembershipBundleDisplays from. |

#### Return

**Type**

List<MembershipBundleDisplay>

**Description**

List of MembershipBundleDisplay based on the Display Class of the BundleComponents.

---
