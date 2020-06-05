# Recipes

<!-- panels:start -->

<!-- div:title-panel -->

## Process a payment

Create a payment intent, populate the payment details, process, and persist it. The `PaymentsApi` draws a clear line between payment processing and applying. This recipe will just cover creating, processing, and persisting payments.

<!-- div:title-panel -->

### 1. Create the payment intent

<!-- div:left-panel -->

First you are going to need to create the `PaymentBase` that is the intent for payment. You can also set the necessary details in order to process it - the amount, date, and source.

<!-- div:right-panel -->

[code](../samples/classes/PaymentsApiDocsSamples.cls ':include :type=code apex :fragment=process-a-payment-1')

<!-- div:title-panel -->

### 2. Create and add the details

<!-- div:left-panel -->

Next you will need to create the details for the payment being made. The `PaymentDetailsBase` class represents the details of the payment, and is added to the payment using the `setPaymentDetails` method.

You will also want to the set the Account that is making the payment. To do that you can use the `setPayerId` method.

Usually this information would be collected via a form, but for this recipe to keep things simple `CheckPaymentDetails` will be used.

<!-- div:right-panel -->

[code](../samples/classes/PaymentsApiDocsSamples.cls ':include :type=code apex :fragment=process-a-payment-2')

<!-- div:title-panel -->

### 3. Process the payment

<!-- div:left-panel -->

Now that you have your payment with details, you can process it.

Any errors that occur during processing will throw a `PaymentsApiException` and include the `PaymentBase` attached to the exception. This includes errors from the payment gateway. Use this to catch and handle errors.

<!-- div:right-panel -->

[code](../samples/classes/PaymentsApiDocsSamples.cls ':include :type=code apex :fragment=process-a-payment-3')

<!-- div:title-panel -->

### 4. Persist the payment

<!-- div:left-panel -->

It is really up to you, the implementor, to decide when to persist payments. It may be a business requirement to persist all attempted payments, even if they error during processing.

To persist payments, you can use the `persistenceService` within the `PaymentsApi`. This will register the records and then commit them to the database. When persisting payments, and sensitive information will be scrubbed (credit card numbers, for example).

<!-- div:right-panel -->

[code](../samples/classes/PaymentsApiDocsSamples.cls ':include :type=code apex :fragment=process-a-payment-4')

!> It is important to note that when you process payments, they are not persisted automatically.

<!-- div:title-panel -->

## Apply a payment

Create payment lines and apply them to order items. Using pre-built strategies, or manually creating `PaymentLineBase` objects, you can apply payments to orders.

> This recipe continues from the [Process a payment](#process-a-payment) recipe.

<!-- div:title-panel -->

### 1. Build the payment lines

<!-- div:left-panel -->

Applying payment can be broken down into the following parts:

1. Creating payment lines that map a payment amount to an order item
2. Persisting the `PaymentLineBase` objects to the database
3. Generating transactions

You can either manually create payment lines if you want to specify the mapping manually, or you can use a `PaymentApplierStrategyBase` implementation.

The `OrderItemPaymentApplier` can be used to generate payment lines based on `OrderItem` instances or a set of `Id`'s. Payment will be applied in order of the `OrderItem.PaymentSortOrder`, giving the flexibility to specify the order.

<!-- div:right-panel -->

<!-- tabs:start -->

### **OrderItemPaymentApplier**

[code](../samples/classes/PaymentsApiDocsSamples.cls ':include :type=code apex :fragment=apply-a-payment-1a')

### **Manual Line Creation**

[code](../samples/classes/PaymentsApiDocsSamples.cls ':include :type=code apex :fragment=apply-a-payment-1b')

<!-- tabs:end -->

<!-- div:title-panel -->

### 2. Apply the payment

<!-- div:left-panel -->

When you call the `apply` method, this is when the lines are persisted to the database, and then transactions are generated.

If there are any errors during this process, a `PaymentsApiException` will be raised with the associated `PaymentBase` that caused the error. If a no manual lines are specified, or a strategy generates no lines, an exception will be raised because lines are expected to be applied.

<!-- div:right-panel -->

<!-- tabs:start -->

### **Strategy**

[code](../samples/classes/PaymentsApiDocsSamples.cls ':include :type=code apex :fragment=apply-a-payment-2a')

### **Manual**

[code](../samples/classes/PaymentsApiDocsSamples.cls ':include :type=code apex :fragment=apply-a-payment-2b')

<!-- tabs:end -->

## Refund a payment

Refunding a payment consists of three individual steps:
* Refund an existing payment
* Generate a refund payment that reverts the existing payment
* Apply and persist the changes

Each one of these steps are performed individually to give the flexibility of deciding when, how, and even
if a step should be performed.

<!-- div:title-panel -->

### 1. Refund a payment

<!-- div:left-panel -->

This step consists of executing whatever is necessary to mark a payment as refunded. In the case
of a credit card payment, for example, this includes making an API call to the Payment Gateway to
mark the payment as refunded.

!> Be aware this might mean the refunding step won't do anything for certain types of simple payments like cash of check. It is still recommended going through this step no mater the type of payment being refunded, since there is some validation done behind the scenes even for simple payment types.

To refund a payment the only thing that you need is the Id of the `Payment` record you want to refund.

<!-- div:right-panel -->

[code](../samples/classes/PaymentsApiDocsSamples.cls ':include :type=code apex :fragment=refund-a-payment')

<!-- div:title-panel -->

### 2. Parse responses

<!-- div:left-panel -->

Once you have refunded the payment, parse the responses to get the list of `PaymentBase` for which refund was successful.

<!-- div:right-panel -->

[code](../samples/classes/PaymentsApiDocsSamples.cls ':include :type=code apex :fragment=refund-a-payment-parse-response')

<!-- div:title-panel -->

### 3. Generate refund payments

<!-- div:left-panel -->

Now that you have the payments that were successfully refunded, let's create refund payments for them.

A refund payment is a new `PaymentBase` that represents the reversed version of the original payment. It has
the same information as the original, but with the opposite amount. This payment will eventually be tied to the same Order Item
as the original, and will have its own transactions so that the accounting data on the order is correctly represented.

<!-- div:right-panel -->

[code](../samples/classes/PaymentsApiDocsSamples.cls ':include :type=code apex :fragment=refund-a-payment-generate-refunds')

<!-- div:title-panel -->

### 4. Apply and persist the changes

<!-- div:left-panel -->

The last step is making sure the information is persisted on the database. For this we need to persist the newly generated
refund payments, but also make sure that transactions for the refunds are created.

Luckily we don't have to worry about the details, instead we can apply our refund payments and everything will be taken care of for us.

<!-- div:right-panel -->

[code](../samples/classes/PaymentsApiDocsSamples.cls ':include :type=code apex :fragment=refund-a-payment-apply')

<!-- div:title-panel -->

<!-- panels:end -->