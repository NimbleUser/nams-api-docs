# Order API Recipes

## Background

This document covers a full array of copy and paste Order API recipes for you to perform any supported interaction.

!>In order to utilize any of these examples, you will need to configure some **NU__Entity__c** and **NU__PaymentGateway__c** records, and link those records together via an **NU__EntityPaymentGateway__c** record. This API functionality **requires** these records in order to operate.

!> Some examples require pilot features to be enabled, such as Stored Payments or eCheck. Consult the non-technical documentation for detailed enablement information

## Stored Payments / eCheck Operations

### Store a credit card payment method

The code example below serves as a demo for storing a credit card securely in the configured payment gateway for an account.

```apex
Id accountId = '00141000008wvFhAAI';
Id entityId = 'a0Z410000025s6bEAA';

// This object is global and is needed for the API request object.
NU.CreditCardDetail testPaymentInformation = new NY.CreditCardDetail();
testPaymentInformation.Name = 'Craig Ceremuga';
testPaymentInformation.CardNumber = '4111111111111111';
testPaymentInformation.SecurityCode = '125';
testPaymentInformation.ExpirationMonth = '12';
testPaymentInformation.ExpirationYear = '2020';
testPaymentInformation.Address = new Address();
testPaymentInformation.Address.Street = '128 Somewhere Pl';
testPaymentInformation.Address.City = 'Albany';
testPaymentInformation.Address.State = 'New York';
testPaymentInformation.Address.PostalCode = '12208';
testPaymentInformation.Address.Country = 'United States';

// Build the request and store the credit card.
NU.AddPaymentProfileRequest testRequest = new NU.AddPaymentProfileRequest(
        accountId, entityId, testPaymentInformation, true);
NU.PaymentStorageResponse testResponse = 
        NU.PaymentStorageService.Instance.addPaymentProfile(testRequest);

// You may process the response how you see fit.
```

### Store a bank account payment method

The code example below serves as a demo for storing a bank account securely in the configured payment gateway for an account.

```apex
Id accountId = '00141000008wvFhAAI';
Id entityId = 'a0Z410000025s6bEAA';

// Address.
NU.Address demoAddress = new NU.Address();
demoAddress.Street = '123 Somewhere Pl.';
demoAddress.City = 'Albany';
demoAddress.State = 'NY';
demoAddress.PostalCode = '12208';
demoAddress.Country = 'United States';

// Bank account info.
NU.BankAccountDetail detail = new NU.BankAccountDetail();
detail.RoutingNumber = '011000015';
detail.AccountNumber = '000111222333';
detail.AccountType = NU.BankAccountDetail.AccountTypeOption.CHECKING;
detail.CheckType = NU.BankAccountDetail.CheckTypeOption.WEB;
detail.Name = 'Craig Demoguy';
detail.BillingAddress = demoAddress;

// Build a request and store the bank account.
NU.AddPaymentProfileRequest testRequest = new NU.AddPaymentProfileRequest(
        accountId, entityId, detail, true);
NU.PaymentStorageResponse testResponse = 
        NU.PaymentStorageService.Instance.addPaymentProfile(testRequest);

// You may process the response how you see fit.
```

### Store a payment method for an account that already has some

You can follow the bank account example above, switching out **NU.CreditCardDetail** with **NU.BankAccountDetail** as needed if you want to store a new bank account for an account which is already storing other payment profiles. The endpoint remains the same.

```apex
Id accountId = '00141000008wvFhAAI';
Id entityId = 'a0Z410000025s6bEAA';
Id externalProfileId = 'a1d41000000JsL3AAK';
String externalProfileExternalId = '1500999065';

// This object is global and is needed for the API request object.
NU.CreditCardDetail testPaymentInformation = new NU.CreditCardDetail();
testPaymentInformation.Name = 'Craig Ceremuga';
testPaymentInformation.CardNumber = '5555555555554444';
testPaymentInformation.SecurityCode = '654';
testPaymentInformation.ExpirationMonth = '12';
testPaymentInformation.ExpirationYear = '2020';
testPaymentInformation.Address = new Address();
testPaymentInformation.Address.Street = '128 Somewhere Pl';
testPaymentInformation.Address.City = 'Albany';
testPaymentInformation.Address.State = 'New York';
testPaymentInformation.Address.PostalCode = '12208';
testPaymentInformation.Address.Country = 'United States';

// Build the request and store the credit card.
NU.AddPaymentProfileRequest testRequest = new NU.AddPaymentProfileRequest(
        accountId, externalProfileId, externalProfileExternalId, entityId, testPaymentInformation, false);
NU.PaymentStorageResponse testResponse = 
        NU.PaymentStorageService.Instance.addPaymentProfile(testRequest);

// You may process the response how you see fit.
```

### Update a stored payment method

Swap **NU.CreditCardDetail** with **NU.BankAccountDetail** if you're intending to update a bank account and not a credit card. The endpoint remains the same.

```apex
Id entityId = 'a0Z410000025s6bEAA';
Id externalPaymentProfileId = 'a1c41000000BBooAAG';
String externalPaymentProfileExternalId = '1500557322';

// This object is global and is needed for the API request object.
NU.CreditCardDetail testPaymentInformation = new NU.CreditCardDetail();
testPaymentInformation.Name = 'Craig Ceremuga';
testPaymentInformation.CardNumber = '5555555555554444';
testPaymentInformation.SecurityCode = '654';
testPaymentInformation.ExpirationMonth = '08';
testPaymentInformation.ExpirationYear = '2021';
testPaymentInformation.Address = new Address();
testPaymentInformation.Address.Street = '128 Somewhere Pl';
testPaymentInformation.Address.City = 'Albany';
testPaymentInformation.Address.State = 'New York';
testPaymentInformation.Address.PostalCode = '12208';
testPaymentInformation.Address.Country = 'United States';

// Build the request and update the payment profile.
NU.UpdatePaymentProfileRequest testRequest = new NU.UpdatePaymentProfileRequest(
        externalPaymentProfileId, externalPaymentProfileExternalId, entityId, testPaymentInformation, true);
NU.PaymentStorageResponse testResponse =
        NU.PaymentStorageService.Instance.updatePaymentProfile(testRequest);

// You may process the response how you see fit.
```

### Delete a stored payment method

When a payment profile is deleted, it is deleted in both the configured payment gateway, as well as the SObject record in Nimble AMS.

```apex
Id entityId = 'a0Z410000025s6bEAA';
Id externalPaymentProfileId = 'a1c41000000BBoZAAW';
String externalPaymentProfileExternalId = '1500557242';

// Build the request and delete the profile.
NU.DeletePaymentProfileRequest testRequest = new NU.DeletePaymentProfileRequest(
        externalPaymentProfileId, externalPaymentProfileExternalId, entityId);
NU.PaymentStorageResponse testResponse =
        NU.PaymentStorageService.Instance.deletePaymentProfile(testRequest);

// You may process the response how you see fit.
```

## Payment Gateway Authorization, Order Submission, Payment Application

### Authorize payment via stored payment profile (credit card and eCheck).

This example shows to apply payment only (to the configured gateway) and receive back a payment wrapper. From there it's up to you. With this example, no additional data is stored in Nimble AMS as a record.

```apex
Id accountId = '0014100000A6NpYAAV';
Id entityId = 'a0Z41000002zhFHEAY';
String externalProfileExternalId = '1807478535';
String externalPaymentProfileExternalId = '1802495313';
Decimal demoAmount = 150.00;

// This object is global and is needed for the API request object.
NU.StoredPaymentDetail demoStoredPaymentDetail = new NU.StoredPaymentDetail();
demoStoredPaymentDetail.ExternalPaymentProfileExternalId = externalPaymentProfileExternalId;
demoStoredPaymentDetail.ExternalProfileExternalId = externalProfileExternalId;

// Build the request and authorize the payment.
NU.PaymentAuthorizationService.Request demoRequest = new NU.PaymentAuthorizationService.Request(
        accountId, entityId, demoAmount, demoStoredPaymentDetail);
NU.PaymentAuthorizationService.Response demoResponse =
        NU.PaymentAuthorizationService.Instance.authorize(demoRequest);

// You may process the response how you see fit.
```

### Authorize a credit card payment and apply to an order

Here's a simple example for first, authorizing a credit card charge, then applying that payment to an existing order. This will also insert payment lines, transactions!

```apex
Id accountId = '00146000004OiAuAAK';
Id entityId = 'a0h46000000UQv2AAG';
Decimal paymentAmount = 30.0;
Id orderId = 'a1446000000YW0vAAG';

// Create a billing address for your credit card.
NU.Address billingAddress = new NU.Address();
billingAddress.Street = '123 Somewhere St.';
billingAddress.City = 'Albany';
billingAddress.State = 'NY';
billingAddress.PostalCode = '12208';
billingAddress.Country = 'United States';

// Fill in the details about your credit card.
NU.CreditCardDetail paymentCard = new NU.CreditCardDetail();
paymentCard.Name = 'Craig Tester';
paymentCard.CardNumber = '4111111111111111';
paymentCard.SecurityCode = '123';
paymentCard.ExpirationMonth = '12';
paymentCard.ExpirationYear = '2020';
paymentCard.Address = billingAddress;

// Authorize the credit card payment.
NU.PaymentAuthorizationService.Request paymentAuthorizationRequest =
        new NU.PaymentAuthorizationService.Request(accountId, entityId, paymentAmount, paymentCard);
NU.PaymentAuthorizationService.Response paymentAuthorizationResponse =
        NU.PaymentAuthorizationService.Instance.authorize(paymentAuthorizationRequest);

// Apply the payment to an existing order.
NU.Payment orderPayment = paymentAuthorizationResponse.Payment;
NU.OrderProcessorRequest processorRequest =
        new NU.OrderProcessorRequest(new Set<Id> { orderId }, orderPayment);
NU.OrderProcessorResponse processorResponse =
        NU.OrderAPI.Instance.processOrders(processorRequest);

// You may process the response how you see fit.
```

### Apply a check payment to an order.

Here's a simple example for applying a payment to an existing order. This will also insert payment lines, transactions! You can substitute CheckPayment for CashPayment as both are supported at this time.

```apex
Id orderId = 'a1446000000YR7GAAW';

NU.CheckPayment orderPayment = new NU.CheckPayment();
orderPayment.PaymentDate = Date.today();
orderPayment.PayerId = '00146000004OiAuAAK';
orderPayment.EntityPaymentMethodId = 'a0g46000000MlTGAA0';
orderPayment.GLAccountId = 'a0o460000009sd0AAA';
orderPayment.Amount = 30.0;
orderPayment.Source = 'API';
orderPayment.Note = 'API check payment example.';
orderPayment.CheckNumber = '123456';

// As noted, this takes a set of order Ids, so you can apply a single payment // across multiple orders.
NU.OrderProcessorRequest processorRequest =
        new NU.OrderProcessorRequest(new Set<Id> { orderId }, orderPayment);

// If this is specified and set to true, the API will partially apply the payment if the // total payment is less than the balance of all specified orders.
processorRequest.AllowPartialPayment = true;

NU.OrderProcessorResponse processorResponse =
        NU.OrderAPI.Instance.processOrders(processorRequest);

// You may process the response how you see fit.
```

### Specify the payment amount that each Order Item will receive.

In this example we are generating a brand new Order from scratch, but you could do the same thing with an existing Order__c record with multiple OrderItem__c records already existing in the database by following the Order generation process exemplified under the Order Adjustment Examples.

```apex
Id entityId = 'a2F46000000HD3xEAG';
Id productOneId = 'a1F46000000HD3xEAG';
Id productTwoId = 'a1F46000000HD3xEAH';
Id accountOneId = '00146000003Kjy4AAC';
Id accountTwoId = '00146000003Kjy4AAD';

NU.OrderRequest newOrderRequest = new NU.OrderRequest(entityId, accountOneId);
NU.OrderGeneratorRequest generatorRequest = new NU.OrderGeneratorRequest(new List<NU.OrderRequest> { newOrderRequest }); 
List<NU.Order> generatedOrders = NU.OrderAPI.Instance.generateOrders(generatorRequest).Orders;

NU.Order generatedOrder = generatedOrders[0];

// Generate order line.
NU.OrderLineGeneratorRequest lineGeneratorRequest = 
        new NU.OrderLineGeneratorRequest(accountOneId, DateTime.now());
lineGeneratorRequest.ProductPricingInfos.add(NU.ProductPricingInfo.newInstance(productOneId , 1));
NU.OrderLineGeneratorResponse lineGeneratorResponse = 
        NU.OrderAPI.Instance.generateOrderLines(lineGeneratorRequest);

NU.OrderLine generatedLine = lineGeneratorResponse.OrderLines[0];

NU.Merchandise exampleMerchandise = new NU.Merchandise();
exampleMerchandise.ProductId = productId;
exampleMerchandise.AccountId = accountId;

generatedLine.HistoryDatas = new List<NU.HistoryData> { exampleMerchandise };

generatedOrder.addLines(new List<OrderLine> { testLine });

// Generate an additional Order Line. Because we are generating the line for a different customer, a new Order Item will be generated.
lineGeneratorRequest = new NU.OrderLineGeneratorRequest(accountTwoId, DateTime.now());
lineGeneratorRequest.ProductPricingInfos.add(NU.ProductPricingInfo.newInstance(productTwoId , 1));
lineGeneratorResponse = NU.OrderAPI.Instance.generateOrderLines(lineGeneratorRequest);

generatedLine = lineGeneratorResponse.OrderLines[0];

exampleMerchandise = new NU.Merchandise();
exampleMerchandise.ProductId = productId;
exampleMerchandise.AccountId = accountId;

generatedLine.HistoryDatas = new List<NU.HistoryData> { exampleMerchandise };

generatedOrder.addLines(new List<NU.OrderLine> { testLine });

// Now we specify how much we want paid on each OrderItem
List<NU.OrderItem> orderItems = generatedOrder.getOrderItems();

orderItems[0].PaymentAmount = 50;
orderItems[1].PaymentAmount = 20;

NU.CashPayment payment = new NU.CashPayment();
payment.PaymentDate = Date.today();
payment.PayerId = accountId;
payment.EntityPaymentMethodId = 'a0g46000000MlTGAA0';
payment.GLAccountId = 'a0o460000009sd0AAA';
payment.Amount = 70;
payment.Source = 'TEST';

NU.OrderProcessorRequest processorRequest = new NU.OrderProcessorRequest(new List<NU.Order> { orderToUpdate }, payment);
// It is importatnt to remember to turn on the AllowPartialPayment flag.
processorRequest.AllowPartialPayment = true;

NU.OrderProcessorResponse processorResponse = NU.OrderAPI.Instance.processOrders(processorRequest);
```

### Specify the order in which OrderItems are processed

```apex
...
// Get an Order with multiple OrderItems by following the "I want to specify the exact payment amount that each Order Item will receive" example or by using an Adjustment Order.
...

// Now we specify the order in which we want the Order Items processed.
List<NU.OrderItem> orderItems = generatedOrder.getOrderItems();
orderItems[0].PaymentSortOrder = 2;
orderItems[1].PaymentSortOrder = 0;

// Note: If no sort order is specified the payments will be applied in the same order in which Orders are passed into the NU.OrderProcessorRequest.
// Note: If the sort order is specified for some items but not others, the specified items will always take precedence over the items with no order.

NU.CashPayment payment = new NU.CashPayment();
payment.PaymentDate = Date.today();
payment.PayerId = accountId;
payment.EntityPaymentMethodId = 'a0g46000000MlTGAA0';
payment.GLAccountId = 'a0o460000009sd0AAA';
payment.Amount = 70;
payment.Source = 'TEST';

NU.OrderProcessorRequest processorRequest = new NU.OrderProcessorRequest(new List<NU.Order> { orderToUpdate }, payment);
// The AllowedPartialPayment should be on when specifying the sort order because when full payment is required the full order's balance is taken into account to make sure it can be paid
// and the individual items are not looked at.
processorRequest.AllowPartialPayment = true;

NU.OrderProcessorResponse processorResponse = NU.OrderAPI.Instance.processOrders(processorRequest);
```

### Find out whether an order process request succeeded or failed.

This example shows you how to react to a success or failure during order submission. Please keep in mind the part to establish your request has been omitted for brevity. See an example above for info on how to build this request.

```apex
// processorRequest is irrelevant to the example, // see above examples for info about building requests.

NU.OrderProcessorResponse processorResponse =
        NU.OrderAPI.Instance.processOrders(processorRequest);

// Add a success message to the page if succeeded, if failed, log the real error, add friendly error.if (NU.OperationResult.isSuccessful(processorResponse.Result)) {
    // Keep in mind the result above indicates the success or failure of the entire operation.// You might have multiple orders though, so in the case of that you'd want to get the Ids// in a loop to output cleanly. This example assumes there was a SINGLE order processed.ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.INFO, 
		'Your order has been successfully submitted. Your order Id is #' + processorResponse.Orders[0].RecordId));
} else {
	ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR, 
		'We are terribly sorry, but something has gone wrong while trying to process this order.');
	NU.Logger.log(NU.OperationResult.getErrorStringFromOperationResult(processorResponse.Result), 
		'nameOfCallingMethodHere', 'NameOfCallingClassHere', NU.Logger.Level.ERROR);
	NU.Logger.flush();
}
```

### Apply payment and tie the transaction records to a specific batch.

Here's a sample for applying payment to an order and specifying the Id of a batch to tie the transactions to. Consider this an extension of previous examples and as such, some code has been omitted for brevity.

```apex
Id orderId = 'a1446000000YR7GAAW';
NU.CheckPayment orderPayment = getCheckPayment();

// As noted, this takes a set of order Ids, so you can apply a single payment // across multiple orders.
NU.OrderProcessorRequest processorRequest =
        new NU.OrderProcessorRequest(new Set<Id> { orderId }, orderPayment);

// Batch Id is optional, use this if you want to manually specify a batch Id.// If this is left off, the batch will be determined automatically.
processorRequest.BatchId = 'a0946000000tn2aAAA';

NU.OrderProcessorResponse processorResponse =
        NU.OrderAPI.Instance.processOrders(processorRequest);

// You may process the response how you see fit.
```

### Retrieve the Payment__c record Id for a processed Payment

Here is an example showing how to get the Payment__c record Id for an order that was just processed. Notice that this example uses a NU.CheckPayment but the same can be done on any type of Payment.

```apex
Id orderId = 'a1446000000YR7GAAW';

// Build your Payment and process it.
NU.CheckPayment orderPayment = new NU.CheckPayment();
orderPayment.PaymentDate = Date.today();
orderPayment.PayerId = '00146000004OiAuAAK';
orderPayment.EntityPaymentMethodId = 'a0g46000000MlTGAA0';
orderPayment.GLAccountId = 'a0o460000009sd0AAA';
orderPayment.Amount = 30.0;
orderPayment.Source = 'API';
orderPayment.Note = 'API check payment example.';
orderPayment.CheckNumber = '123456';

NU.OrderProcessorRequest processorRequest =
        new NU.OrderProcessorRequest(new Set<Id> { orderId }, orderPayment);

NU.OrderProcessorResponse processorResponse =
        NU.OrderAPI.Instance.processOrders(processorRequest);

// Once the Order has been processed you now have access to the record Id through the RecordId property on the Payment object.
Id appliedPaymentId = orderPayment.RecordId;
```

## Discounts/Coupons

### Add a discount to an Order

```apex
Id entityId = 'a0i1N0000068Wzl';
Id donationProductId = 'a1M1N000003aK4s';
Id merchandiseProductId = 'a1M1N000003aK4b';
Id accountId = '0011N00001B7j6A';

NU.OrderRequest newOrderRequest = new NU.OrderRequest(entityId, accountId);
NU.OrderGeneratorRequest generatorRequest = new NU.OrderGeneratorRequest(new List<NU.OrderRequest> { newOrderRequest });
List<NU.Order> generatedOrders = NU.OrderAPI.Instance.generateOrders(generatorRequest).Orders;

NU.Order generatedOrder = generatedOrders[0];

NU.OrderLineGeneratorRequest lineGeneratorRequest =
        new NU.OrderLineGeneratorRequest(accountId, DateTime.now());
lineGeneratorRequest.ProductPricingInfos.add(NU.ProductPricingInfo.newInstance(donationProductId , 1));
lineGeneratorRequest.ProductPricingInfos.add(NU.ProductPricingInfo.newInstance(merchandiseProductId , 1));
NU.OrderLineGeneratorResponse lineGeneratorResponse =
        NU.OrderAPI.Instance.generateOrderLines(lineGeneratorRequest);

generatedOrder.addLines(lineGeneratorResponse.OrderLines);

// You can apply a discount by passing in a coupon code to the applyDiscount() method in the NU.Order class.
NU.OperationResult result = generatedOrder.applyDiscount('50OFF');

// The applyDiscount() method returns an NU.OperationResult, use it to verify that the discount was applied correctly.
System.debug(result);

// You can also verify the balance of the NU.Order to confirm that the discount was applied correctly.
System.debug(generatedOrder.getBalance());

// Or, simply verify the discount amount.
System.debug(generatedOrder.getTotalDiscounts());

// Note that applying a discount follows the same rules as the Coupon architecture in Nimble AMS. The discount will be applied by creating NU__OrderItemLine__c records which will be distributed among the NU__OrderItem__c records for the order based on how the corresponding NU__CouponRule__c has been configured.
```

### Get the applied discount codes

```apex
...
// NU.Order with discounts is generated.
...

// You can get a set of all applied discounts in the order. This is specially helpful when dealing with adjustments, where you might not know which coupon codes where added when the order was originally created.
Set<String> discounts = generatedOrder.getDiscountCodes();
```

### Remove a discount

```apex
...
// NU.Order with discounts is generated.
...

// When removing a discount any other coupon in the order is reapplied. If the lines for the discount being removed where never saved into the database then they are deleted, if they were (meaning we are dealing with an adjustment) then they are canceled.
NU.OperationResult result = generatedOrder.removeDiscount('50OFF');
```

Here are a few things to keep in mind when applying discounts throught the Order API:

- **You can apply a discount to an empty order.** If the order is empty no lines will be generated but the NU.Order instance will keep a record of the applied discount, so each time lines are added to the order the discounts will be recalculated.
- In fact, **you can apply a discount at any point while generating the order**. For instance, you can apply a discount and then decide to change the unit price of one of the lines in the order, or change the quantity, or cancel an item. If the order has discounts and then one of the previously mention scenarios occurs, **the discount will be reapplied**. But do this carefully! Reapplying the coupon might cause unexpected changes or an exception might be thrown during the process. Because of this we recommend applying the coupon after the order is as desired and relying on the NU.OperationResult returned by the applyDiscounts() method. But if you can't avoid applying the coupon first, or just think it is a neat functionality that you want to use, then we recommend following practices like wrapping your order altering code in try/catch blocks, implement undo to roll back breaking changes, etc.
- **You can also manipulate discounts when dealing with adjustment orders**. But keep in mind that adjustment rules will be followed. This means that discounts lines won't be deleted when removing a coupon, but they will be canceled.

## Shipping

The Order API offers support for shipping through the use of the NU.ShippingService class as follows:

### Calculate Shipping Costs

Use this previous to applying shipping, when you might want to know which shipping options are available.

```apex
Id entityId = 'a0i1N000006pdtZ';
// This is a shippable product.
Id productId = 'a1M1N000004qYHb';
Id accountId = '0011N00001Cv5eI';

NU.OrderRequest newOrderRequest = new NU.OrderRequest(entityId, accountId);
NU.OrderGeneratorRequest generatorRequest = new NU.OrderGeneratorRequest(new List<NU.OrderRequest> { newOrderRequest });
NU.OrderGeneratorResponse generatorResponse = NU.OrderAPI.Instance.generateOrders(generatorRequest);

NU.Order generatedOrder = generatorResponse.Orders[0];

NU.OrderLineGeneratorRequest lineGeneratorRequest = new NU.OrderLineGeneratorRequest(accountId, Datetime.now());
lineGeneratorRequest.ProductPricingInfos.add(NU.ProductPricingInfo.newInstance(productId, 1));
NU.OrderLineGeneratorResponse lineGeneratorResponse = NU.OrderAPI.Instance.generateOrderLines(lineGeneratorRequest);

NU.OrderLine generatedLine = lineGeneratorResponse.OrderLines[0];

// The line is shippable since the product added is shippable.
System.debug('Is the line shippable? ' + generatedLine.IsShippable);

generatedOrder.addLines(lineGeneratorResponse.OrderLines);

NU.Address shippingAddress = new NU.Address('Test Street', 'Test City', 'AK', '12345', 'United States');

// Note that if you want to get ship methods for a specific OrderItem there is a constructor overload that takes an NU.OrderItem instead of an NU.Order.
NU.ShippingServiceRequest shippingRequest = new NU.ShippingServiceRequest(generatedOrder, accountId, shippingAddress);

NU.ShippingServiceResponse shippingResponse = NU.ShippingService.Instance.calculateShippingCosts(shippingRequest);

System.debug('The available ship methods: ' + shippingResponse.ShipMethods);
```

### Applying Shipping to an Order

Applying shipping to an Order means that an assumption will be made that the Order has a single shippable OrderItem. If you want to ship different items to different places within the same order then take a look at the "Applying Shipping to an Order Item" example.

```apex
// For this example we assume that you already have a valid NU__ShipMethod__c record Id that you wish to apply, as well as an Order to apply it to.
// If you want to know how to get valid NU__ShipMethod__c options that can be applied to your order look at the "Calculate Shipping Costs" example.
Id shipMethodId ='a1Y1N000002l0C2';

Id accountId = '0011N00001Cv5eI';
// Let's assume that you have a generated order.
NU.Order generatedOrder = getGeneratedOrder();
NU.Address shippingAddress = new NU.Address('Test Street', 'Test City', 'AK', '12345', 'United States');

NU.ShippingServiceRequest shippingRequest = new NU.ShippingServiceRequest(generatedOrder, accountId, shipMethodId, shippingAddress);

NU.OperationResult result = NU.ShippingService.Instance.applyShipMethod(shippingRequest);
```

### Applying Shipping to an Order Item

The Cart-to-Order infrastructure limits you to one shippable item per Cart/Order. We've removed this limitation from the Order API!

If you are working under the assumption that your Order will always have one shippable item at most, or you wish to keep the one item per order limitation to keep consistency then you can still do this with the Order API, just take a look at the "Applying Shiiping to an Order" example.

```apex
Id entityId = 'a0i1N000006pdtZ';

// On this example we are shipping 2 different products to 2 different customers with 2 different addresses with 2 different ship methods.
Id customerId1 = '0011N00001Cv5eI';
Id productId1 = 'a1M1N000004qYHb';
Address customer1Address = new Address('Test Street', 'Test City', 'AK', '12345', 'United States');

Id customerId2 = '0011N00001Czz6D';
Id productId2 = 'a1M1N000004qYHl';
Address customer2Address = new Address('Different Street', 'Test City', 'WY', '12345', 'United States');

...
// Generate your order
...

// Adding lines for the first product and the first customer.
NU.OrderLineGeneratorRequest lineGeneratorRequest = new NU.OrderLineGeneratorRequest(customerId1, Datetime.now());
lineGeneratorRequest.ProductPricingInfos.add(NU.ProductPricingInfo.newInstance(productId1, 1));
NU.OrderLineGeneratorResponse lineGeneratorResponse = NU.OrderAPI.Instance.generateOrderLines(lineGeneratorRequest);
generatedOrder.addLines(lineGeneratorResponse.OrderLines);

// Adding lines for the second product and the second customer in the same order.
lineGeneratorRequest = new NU.OrderLineGeneratorRequest(customerId2, Datetime.now());
lineGeneratorRequest.ProductPricingInfos.add(NU.ProductPricingInfo.newInstance(productId2, 1));
lineGeneratorResponse = NU.OrderAPI.Instance.generateOrderLines(lineGeneratorRequest);
generatedOrder.addLines(lineGeneratorResponse.OrderLines);

// Adding shipping to first order item
// First we get the available Ship Methods based on the contents of the item:
NU.ShippingServiceRequest shippingRequest = new NU.ShippingServiceRequest(generatedOrder.getOrderItems()[0], customerId1, customer1Address);
NU.ShippingServiceResponse shippingResponse = NU.ShippingService.Instance.calculateShippingCosts(shippingRequest);
System.debug('The shipping service response: ' + shippingResponse.ShipMethods);

// Then we pick one of the available ship methods:
shippingRequest.ShipMethodId = shippingResponse.ShipMethods[0].Id;
OperationResult result = NU.ShippingService.Instance.applyShipMethod(shippingRequest);

// Adding shipping to second order item
shippingRequest = new NU.ShippingServiceRequest(generatedOrder.getOrderItems()[1], customerId1, customer2Address);
// Let's get the available ship methods for the second item, since we are using a different address and the ship methods might differ based on the contents of this particular item.
shippingResponse = NU.ShippingService.Instance.calculateShippingCosts(shippingRequest);

// Let's pick a different ship method.
shippingRequest.ShipMethodId = shippingResponse.ShipMethods[2].Id;
result = NU.ShippingService.Instance.applyShipMethod(shippingRequest);
```

### Validating Shipping Methods

By default, the Cart-to-Order infrastructure automatically validates that previosly applied shipping methods are still valid. This is not automatic with the Order API. You are in charge of how you modify the Order, so if you find yourself making modifications to it after having applied shipping methods then make sure that you validate that the ship method is still applicable to the order item:

```apex
NU.ShippingServiceRequest shippingRequest = new NU.ShippingServiceRequest(generatedOrder, customerId, shipMethodId, shippingAddress);
// This will make sure that the shipMethodId passed in through the request is still valid. If it is not, then the it will be removed from the shippable order item in the order.
NU.ShippingService.validateShippingMethod(request);
```

## Order Adjustments

### Cancel a previously submitted Order

This example is for canceling a previously inserted order. Cancelling an order will cancel the order, all of its items, all of the lines and all of the history records.

#### **Canceling an order**

```apex
Id orderId = 'a1446000000YR7GAAW';

// First we covert the NU__Order__c record in the database into a NU.Order instance.
NU.OrderRequest existingOrderRequest = new NU.OrderRequest(orderId);
NU.OrderGeneratorRequest generatorRequest = new NU.OrderGeneratorRequest(new List<NU.OrderRequest> { existingOrderRequest }); 
List<NU.Order> existingOrders = NU.OrderAPI.Instance.generateOrders(generatorRequest).Orders;

NU.Order orderToUpdate = existingOrders[0];

// Now we call the cancel() method on the loaded NU.Order.
orderToUpdate.cancel();

// Now we create our processor request.
NU.OrderProcessorRequest processorRequest = new NU.OrderProcessorRequest(new List<NU.Order> { orderToUpdate });

// And finally we call the NU.OrderAPI with our request.
NU.OrderProcessorResponse processorResponse =
        NU.OrderAPI.Instance.processOrders(processorRequest);
```

### Edit fields on a previously submitted Order

Here is an example of how to edit specific fields on an NU__Order__c object through the API.

#### **Editing fields on an order**

```apex
Id orderId = 'a1446000000YR7GAAW';

// First we convert the NU__Order__c record in the database into a NU.Order instance.
NU.OrderRequest orderRequestForUpdate = new NU.OrderRequest(orderId);
NU.OrderGeneratorRequest generatorRequest = new NU.OrderGeneratorRequest(new List<NU.OrderRequest> { existingOrderRequest }); 
List<NU.Order> existingOrders = NU.OrderAPI.Instance.generateOrders(generatorRequest).Orders;

NU.Order orderToUpdate = existingOrders [0];

// Now we make edits to the NU.Order. We can use the addValueToField() method to edit any field on the NU__Order__c.
orderToUpdate.addValueToField(NU__Order__c.NU__AdditionalEmail__c, 'johnsnow@gryffindor.com);

// Now we create our processor request.
NU.OrderProcessorRequest updateRequest = new NU.OrderProcessorRequest(new List<NU.Order> { orderToUpdate });

// And finally we call the NU.OrderAPI with our request.
NU.OrderProcessorResponse processorResponse =
        NU.OrderAPI.Instance.processOrders(processorRequest);
```

### Add additional products to a previously submitted Order

#### **Adding additional products to the order**

```apex
Id orderId = 'a1446000000YR7GAAW';
Id productId = 'a1F46000000HD3xEAG';
Id accountId = '00146000003Kjy4AAC';

NU.OrderRequest orderRequestForUpdate = new NU.OrderRequest(orderId);
NU.OrderGeneratorRequest generatorRequest = new NU.OrderGeneratorRequest(new List<NU.OrderRequest> { existingOrderRequest }); 
List<NU.Order> existingOrders = NU.OrderAPI.Instance.generateOrders(generatorRequest).Orders;

System.assertEquals(1, existingOrders.size(), 'Expected an Order instance returned.');

NU.Order orderToUpdate = existingOrders[0];

// Generate order lines.
NU.OrderLineGeneratorRequest lineGeneratorRequest = 
        new NU.OrderLineGeneratorRequest(accountId, DateTime.now());
lineGeneratorRequest.ProductPricingInfos.add(NU.ProductPricingInfo.newInstance(productId, 1));
NU.OrderLineGeneratorResponse lineGeneratorResponse = 
        NU.OrderAPI.Instance.generateOrderLines(lineGeneratorRequest);

NU.OrderLine generatedLine = lineGeneratorResponse.OrderLines[0];

NU.Merchandise exampleMerchandise = new NU.Merchandise();
exampleMerchandise.AccountId = accountId;
exampleMerchandise.ProductId = productId;

generatedLine.HistoryDatas = new List<NU.HistoryData> { exampleMerchandise };

orderToUpdate.addLines(new List<NU.OrderLine> { testLine });

// For this example we are paying for the line that we added, but you could skip this if you don't want to pay.
NU.CashPayment payment = new NU.CashPayment();
payment.PaymentDate = Date.today();
payment.PayerId = accountId;
payment.EntityPaymentMethodId = 'a0g46000000MlTGAA0';
payment.GLAccountId = 'a0o460000009sd0AAA';
payment.Amount = generatedLine.getTotalPrice();
payment.Source = 'TEST';

NU.OrderProcessorRequest processorRequest = new NU.OrderProcessorRequest(new List<NU.Order> { orderToUpdate }, payment);

NU.OrderProcessorResponse processorResponse =
        NU.OrderAPI.Instance.processOrders(processorRequest);
```

## Asynchronous Processing

### Process a large number of orders asynchronously.

Processing an order asynchronously is exactly the same as regularly processing orders, the only difference is that you need to set the "ProcessAsync" property to true on the NU.OrderProcessorRequest before processing. When processing is done in the NU.OrderProcessorResponse you will receive the apex job Id in the AsyncBatchId property.

```apex
...
// Do the usual setup to get your Order and (optional) payments ready to go.
...

NU.OrderProcessorRequest processorRequest = new NU.OrderProcessorRequest(ordersToProcess, payment);
processorRequest.ProcessAsync = true;

// Optionally you also have the option of setting the batch size your want your order to be processed.
processorRequest.BatchSize = 100; // If this is not set the default batch size is 2000.

NU.OrderProcessorResponse processorResponse = NU.OrderAPI.Instance.processOrders(processorRequest);

// processorResponse.Orders is going to be null, instead you will receive a batch Id to check on the batch status.
Id myBatchId = processorResponse.AsyncBatchId;
```

## Order Confirmation

### Sending the Order Confirmation email after order processing.

```apex
...
// Do the usual setup to process your Order(s)
...

NU.OrderProcessorResponse processorResponse = NU.OrderAPI.Instance.processOrders(processorRequest);

List<NU.Order> generatedOrders = processorResponse.Orders;

// First gather the order Ids.
Set<Id> orderIds = new Set<Id>();
for (NU.Order currentOrder : generatedOrders) {
	orderIds.add(currentOrder.RecordId);
}

// Now let's build a request for the emails that will be sent.
NU.OrderConfirmationService.Request emailRequest = new NU.OrderConfirmationService.Request(orderIds);
// Tip: The NU.OrderConnfirmationService.Request has an overloaded constructor that takes an email template name.

// Send the confirmation email.
NU.OrderConfirmationService.Response emailResponse = NU.OrderConfirmationService.Instance.send(emailRequest);
```

## Kitchen Sink Example

### Build an order from scratch, add a product, submit payment, then submit the paid order (kitchen sink example).

Here's a full example of building an order from scratch, applying payment with a stored payment profile, and submitting the order to completion.

```apex
Id entityId = 'a0h460000004lEsAAI';
Id productId = 'a1F46000000HD3xEAG';
Decimal productUnitPrice = .01;
Id accountId = '00146000003Kjy4AAC';
String externalProfileExternalId = '1810709820';
String externalPaymentProfileExternalId = '1805404602';

// Build an order.
NU.OrderRequest orderRequest = new NU.OrderRequest(entityId, accountId);
NU.OrderGeneratorRequest generatorRequest = 
        new NU.OrderGeneratorRequest(new List<NU.OrderRequest> { orderRequest });
NU.OrderGeneratorResponse generatorResponse = 
        NU.OrderAPI.Instance.generateOrders(generatorRequest);

System.assert(generatorResponse.Orders != null && !generatorResponse.Orders.isEmpty(), 
        'Expected an order to have been generated.');

// Generate order lines.
NU.OrderLineGeneratorRequest lineGeneratorRequest = 
        new NU.OrderLineGeneratorRequest(accountId, DateTime.now());
lineGeneratorRequest.ProductPricingInfos.add(NU.ProductPricingInfo.newInstance(productId, 1));
NU.OrderLineGeneratorResponse lineGeneratorResponse = 
        NU.OrderAPI.Instance.generateOrderLines(lineGeneratorRequest);

System.assert(lineGeneratorResponse.OrderLines != null && 
        !lineGeneratorResponse.OrderLines.isEmpty(), 'Expected order lines.');

// Add in order line.
generatorResponse.Orders[0].addLines(lineGeneratorResponse.OrderLines);

// Submit payment to the gateway.
NU.StoredPaymentDetail paymentDetail = new NU.StoredPaymentDetail();
paymentDetail.ExternalPaymentProfileExternalId = externalPaymentProfileExternalId;
paymentDetail.ExternalProfileExternalId = externalProfileExternalId;

NU.PaymentAuthorizationService.Request paymentAuthorizationRequest = 
        new NU.PaymentAuthorizationService.Request(accountId, entityId, productUnitPrice, paymentDetail);

NU.PaymentAuthorizationService.Response paymentAuthorizationResponse =
        NU.PaymentAuthorizationService.Instance.authorize(paymentAuthorizationRequest);

System.assert(paymentAuthorizationResponse.Result.isSuccessful(), 
        'Expected a successful authorization response. ' + 
                NU.OperationResult.getErrorStringFromOperationResult(paymentAuthorizationResponse.Result));

// Submit the order with payment.
NU.Payment orderPayment = paymentAuthorizationResponse.Payment;
NU.OrderProcessorRequest processorRequest = 
        new NU.OrderProcessorRequest(generatorResponse.Orders, orderPayment);
NU.OrderProcessorResponse processorResponse = 
        NU.OrderAPI.Instance.processOrders(processorRequest);

// You may process the response how you see fit.
```

### Membership - Letting the System create History Datas

If you have History Setting MDT records configured in your org for Memberships, then the Order API can automatically generate HistoryDatas and add it to your lines for you.

```apex
Id accountId = '0010b00001uTJmL';
Id membershipTypeId = 'a0z0b000003rSFd';
Id mtplId = 'a0y0b000008OZtY';
Id entityId = 'a0i0b000005HWpO';

// In this example we are creating a membership with multiple products attached to it.
// This is the primary one, so we only want history datas for this one
Id primaryProductId = 'a1M0b00000CaESq';
Id otherProductId1 = 'a1M0b00000CaET1';
Id otherProductId2 = 'a1M0b00000CaET2';

NU.OrderRequest oRequest = new NU.OrderRequest(entityId, accountId);
NU.OrderGeneratorRequest oGenRequest = new NU.OrderGeneratorRequest(new List<NU.OrderRequest> { oRequest });
NU.OrderGeneratorResponse oGenResponse = NU.OrderAPI.Instance.generateOrders(oGenRequest);
NU.Order orderToProcess = oGenResponse.Orders[0];

Date startDate = Date.today().toStartOfMonth();
Date endDate = Date.today().addYears(1).addMonths(1).toStartOfMonth().addDays(-1);
NU.OrderLineGeneratorRequest lineRequest = new NU.OrderLineGeneratorRequest(accountId, DateTime.now());

// This is the ProductPricingInfo for a non-primary product, so we don't want to generate any history data.
lineRequest.ProductPricingInfos.add(
        NU.ProductPricingInfo.newInstance(otherProductId1, 1, mtplId, startDate, endDate, NU.HistoryDataGenerator.newInstance().doNotGenerate())
);
// This is the ProductPricingInfo for the primary product, so we want to generate the history data for the membership here.
// Notice that you can optionally specify additional information that you want that Membership to have.
lineRequest.ProductPricingInfos.add(
        NU.ProductPricingInfo.newInstance(productId2, 1, mtplId, startDate, endDate, 
                HistoryDataGenerator.newInstance()
                        .generate()
                        .withFieldValue(NU__Membership__c.NU__MembershipType2__c, membershipTypeId)
                        .withFieldValue(NU__Membership__c.NU__StartDate__c, startDate)
                        .withFieldValue(NU__Membership__c.NU__EndDate__c, endDate))
);
// Same thing here, not primary so we don't want history data children.
lineRequest.ProductPricingInfos.add(
        NU.ProductPricingInfo.newInstance(productId3, 1, mtplId, startDate, endDate, NU.HistoryDataGenerator.newInstance().doNotGenerate())
);

NU.OrderLineGeneratorResponse lineGeneratorResponse = NU.OrderAPI.Instance.generateOrderLines(lineRequest);

// We only wanted the Membership history data to be a child of the OrderLine for the primary product,
// but we still want there to be a relationship between the Membership and the non-primary lines.
// So first we find the auto-generated membership...
NU.HistoryData membershipData;
for (NU.OrderLine currentLine : lineGeneratorResponse.OrderLines) {
    if (!currentLine.HistoryDatas.isEmpty()) {
        membershipData = currentLine.HistoryDatas[0];
    }
}

// ...and then we create a relationship between the line and it.
for (NU.OrderLine currentLine : lineGeneratorResponse.OrderLines) {
    if (currentLine.HistoryDatas.isEmpty()) {
        currentLine.RelatedHistoryData = membershipData;
    }
}

orderToProcess.addLines(lineGeneratorResponse.OrderLines);

NU.OrderProcessorRequest processorRequest = new NU.OrderProcessorRequest(new List<NU.Order> { orderToProcess });
NU.OrderProcessorResponse processorResponse = NU.OrderAPI.Instance.processOrders(processorRequest);
```

### Membership - Manually creating the History Datas

Memberships require a lookup to the Membership Type Product Link on the OrderLine object in addition to a Membership history record. Here's an example.

```apex
Id entityId = 'a0i1N000007YhUrQAK';
Id billToId = '0011N00001ETnQdQAL';
Id membershipTypeId = 'a0z1N000006FNkfQAG';
Id primaryDuesProductId = 'a1M1N000004z1G5UAI';
Id primaryDuesProductLinkId = 'a0y1N000005lGEhQAM';
Id donationProductId = 'a1M1N000004z1G4UAI';
Id donationProductLinkId = 'a0y1N000005lGEeQAM';
Date startDate = Date.today().toStartOfMonth();
Date endDate = startDate.addYears(1).toStartOfMonth().addDays(-1);

// Build an order.
NU.OrderRequest orderRequest = new NU.OrderRequest(entityId, billToId);
NU.OrderGeneratorRequest generatorRequest =
        new NU.OrderGeneratorRequest(new List<NU.OrderRequest> { orderRequest });
NU.OrderGeneratorResponse generatorResponse =
        NU.OrderAPI.Instance.generateOrders(generatorRequest);

System.assert(generatorResponse.Orders != null && !generatorResponse.Orders.isEmpty(),
        'Expected an order to have been generated.');

// Generate donation order line.
NU.OrderLineGeneratorRequest lineGeneratorRequest =
        new NU.OrderLineGeneratorRequest(billToId, DateTime.now());
lineGeneratorRequest.ProductPricingInfos.add(NU.ProductPricingInfo.newInstance(primaryDuesProductId, 1, primaryDuesProductLinkId, startDate, endDate, NU.HistoryDataGenerator.doNotGenerate()));
lineGeneratorRequest.ProductPricingInfos.add(NU.ProductPricingInfo.newInstance(donationProductId, 1, donationProductLinkId, startDate, endDate, NU.HistoryDataGenerator.doNotGenerate()));
NU.OrderLineGeneratorResponse lineGeneratorResponse =
        NU.OrderAPI.Instance.generateOrderLines(lineGeneratorRequest);

System.assert(lineGeneratorResponse.OrderLines != null &&
        !lineGeneratorResponse.OrderLines.isEmpty(), 'Expected order lines.');

NU.OrderLine membershipOrderLine = lineGeneratorResponse.OrderLines[0];
NU.OrderLine donationOrderLine = lineGeneratorResponse.OrderLines[1];

// Build the donation history record.
NU.Donation donationHistoryData = new NU.Donation();
donationHistoryData.AccountId = billToId;
donationHistoryData.ProductId = donationProductId;

donationOrderLine.HistoryDatas = new List<NU.HistoryData> { donationHistoryData };

// Build the membership history record.
NU.Membership membershipHistoryData = new NU.Membership();
membershipHistoryData.AccountId = billToId;
membershipHistoryData.MembershipTypeId = membershipTypeId;
membershipHistoryData.StartDate = startDate;
membershipHistoryData.EndDate = endDate;
membershipHistoryData.Donations.add(donationHistoryData);

membershipOrderLine.HistoryDatas = new List<NU.HistoryData> { membershipHistoryData };

// Add in order lines.
generatorResponse.Orders[0].addLines(lineGeneratorResponse.OrderLines);

// Submit the order
NU.OrderProcessorRequest processorRequest =
        new NU.OrderProcessorRequest(generatorResponse.Orders);
NU.OrderProcessorResponse processorResponse =
        NU.OrderAPI.Instance.processOrders(processorRequest);

// You may process the response how you see fit.
```

### Subscription

Subscriptions operate very similarly to memberships from an API perspective, here's a sample.

```apex
Id entityId = 'a0i6A000001SuvLQAS';
Id billToId = '0016A00000HO9RiQAL';
Id subscriptionProductId = 'a1M6A000000mkleUAA';
Date startDate = Date.today().toStartOfMonth();
Date endDate = startDate.addYears(1).toStartOfMonth().addDays(-1);

// Build an order.
NU.OrderRequest orderRequest = new NU.OrderRequest(entityId, billToId);
NU.OrderGeneratorRequest generatorRequest =
        new NU.OrderGeneratorRequest(new List<NU.OrderRequest> { orderRequest });
NU.OrderGeneratorResponse generatorResponse =
        NU.OrderAPI.Instance.generateOrders(generatorRequest);

System.assert(generatorResponse.Orders != null && !generatorResponse.Orders.isEmpty(),
        'Expected an order to have been generated.');

// Generate donation order line.
NU.OrderLineGeneratorRequest lineGeneratorRequest =
        new NU.OrderLineGeneratorRequest(billToId, DateTime.now());
lineGeneratorRequest.ProductPricingInfos.add(NU.ProductPricingInfo.newInstance(subscriptionProductId, 1));
NU.OrderLineGeneratorResponse lineGeneratorResponse =
        NU.OrderAPI.Instance.generateOrderLines(lineGeneratorRequest);

System.assert(lineGeneratorResponse.OrderLines != null &&
        !lineGeneratorResponse.OrderLines.isEmpty(), 'Expected order lines.');

NU.OrderLine subscriptionOrderLine = lineGeneratorResponse.OrderLines[0];

// Build the subscription history record.
NU.Subscription subscriptionHistoryData = new NU.Subscription();
subscriptionHistoryData.AccountId = billToId;
subscriptionHistoryData.ProductId = subscriptionProductId;
subscriptionHistoryData.StartDate = startDate;
subscriptionHistoryData.EndDate = endDate;

subscriptionOrderLine.HistoryDatas = new List<NU.HistoryData> { subscriptionHistoryData };

// Add in order lines.
generatorResponse.Orders[0].addLines(lineGeneratorResponse.OrderLines);

// Submit the order
NU.OrderProcessorRequest processorRequest =
        new NU.OrderProcessorRequest(generatorResponse.Orders);
NU.OrderProcessorResponse processorResponse =
        NU.OrderAPI.Instance.processOrders(processorRequest);

// You may process the response how you see fit.
```

### Event registration

Events are slightly more complex in that they often involve Badges, Answers in addition to a Registration2 history record. Here's an example of how to incorporate these into your order.

```apex
Id entityId = 'a0i1N000006seNFQAY';
Id registrantId = '0011N00001CyQpRQAV';
Id eventId = 'a0o1N00000GWGd2QAH';
Id sessionId = 'a1M1N000004tBcJUAU';
Id questionId = 'a0m1N00000VFAEsQAP';

// Build an order.
NU.OrderRequest orderRequest = new NU.OrderRequest(entityId, registrantId);
NU.OrderGeneratorRequest generatorRequest =
        new NU.OrderGeneratorRequest(new List<NU.OrderRequest> { orderRequest });
NU.OrderGeneratorResponse generatorResponse =
        NU.OrderAPI.Instance.generateOrders(generatorRequest);

System.assert(generatorResponse.Orders != null && !generatorResponse.Orders.isEmpty(),
        'Expected an order to have been generated.');

// Generate order lines.
NU.OrderLineGeneratorRequest lineGeneratorRequest =
        new NU.OrderLineGeneratorRequest(registrantId, DateTime.now());
lineGeneratorRequest.ProductPricingInfos.add(NU.ProductPricingInfo.newInstance(sessionId, 1));

NU.OrderLineGeneratorResponse lineGeneratorResponse =
        NU.OrderAPI.Instance.generateOrderLines(lineGeneratorRequest);

System.assert(lineGeneratorResponse.OrderLines != null &&
        !lineGeneratorResponse.OrderLines.isEmpty(), 'Expected order lines.');

NU.OrderLine generatedLine = lineGeneratorResponse.OrderLines[0];

// Build the registration history record.
NU.Registration testRegistration = new NU.Registration();
testRegistration.AccountId = registrantId;
testRegistration.EventId = eventId;
testRegistration.RegistrationType = 'Attendee';
testRegistration.Status = 'Active';

// Build a badge for the registration.
NU.EventBadge testBadge = new NU.EventBadge();
testBadge.FirstName = 'Gordon';
testBadge.LastName = 'Freeman';
testBadge.BadgeType = 'Registrant';
testBadge.BadgeClass = 'Member';
testRegistration.Badges.add(testBadge);

// Add an answer to the registration.
NU.EventAnswer testAnswer = new NU.EventAnswer();
testAnswer.QuestionId = questionId;
testAnswer.AnswerText = 'I am doing excellently.';
testRegistration.Answers.add(testAnswer);

generatedLine.HistoryDatas = new List<NU.HistoryData> { testRegistration };

// Add in order lines.
generatorResponse.Orders[0].addLines(lineGeneratorResponse.OrderLines);

// Submit the order
NU.OrderProcessorRequest processorRequest =
        new NU.OrderProcessorRequest(generatorResponse.Orders);
NU.OrderProcessorResponse processorResponse =
        NU.OrderAPI.Instance.processOrders(processorRequest);

// You may process the response how you see fit.
```

### Programs

Programs operate very similarly to memberships from an API perspective, here's a sample.

```apex
Id entityId = 'a0hf40000025huuAAA';
Id billToId = '001f400000NZUExAAP';
Id programProductId = 'a1Ff40000005nG2EAI';
Date startDate = Date.today().toStartOfMonth();
Date endDate = startDate.addYears(1).toStartOfMonth().addDays(-1);

// Build an order.
NU.OrderRequest orderRequest = new NU.OrderRequest(entityId, billToId);
NU.OrderGeneratorRequest generatorRequest =
        new NU.OrderGeneratorRequest(new List<NU.OrderRequest> { orderRequest });
NU.OrderGeneratorResponse generatorResponse =
        NU.OrderAPI.Instance.generateOrders(generatorRequest);

System.assert(generatorResponse.Orders != null && !generatorResponse.Orders.isEmpty(),
        'Expected an order to have been generated.');

// Generate donation order line.
NU.OrderLineGeneratorRequest lineGeneratorRequest =
        new NU.OrderLineGeneratorRequest(billToId, DateTime.now());
lineGeneratorRequest.ProductPricingInfos.add(NU.ProductPricingInfo.newInstance(programProductId, 1));
NU.OrderLineGeneratorResponse lineGeneratorResponse =
        NU.OrderAPI.Instance.generateOrderLines(lineGeneratorRequest);

System.assert(lineGeneratorResponse.OrderLines != null &&
        !lineGeneratorResponse.OrderLines.isEmpty(), 'Expected order lines.');

NU.OrderLine programOrderLine = lineGeneratorResponse.OrderLines[0];

// Build the program history record.
PROG.Program programHistoryData = new PROG.Program();
programHistoryData.AccountId = billToId;
programHistoryData.ProductId = programProductId;
programHistoryData.StartDate = startDate;
programHistoryData.EndDate = endDate;
programHistoryData.Status = 'Enrolled';
programHistoryData.Stage = 'Enroll';
programHistoryData.EnrollmentDate = Date.today();
programHistoryData.ProgramType = 'a21f40000006lXfAAI';

programOrderLine.HistoryDatas = new List<NU.HistoryData> { programHistoryData };

// Add in order lines.
generatorResponse.Orders[0].addLines(lineGeneratorResponse.OrderLines);

// Submit the order
NU.OrderProcessorRequest processorRequest =
        new NU.OrderProcessorRequest(generatorResponse.Orders);
NU.OrderProcessorResponse processorResponse =
        NU.OrderAPI.Instance.processOrders(processorRequest);

// You may process the response how you see fit.
```

## Bulk Order Payment

### Pay multiple orders using multiple payments

```apex
// In this example we are assumming you already know how to work with the NU.Order class, if you don't please take a look at some of the other examples in this page to familiarize yourself with it.

// We have 2 sets of Ids, one for members and one for non-members. We want to submit orders for both but use different payments for members vs. non-members.
Set<Id> memberAccountIds = getMemberIds();
Set<Id> nonMemberAccountIds = getNonMemberIds();

List<NU.Order> ordersForMembers = getOrdersForMembers();
List<NU.Order> ordersForNonMembers = getOrdersForNonMembers();

NU.CheckPayment memberPayment = new NU.CheckPayment();
memberPayment.PaymentDate = Date.today();
memberPayment.PayerId = '00146000004OiAuAAK';
memberPayment.EntityPaymentMethodId = 'a0g46000000MlTGAA0';
memberPayment.GLAccountId = 'a0o460000009sd0AAA';
memberPayment.Amount = getBalanceForForOrders(ordersForMembers);
memberPayment.Source = 'API';
memberPayment.Note = 'API check payment example.';
memberPayment.CheckNumber = '123456';

NU.CheckPayment nonMemberPayment = new NU.CheckPayment();
nonMemberPayment.PaymentDate = Date.today();
nonMemberPayment.PayerId = '00146000004OiAuAAK';
nonMemberPayment.EntityPaymentMethodId = 'a0g46000000MlTGAA0';
nonMemberPayment.GLAccountId = 'a0o460000009sd0AAA';
nonMemberPayment.Amount = getBalanceForForOrders(ordersForNonMembers);
nonMemberPayment.Source = 'API';
nonMemberPayment.Note = 'API check payment example.';
nonMemberPayment.CheckNumber = '123456';

// Create a map to tie orders with their associated payments.
Map<NU.Payment, List<NU.Order>> ordersByPayment = new Map<NU.Payment, List<NU.Order>>();
ordersByPayment.put(memberPayment, ordersForMembers);
ordersByPayment.put(nonMemberPayment, ordersForNonMembers);

// Note: If you are dealing with adjustment orders and not creating NU.Orders from scratch, you can use the overloaded constructor that takes a map of set of NU__Order__c Ids by NU.Payment (Map<NU.Payment>, Set<Id>).
NU.OrderProcessorRequest processorRequest = 
        new NU.OrderProcessorRequest(ordersByPayment);

NU.OrderProcessorResponse processorResponse = 
        NU.OrderAPI.Instance.processOrders(processorRequest);

// You may process the response how you see fit.
```

## Express Payments (Winter '18 Preview)

#### **Note**

Express payment functionality is in a preview state. It is usable from an API perspective, but is not formally supported beyond the operations utilized currently in the NC package. It is currently slated to be a pilot as a part of the **Winter 18** release.

**Safe harbor:** release dates, features, framework may change as the release development progresses.

### Apply payment to an existing order with a guest account as the payer

Express payments from an API perspective is essentially just applying a flag to the payment detail instance. The rest of the application process remains the same whether it was paid by a "full" account, or an anonymous "guest" account.

```apex
// Note, it is acceptable for the payer to be different than the order bill to.// Through this flexibility is how the concept of "anonymous" (express) type // order payment is achieved.Id entityId = 'a0h6A0000005aBWQAY';
Id orderId = 'a146A000000HNeBQAW';
Id payerId = '0016A000003KbbwQAC';
Decimal paymentAmount = 30.0;

// Create a billing address for your credit card.
NU.Address billingAddress = new NU.Address();
billingAddress.Street = '123 Somewhere St.';
billingAddress.City = 'Albany';
billingAddress.State = 'NY';
billingAddress.PostalCode = '12208';
billingAddress.Country = 'United States';

// Fill in the details about your credit card.
NU.CreditCardDetail paymentCard = new NU.CreditCardDetail();
paymentCard.Name = 'Craig Tester';
paymentCard.CardNumber = '4111111111111111';
paymentCard.SecurityCode = '123';
paymentCard.ExpirationMonth = '12';
paymentCard.ExpirationYear = '2020';
paymentCard.Address = billingAddress;

// This flags the payment SObject record as express for reporting purposes.// As a matter of best practice, this is set for Express Payments, but it's not// a strict requirement of the API.
paymentCard.IsExpressPayment = true;

// Authorize the credit card payment.
NU.PaymentAuthorizationService.Request paymentAuthorizationRequest =
        new NU.PaymentAuthorizationService.Request(payerId, entityId, paymentAmount, paymentCard);
NU.PaymentAuthorizationService.Response paymentAuthorizationResponse =
        NU.PaymentAuthorizationService.Instance.authorize(paymentAuthorizationRequest);

// Apply the payment to the order.
NU.Payment orderPayment = paymentAuthorizationResponse.Payment;
NU.OrderProcessorRequest processorRequest =
        new NU.OrderProcessorRequest(new Set<Id> { orderId }, orderPayment);
NU.OrderProcessorResponse processorResponse =
        NU.OrderAPI.Instance.processOrders(processorRequest);

// Verify the success or failure of your operation and react as you see fit.
```

### Add an optional donation to an existing order at the time of express payment

#### **Adding additional products to the order**

```apex
Id orderId = 'a146A000000HO36QAG';
Id additionalProductId = 'a1F6A000000HIMwUAO';
// This is the guest account who is making the payment on the order and the// added donation item. The bill to / donation history lookup will still be// the original bill to on the order.Id payerId = '0016A000003KbbwQAC';
Decimal paymentAmount = 360.00;

// Grab the existing order to adjust.
NU.OrderRequest existingOrderRequest = new NU.OrderRequest(orderId);
NU.OrderGeneratorRequest generatorRequest = 
        new NU.OrderGeneratorRequest(new List<NU.OrderRequest> { existingOrderRequest });
List<NU.Order> existingOrders = NU.OrderAPI.Instance.generateOrders(generatorRequest).Orders;

System.assertEquals(1, existingOrders.size(), 'Expected an Order instance returned.');

NU.Order orderToUpdate = existingOrders[0];

// Generate order lines.
NU.OrderLineGeneratorRequest lineGeneratorRequest =
        new NU.OrderLineGeneratorRequest(orderToUpdate.BillToId, DateTime.now());
lineGeneratorRequest.ProductPricingInfos.add(NU.ProductPricingInfo.newInstance(additionalProductId, 1));
NU.OrderLineGeneratorResponse lineGeneratorResponse =
        NU.OrderAPI.Instance.generateOrderLines(lineGeneratorRequest);

NU.OrderLine generatedLine = lineGeneratorResponse.OrderLines[0];

// Build the donation history record.
NU.Donation donationHistoryData = new NU.Donation();
donationHistoryData.AccountId = orderToUpdate.BillToId;
donationHistoryData.ProductId = additionalProductId;

// Add history data to order line, order line to order.
generatedLine.HistoryDatas = new List<NU.HistoryData> { donationHistoryData };
orderToUpdate.addLines(new List<NU.OrderLine> { generatedLine });

// Create a billing address for your credit card.
NU.Address billingAddress = new NU.Address();
billingAddress.Street = '123 Somewhere St.';
billingAddress.City = 'Albany';
billingAddress.State = 'NY';
billingAddress.PostalCode = '12208';
billingAddress.Country = 'United States';

// Fill in the details about your credit card.
NU.CreditCardDetail paymentCard = new NU.CreditCardDetail();
paymentCard.Name = 'Craig Tester';
paymentCard.CardNumber = '4111111111111111';
paymentCard.SecurityCode = '897';
paymentCard.ExpirationMonth = '12';
paymentCard.ExpirationYear = '2021';
paymentCard.Address = billingAddress;

// This flags the payment SObject record as express for reporting purposes.// As a matter of best practice, this is set for Express Payments, but it's not// a strict requirement of the API.
paymentCard.IsExpressPayment = true;

// Authorize the credit card payment.
NU.PaymentAuthorizationService.Request paymentAuthorizationRequest =
        new NU.PaymentAuthorizationService.Request(payerId, orderToUpdate.EntityId, paymentAmount, paymentCard);
NU.PaymentAuthorizationService.Response paymentAuthorizationResponse =
        NU.PaymentAuthorizationService.Instance.authorize(paymentAuthorizationRequest);

System.assert(paymentAuthorizationResponse.Result.isSuccessful(), 
        'Expected a successful payment: ' + 
            NU.OperationResult.getErrorStringFromOperationResult(paymentAuthorizationResponse.Result));

// Apply the payment to the order.
NU.Payment orderPayment = paymentAuthorizationResponse.Payment;
NU.OrderProcessorRequest processorRequest = 
        new NU.OrderProcessorRequest(new List<NU.Order> { orderToUpdate }, orderPayment);
NU.OrderProcessorResponse processorResponse =
        NU.OrderAPI.Instance.processOrders(processorRequest);

// Verify the success or failure of your operation and react as you see fit.
```

## Other Operations

### Authorize and capture gateway payment using a stored external payment profile

There is **no explicit global endpoint** for this in an effort to process all payment authorizations through our asynchronous API (NU__Payment__c.NU__PendingCapture__c) which async performs the capture on a scheduled basis when payment records are inserted with that field set to true.

The reason for this approach is, it takes the burden of full authorization off of a single page request / response cycle of an end user, increasing the overall performance of the operation.

### Void a payment

There is **no explicit global endpoint** for this in an effort to force these actions through our order API, this happens automatically when canceling an order via the order API or in staff view.

### Refund a payment

There is **no explicit global endpoint** for this in an effort to force these actions through our order API, this happens automatically when canceling an order via the order API or in staff view.

## Resolving Issues

### Nothing appears to happen when a request is sent to the Order API

This is likely due the BatchTotalUpdater job not being scheduled. Check the Apex Jobs page and search for BatchTotalUpdater. If it is not found, **place an Order in staff view**, which will ensure the job gets scheduled.
