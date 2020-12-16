# OptionalDonationComponentController2 class

Replaces the functionality of OptionalDonationComponentController to base it off of a generic data source model to source the bundle, as well as sending Message instances based upon UI actions rather than operating simply off of a Cart.

---
## Methods
### `getBundleFromDataSource()` → `znu.Bundle`

Gets the znu.Bundle configured on this card's data source.

#### Return

**Type**

znu.Bundle

**Description**

znu.Bundle containing optional donation products, or null if none are found.

### `getDonationProducts()` → `List<znu.BundleComponent>`

Gets a list of donation products to display in the component.

#### Return

**Type**

List<znu.BundleComponent>

**Description**

A list of donation products to display in the component.

### `notifySubscribers()` → `void`

Notifies all subscribers to the OptionalDonationChangedMessage that a bundle component was selected, deselected, or one of its attributes changed.

### `productAttributeUpdated()` → `void`

Ensures the Display is updated when product price is changed. If a negative price was specified, the price is reverted to 0.

### `selectProduct()` → `void`

Marks the selected bundle component as selected, sets IsProductSelected to true and broadcasts a message containing selected bundle components. If a negative price was specified, the price is reverted to 0.

### `unselectProducts()` → `void`

Unchecks all other products and sets IsProductSelected to false.

---
