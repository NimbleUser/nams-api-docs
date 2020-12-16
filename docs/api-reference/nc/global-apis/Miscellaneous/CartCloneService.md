# CartCloneService class

CartCloneService will take in a Cart and clone it into a new Cart. This is global to allow for accessibility inside of the Programs package for Cash Billing.

---
## Properties

### `Instance` → `CartCloneService`

Gets an instance of CartCloneService. @return CartCloneService instance.

---
## Methods
### `cloneBillingHistoryCartItems(Set<Id> billingHistoryCartItemIds, Id cloneCartId)` → `List<znu__CartItem__c>`

cloneBillingHistoryCarts This will accept a set of Cart Items and convert/clone them and their related Cart Item Lines into the defined Cart.

#### Parameters
|Param|Description|
|-----|-----------|
|`billingHistoryCartItemIds` |  A set of Billing History Cart Item Ids that will be cloned into the defined |
|`cloneCartId` |  A Cart Id that the billing history cart items are to be cloned into. |

#### Return

**Type**

List<znu__CartItem__c>

**Description**

New cart items that are inserted into the given cart.

---
