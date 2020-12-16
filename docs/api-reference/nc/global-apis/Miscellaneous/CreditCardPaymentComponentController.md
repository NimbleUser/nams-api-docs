# CreditCardPaymentComponentController class

Controls CreditCardPayment.component

---
## Methods
### `doHandleMessage(Message message)` → `void`

Handles messages sent by other components. On receiving the ItemLineUpdatedMessage we should: 1. Clear the results for this card's datasource, forcing us to requery for getRecords(). On receiving the PaymentOptionSelectedMessage we compare the parameter with the CreditCardPaymentOption's name to see if we should render the card.

#### Parameters
|Param|Description|
|-----|-----------|
|`message` |  The message to handle, containing information on the event that occurred. |

### `getCart()` → `znu__Cart__c`

Returns the znu__Cart__c record returned by the DataSource configured for this card.

#### Return

**Type**

znu__Cart__c

**Description**

znu__Cart__c record.

### `getShouldRender()` → `Boolean`

This method determines whether or not this component should render on the page.

#### Return

**Type**

Boolean

**Description**

False if the super class shouldn't render, if the items in the cart have no balance,

### `getShouldShowPayment()` → `Boolean`

This method determines whether or not this component should render the payment portion on the page.

#### Return

**Type**

Boolean

**Description**

True if payment should show, else false.

### `getShouldShowSavePayment()` → `Boolean`

This method determines whether or not this component should render the save payments checkbox on the page.

#### Return

**Type**

Boolean

**Description**

Always returns true.

### `initialize()` → `void`

Initialization handling. Subscribes the card to the ItemLineUpdatedMessage and PaymentOptionSelectedMessage and checks for the refund status.

### `submit(UnitOfWork unitOfWork)` → `void`

Handles refunds and payments.

#### Parameters
|Param|Description|
|-----|-----------|
|`unitOfWork` |  A unit of work instance. |

#### Return

**Type**

void

**Description**

Id of the entity for the credit card payment component.

---
