# OrderItem class

A class representing an order item. This class is used to insert order data into the database.

---
## Properties

### `BillMe` → `Boolean`

Whether or not this order item is marked for bill me (invoicing).

### `CustomerId` → `Id`

The Id of the account who will receive the goods/services.

### `EntityId` → `Id`

The Id of the entity this order item is for.

### `PaymentAmount` → `Decimal`

The largest amount that this OrderItem accepts as payment. If no PaymentAmount was specified this OrderItem's balance is be returned. This property is only taken into account when dealing with partial payments.

### `PaymentSortOrder` → `Integer`

Defines the order in which this OrderItem should be paid. The lesser this number is, the sooner this OrderItem's payment should be processed. Use when applying partial payment in cases where there might not be enough balance to convert the full PaymentAmount for this item.

### `PriceClassId` → `Id`

The Id of the price class used to determine the prices of the products within this item.

### `RecordId` → `Id`

The Id of an existing order item record related to this wrapper.

### `RecordTypeId` → `Id`

The Id of the Order Item record type this instance represents.

### `Schedules` → `List<Schedule>`

The List of Schedules for the related orderItem.

### `Source` → `String`

The source where this order item originated from.

---
## Methods
### `cancel()` → `void`

Calls the cancel() method on each OrderLine in this OrderItem and notifies observers of the change.

### `getBalance()` → `Decimal`

Calculates the balance for this order item by substracting payments from the grand total.

#### Return

**Type**

Decimal

**Description**

A decimal representing the balance.

### `getDiscounts()` → `Decimal`

Gets the total amount of discounts on this OrderItem by adding up the OrderLines for this item that represent a discount. Because OrderLines that represent a discount have a negative Total Price, the value returned by this method is a negative number.

#### Return

**Type**

Decimal

**Description**

Total calculated discount.

### `getGrandTotal()` → `Decimal`

Gets the Grand Total amount for this OrderItem by adding together the subtotal, discounts, tax and shipping.

#### Return

**Type**

Decimal

**Description**

Calculated Grand Total.

### `getOrderLines()` → `List<OrderLine>`

Gets the order lines that are contained within this order item.

#### Return

**Type**

List<OrderLine>

**Description**

A list of order lines.

### `getRecurringConfiguration()` → `RecurringItem`

Returns the RecurringItem instance that represents how this OrderItem is configured to recur.

#### Return

**Type**

RecurringItem

**Description**

The RecurringItem instance that represents how this OrderItem is configured to recur. Null if

### `getSubTotal()` → `Decimal`

Calculates the subtotal for this item by adding up the total prices of every order line within this item. The subtotal excludes shipping costs, tax, and discounts.

#### Return

**Type**

Decimal

**Description**

A decimal representing the subtotal.

### `getTotalPayment()` → `Decimal`

Gets the total payment that has been applied to this OrderItem.

#### Return

**Type**

Decimal

**Description**

Total payment that has been applied to this OrderItem. Always 0 unless a subclass

### `getTotalShipping()` → `Decimal`

Gets the total shipping for this OrderItem.

#### Return

**Type**

Decimal

**Description**

Total shipping for this OrderItem. Always 0 unless a subclass says otherwise.

### `getTotalTax()` → `Decimal`

Gets the total tax for this OrderItem.

#### Return

**Type**

Decimal

**Description**

Total tax for this OrderItem. Always 0 unless a subclass says otherwise.

### `isActive()` → `Boolean`

Whether this OrderItem is active or not. The OrderItem is active if all children OrderLines are active.

#### Return

**Type**

Boolean

**Description**

True if this OrderItem is active, false otherwise.

### `isRecurring()` → `Boolean`

Whether this OrderItem is set to recur or not.

#### Return

**Type**

Boolean

**Description**

Boolean indicating whether this OrderItem is set to recur or not.

### `setAsRecurring(RecurringItem recurringConfiguration)` → `void`

Sets this OrderItem to be recurring, which means that Recurring Schedules will be generated at the time of processing.

#### Parameters
|Param|Description|
|-----|-----------|
|`recurringConfiguration` |  The RecurringItem whose configuration will be used to determine how this item |

### `unsetAsRecurring()` → `void`

Sets this OrderItem to not recur.

---
