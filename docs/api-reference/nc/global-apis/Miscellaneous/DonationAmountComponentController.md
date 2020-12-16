# DonationAmountComponentController class

Used for controlling DonationAmount.component and specifying a donation amount.

---
## Methods
### `doHandleMessage(Message message)` → `void`

Handles messages sent by other components. On receiving the the SubmitOrderMessage

#### Parameters
|Param|Description|
|-----|-----------|
|`message` |  The message to handle, containing information on the event that occurred. |

### `getProductsById()` → `znu__Product__c>`

Retrieves a map of all products by Id from the specified data source. Used for displaying details in the view since znu.OrderLine objects do not contain the full product record.

#### Return

**Type**

znu__Product__c>

**Description**

A Map<Id, znu__Product__c> of products by Id.

### `getSortedSuggestedDonationAmounts(znu__Product__c product, List<Decimal> suggestedDonationAmounts)` → `List<Decimal>`

Sorts the suggested donation amounts for a given product.

#### Parameters
|Param|Description|
|-----|-----------|
|`product` |  A znu__Product__c that has suggested donation amounts for sorting. |
|`suggestedDonationAmounts` |  List<Decimal> of all possible suggested donation amounts. |

#### Return

**Type**

List<Decimal>

**Description**

A List<Decimal> of sorted suggested donation amounts.

### `getSuggestedDonationAmountsByProductId()` → `List<Decimal>>`

Retrieves a map of suggested donation amounts by product Id. The suggested amounts are represented by a list of decimals on the order product suggested picklist.

#### Return

**Type**

List<Decimal>>

**Description**

A Map<Id, List<Decimal>> of suggested donation amounts.

### `initialize()` → `void`

Initialization handling. Subscribes the to the submit message in order to broadcast the order lines to any subscribers.

#### Return

**Type**

void

**Description**

A Map<Id, Boolean> specifying whether "Other Amount" has been chosen for a given product.

### `validate()` → `OperationResult`

Validates the chosen donations, ensuring that none of them have a negative unit price and at least one of them has a positive amount.

#### Return

**Type**

OperationResult

**Description**

An OperationResult instance indicating the success, or failure of validation.

---
