# EditScheduledPaymentComponentController class

Extends on the functionality of SchedulePaymentComponentController allowing the component to always be present in the page.

---
## Methods
### `getShouldRender()` → `Boolean`

Determines if the card should render or not. The card should render if the Scheduled Payment option was selected by the user as the method of payment and they have stored payment methods.

#### Return

**Type**

Boolean

**Description**

Always true.

### `getShouldRenderLightningComponent()` → `Boolean`

Determines if the lightning component within the card should render. In this case, we always do.

#### Return

**Type**

Boolean

**Description**

Always true.

---
