@SuppressWarnings('PMD')
@IsTest(IsParallel=true)
private class PaymentsApiDocsSamples {
    @IsTest
    private static void docRecipes() {
        Account payerAccount = AccountTestData.Instance.DefaultIndividual;
        OrderItemLine__c line = OrderItemLineTestData.Instance.DefaultOrderItemLine;
        EntityPaymentMethod__c paymentMethod = EntityPaymentMethodTestData.Instance.DefaultEntityPaymentMethod;

        Id orderId = TestContext.Instance.get(Order__c.SObjectType).Id;
        Order orderInstance = Order.newInstances(new List<OrderRequest> {
            new OrderRequest(orderId)
        })[0];

        System.assertEquals(1, orderInstance.getOrderItems().size(), 'Expected one order item.');

        /// [process-a-payment-1]
        // Create the payment intent.
        PaymentBase paymentIntent = PaymentsApi.v1
            .paymentFactory()
            .createNew();

        // Set information about the payment being made.
        paymentIntent.setAmount(20.99)
            .setDate(Date.today())
            .setSource('Express Check form');
        /// [process-a-payment-1]

        /// [process-a-payment-2]
        // Create the check payment details.
        CheckPaymentDetails checkDetails = CheckPaymentDetails.newInstance()
            .setCheckNumber('1234567');

        // Add entity from entity payment method.
        checkDetails.setEntityId(orderInstance.EntityId)
            .setMethodId(paymentMethod.Id)
            .setNote('Check made out to FUND');

        // Add the details and set the payer.
        paymentIntent.setPaymentDetails(checkDetails)
            .setPayerId(payerAccount.Id);
        /// [process-a-payment-2]

        /// [process-a-payment-3]
        try {
            PaymentsApi.v1.service().process(paymentIntent);
        } catch (PaymentsApiException e) {
            // You can use e.getPayment() to get the
            // payment that raised the exception.
        }
        /// [process-a-payment-3]

        /// [process-a-payment-4]
        // Register the payment and commit it.
        PaymentsApi.v1.persistenceService()
            .register(paymentIntent)
            .commitWork();
        /// [process-a-payment-4]

        System.assertNotEquals(null, paymentIntent.getId(), 'Expected the payment to have an Id.');

        PaymentBase payment = paymentIntent;

        /// [apply-a-payment-1a]
        // Create the strategy with the items from an Order instance.
        OrderItemPaymentApplier strategy = new OrderItemPaymentApplier(
            orderInstance.getOrderItems()
        );
        /// [apply-a-payment-1a]

        /// [apply-a-payment-2a]
        try {
            // Apply the payment using the strategy.
            // This will create the lines, persist them,
            // and generate transactions.
            PaymentsApi.v1.applier().apply(payment, strategy);
        } catch (PaymentsApiException e) {
            // A validation error or other error occurred.
        }
        /// [apply-a-payment-2a]

        orderInstance = Order.newInstances(new List<OrderRequest> {
            new OrderRequest(orderInstance.RecordId)
        })[0];

        /// [apply-a-payment-1b]
        // Instead of using a strategy, you can manually create the lines.
        OrderItem itemToPayOff = orderInstance.getOrderItems()[0];
        PaymentLineBase paymentLine = PaymentsApi.v1.lineFactory()
            .createNew()
            .setAmount(itemToPayOff.getBalance())
            .setAppliedToId(itemToPayOff.RecordId);
        payment.addLine(paymentLine);
        /// [apply-a-payment-1b]

        /// [apply-a-payment-2b]
        try {
            // Apply the payment with no strategy.
            // This will persist the lines and generate transactions.
            PaymentsApi.v1.applier().apply(payment);
        } catch (PaymentsApiException e) {
            // A validation error or other error occurred.
        }
        /// [apply-a-payment-2b]

        Order__c orderRecord = [SELECT Balance__c FROM Order__c WHERE Id = :orderInstance.RecordId];

        System.assertEquals(0, orderRecord.Balance__c, 'Expected the order to have no balance.');
    }

    @IsTest
    private static void refundRecipe() {
        Id entityId = TestContext.Instance.get(Entity__c.SObjectType).Id;
        Payment__c existingPayment = PaymentTestData.Instance.asCash(entityId).withAmount(10).insertRecord();
        PaymentLineTestData.Instance.withPayment(existingPayment.Id).withAmount(10).insertRecord();

        Id paymentId = existingPayment.Id;

        /// [refund-a-payment-generate-refunds]
        // First retrieve the payment with details and lines.
        PaymentBase paymentToRefund = PaymentsApi.v1.paymentRetriever()
            .with(new PaymentWithPaymentDetailsPlugin())
            .with(new PaymentsWithPaymentLinesPlugins())
            .getById(paymentId);

        // Generate the refunding payment.
        List<PaymentBase> refundPayments = PaymentsApi.v1.refundService()
            .generateRefundPayments(new List<PaymentBase> { paymentToRefund });
        /// [refund-a-payment-generate-refunds]

        /// [refund-a-payment-process]
        try {
            PaymentsApi.v1.service().process(refundPayments);
        } catch (PaymentsApiException e) {
            // You can use e.getPayment() to get the
            // payment that raised the exception.
        }
        /// [refund-a-payment-process]

        /// [refund-a-payment-apply]
        PaymentsApi.v1.applier().apply(refundPayments);
        /// [refund-a-payment-apply]
    }
}
