# Classes
## Miscellaneous

### [AccountService](/api-reference/nu/global-apis/Miscellaneous/AccountService.md)


Exposes Account methods and functions for use outside of the package.



### [AccountTestData](/api-reference/nu/global-apis/Miscellaneous/AccountTestData.md)


Builder class for dealing with Account records. Solely used for testing, NOT a data factory.



### [Address](/api-reference/nu/global-apis/Miscellaneous/Address.md)


Stores Address information - Street, City, State, PostalCode, and Country strings.



### [AdjustmentSchedule](/api-reference/nu/global-apis/Miscellaneous/AdjustmentSchedule.md)


Represents an previously inserted Schedule now being adjusted.



### [AffiliationRosterController](/api-reference/nu/global-apis/Miscellaneous/AffiliationRosterController.md)


Controller for AffiliationRoster.page



### [AnnouncementJob](/api-reference/nu/global-apis/Miscellaneous/AnnouncementJob.md)






### [AnnualTermProrater](/api-reference/nu/global-apis/Miscellaneous/AnnualTermProrater.md)


Prorates an Annual term based on the Term Proration Request given and puts the term 		in the TermProrationResponse.



### [AttachmentService](/api-reference/nu/global-apis/Miscellaneous/AttachmentService.md)


A service that handles inserting attachments.



### [AttributeBase](/api-reference/nu/global-apis/Miscellaneous/AttributeBase.md)


Base abstract class that represents an Attribute.



### [Attributes](/api-reference/nu/global-apis/Miscellaneous/Attributes.md)


Represents an AttributeBase collection.



### [AutoCompleteSearchComponentController](/api-reference/nu/global-apis/Miscellaneous/AutoCompleteSearchComponentController.md)


Provide the findRecords remote action for the AutoComplete component.



### [BankAccountDetail](/api-reference/nu/global-apis/Miscellaneous/BankAccountDetail.md)


A PaymentDetail extension to represent the payment details of a bank account at the time of add, edit.



### [BatchApexUtil](/api-reference/nu/global-apis/Miscellaneous/BatchApexUtil.md)


Utility methods for batch apex



### [BatchExportController](/api-reference/nu/global-apis/Miscellaneous/BatchExportController.md)


The controller for BatchExport.page



### [BatchExportResult](/api-reference/nu/global-apis/Miscellaneous/BatchExportResult.md)


Stores the result of a DML operation, along with the component output panel for the Batch Export success view.



### [BatchGeoLocator](/api-reference/nu/global-apis/Miscellaneous/BatchGeoLocator.md)


Updates accounts' Primary Location latitude and longitude based on their address



### [BatchRecurringMembershipRenewer](/api-reference/nu/global-apis/Miscellaneous/BatchRecurringMembershipRenewer.md)


Batch job that automatically renews auto renewing memberships whose 		"Automatic Renewal Date" is the date this job runs or whose renewal date 		matches the renewal date given to this job.



### [BatchRecurringMembershipRepricer](/api-reference/nu/global-apis/Miscellaneous/BatchRecurringMembershipRepricer.md)


Batch job that reprices auto renewing membership's 		"Automatic Renewal Dues Amount" whose Automatic Renewal Repricing Date 		is on or before the given repricing date and hasn't been renewed yet. 		The repricing date defaults to today, but it can also be specified, 		if needed.



### [BatchRecurringPaymentAmountCorrector](/api-reference/nu/global-apis/Miscellaneous/BatchRecurringPaymentAmountCorrector.md)


Performs bulk recurring payment amount corrections. 		See the RecurringPaymentAmountCorrector for more information.



### [BatchRecurringPaymentCanceller](/api-reference/nu/global-apis/Miscellaneous/BatchRecurringPaymentCanceller.md)


Batch job that cancels recurring payments 		with a status of "Cancel Pending". Scheduled as-needed 		and run every hour to catch stragglers.



### [BatchRecurringPaymentDeclinedNotifier](/api-reference/nu/global-apis/Miscellaneous/BatchRecurringPaymentDeclinedNotifier.md)


Batch job that sends recurring payment 		declined emails to the payers for the specified 		declined recurring payments. 		Note: An email is sent only if the payer is a person account with an email or 			a company whose primary contact has an email.



### [BatchRecurringPaymentProcessedNotifier](/api-reference/nu/global-apis/Miscellaneous/BatchRecurringPaymentProcessedNotifier.md)


Batch job that sends recurring payment 		processed emails to the payers for the specified 		processed payments. Note: An email is sent only if the payer is a person account with an email or 			a company whose primary contact has an email.



### [BatchRecurringPaymentTransactions](/api-reference/nu/global-apis/Miscellaneous/BatchRecurringPaymentTransactions.md)


Batch job that looks for successfully settled 		Authorize.Net credit card transactions with the date range given. 		By default, the date range is within the past 31 days 		or since the last scheduled job ran. 		For each successfully settled Authorize.Net credit card, 		an ARB credit card payment, payment line, and transaction records 		are created and a processed payment email is sent to the payer. 		For declined credit cards, a declined payment email is sent to the payer. 		Note: An email is sent only if the payer is a person account with an email.



### [BatchUpcomingRecurringPaymentNotifier](/api-reference/nu/global-apis/Miscellaneous/BatchUpcomingRecurringPaymentNotifier.md)


Batch job that sends an upcoming email to 		the account whose next payment date is 15 days after 		the given notification date. By default, the notification 		date is today. 		Note: An email is sent only if the account is a person account 			with an email or a company whose primary contact has an email.



### [BatchUpdateCommitteeMembershipStatus](/api-reference/nu/global-apis/Miscellaneous/BatchUpdateCommitteeMembershipStatus.md)


The BatchUpdateCommitteeMembershipStatus class sets up a nightly schedule to update any committee membership statuses that have changed (i.e., Current to Past).  This assists in maintaining an up-to-date count of active committee memberships.



### [BillMe](/api-reference/nu/global-apis/Miscellaneous/BillMe.md)


The BillMeService external logic class. This provides the getBillMeServiceStatus and processBillMe for the Bill Me Payment Option. Custom implementations of this class will extend and override the functionality here.



### [BillMePaymentOption](/api-reference/nu/global-apis/Miscellaneous/BillMePaymentOption.md)


The Bill Me Payment Option implementation.



### [BillMeService](/api-reference/nu/global-apis/Miscellaneous/BillMeService.md)


The Bill Me Service determines whether a cart is available to be checked out as a "Bill Me" candidate. This means that the user will not be required to pay for the contents of the cart and will be billed at a later date for the balance.



### [BillingDisplay](/api-reference/nu/global-apis/Miscellaneous/BillingDisplay.md)


Provides methods for returning UI elements to display in the BulkBilling.component.



### [BulkBilling](/api-reference/nu/global-apis/Miscellaneous/BulkBilling.md)


This class is called by BatchBulkBilling and contains the logic necessary to generate bills, items, and item lines.



### [BulkBillingSettingsManager](/api-reference/nu/global-apis/Miscellaneous/BulkBillingSettingsManager.md)


Used to interact with the BulkBillingSetting__c custom settings object.



### [BulkPriceClassRequest](/api-reference/nu/global-apis/Miscellaneous/BulkPriceClassRequest.md)


Contains the information needed to request the price classes for multiple customers.



### [BulkPriceClassResponse](/api-reference/nu/global-apis/Miscellaneous/BulkPriceClassResponse.md)


Contains the Responses to the Bulk Price Class Request.



### [BulkProductPricingRequest](/api-reference/nu/global-apis/Miscellaneous/BulkProductPricingRequest.md)


Contains the information needed to price various products for multiple customers.



### [BulkProductPricingResponse](/api-reference/nu/global-apis/Miscellaneous/BulkProductPricingResponse.md)


Contains the Responses to the Bulk Product Pricing Request.



### [BulkSalesTaxRequest](/api-reference/nu/global-apis/Miscellaneous/BulkSalesTaxRequest.md)


Contains the information needed to determine which sales tax to apply for multiple contexts



### [BulkSalesTaxResponse](/api-reference/nu/global-apis/Miscellaneous/BulkSalesTaxResponse.md)


The response to a BulkSalesTaxRequest



### [BulkStateSalesTaxDefaulter](/api-reference/nu/global-apis/Miscellaneous/BulkStateSalesTaxDefaulter.md)


Determines which sales tax to use based on the address state or country.



### [Bundle](/api-reference/nu/global-apis/Miscellaneous/Bundle.md)


Represents a grouping of products. Tracks which products have been selected for purchase.



### [BundleComponent](/api-reference/nu/global-apis/Miscellaneous/BundleComponent.md)


Bundle Components represent products.



### [BundleComponentRequest](/api-reference/nu/global-apis/Miscellaneous/BundleComponentRequest.md)


This class is used to request a bundle component. A BundleComponentRequest will contain the record used to create a BundleComponent. Other information will be included such as special pricing data and term data. Bundle Component requests are created by IBundleConstructor classes then passed into the BundleComponentFactory class. The BundleComponentFactory determines which IBundleComponentConstructor should be used based on the Record Type specified on the request. The request is then provided to the IBundleComponentConstructor to create the BundleComponent.



### [BundleComponentSettingTestData](/api-reference/nu/global-apis/Miscellaneous/BundleComponentSettingTestData.md)


Used for creating and inserting BundleComponentSetting__c records. For testing only.



### [BundleRequest](/api-reference/nu/global-apis/Miscellaneous/BundleRequest.md)


This class is passed into the BundleService.cls to get products.



### [BundleService](/api-reference/nu/global-apis/Miscellaneous/BundleService.md)


Used to get products. Products will be priced throught the pricing manager. Term based products will have terms calculated and proration rules applied. Currently using temporary versions of request/response classes.



### [BundleSettingTestData](/api-reference/nu/global-apis/Miscellaneous/BundleSettingTestData.md)


Used for creating and inserting BundleSetting__c records. For testing only.



### [BusinessEventEnablementService](/api-reference/nu/global-apis/Miscellaneous/BusinessEventEnablementService.md)


Responsible of allowing the enablement of Business Events for SObject triggers.



### [BusinessEventEvaluation](/api-reference/nu/global-apis/Miscellaneous/BusinessEventEvaluation.md)


Represents an evaluation for the business event framework to be processed by a custom class. Contains all the information used internally to evaluate as a fallback in the event no custom class is used.



### [BusinessRuleSelectComponentController](/api-reference/nu/global-apis/Miscellaneous/BusinessRuleSelectComponentController.md)


An apex controller for a Lightning component designed to present a list of MDT_BusinessRule wrappers to select from.



### [CalculateARAging](/api-reference/nu/global-apis/Miscellaneous/CalculateARAging.md)


Calculates an Order's AR Aging. 		This class runs as a schedulable Batch Apex class.



### [CalculateAccountFinancials](/api-reference/nu/global-apis/Miscellaneous/CalculateAccountFinancials.md)


Calculates an Account's total balance and total money spent. 		This class runs as schedulable Batch Apex class.



### [CalculateAccountFinancialsRU](/api-reference/nu/global-apis/Miscellaneous/CalculateAccountFinancialsRU.md)


Rolls up the Total Balance and Total Money Spent of all accounts 		that have children. 		This class runs as a schedulable Batch Apex class.



### [CalculateEventRevenue](/api-reference/nu/global-apis/Miscellaneous/CalculateEventRevenue.md)


Calculates an Event's current revenue. 		This class runs as a schedulable Batch Apex class.



### [CallableFactory](/api-reference/nu/global-apis/Miscellaneous/CallableFactory.md)


Class which is acts as the global entry point to NU package.



### [CancellationService](/api-reference/nu/global-apis/Miscellaneous/CancellationService.md)


Various utility methods for the registration cancellation process.



### [CartItem](/api-reference/nu/global-apis/Miscellaneous/CartItem.md)


Used as the base class for classes used to wrap the CartItem__c sObject. This class is primarily used when adding products to a cart. The CartItem classes in conjunction with the BundleComponent classes specify the criteria which determines how products should be grouped in a cart.



### [CartItemLineTestData](/api-reference/nu/global-apis/Miscellaneous/CartItemLineTestData.md)


Builder class for dealing with CartItemLine__c records. Solely used for testing, NOT a data factory.



### [CartItemSettingTestData](/api-reference/nu/global-apis/Miscellaneous/CartItemSettingTestData.md)


Used for creating and inserting CartItemSetting__c records. For testing only.



### [CartItemTestData](/api-reference/nu/global-apis/Miscellaneous/CartItemTestData.md)


Builder class for dealing with CartItem__c records. Solely used for testing, NOT a data factory.



### [CartService](/api-reference/nu/global-apis/Miscellaneous/CartService.md)


Used for creating carts, clearing items from a cart, and updating a cart based on selection of bundle components.



### [CartSubmissionResult](/api-reference/nu/global-apis/Miscellaneous/CartSubmissionResult.md)


Stores the result of a DML operation, along with other information 		pertaining to the cart submission that resulted in the DML operation.



### [CartSubmitter](/api-reference/nu/global-apis/Miscellaneous/CartSubmitter.md)


Creates an order from a cart.



### [CartSubmitterTaxValidator](/api-reference/nu/global-apis/Miscellaneous/CartSubmitterTaxValidator.md)


In charge of validating that taxes have been correctly calculated during cart submission.



### [CartTestData](/api-reference/nu/global-apis/Miscellaneous/CartTestData.md)


Builder class for dealing with Cart__c records. Solely used for testing, NOT a data factory.



### [CashDetail](/api-reference/nu/global-apis/Miscellaneous/CashDetail.md)


Represents cash payment details.



### [CashPayment](/api-reference/nu/global-apis/Miscellaneous/CashPayment.md)


A subclass of Payment utilized for wrapping Payment__c records based upon cash payment types.



### [CheckDetail](/api-reference/nu/global-apis/Miscellaneous/CheckDetail.md)


Represents check payment details.



### [CheckPayment](/api-reference/nu/global-apis/Miscellaneous/CheckPayment.md)


A subclass of Payment utilized for wrapping Payment__c records based upon check payment types.



### [CollectionUtil](/api-reference/nu/global-apis/Miscellaneous/CollectionUtil.md)


Exposes methods and functions commonly 		used when working with collections.



### [ComponentGroup](/api-reference/nu/global-apis/Miscellaneous/ComponentGroup.md)


The base class for an object representing a collection of similar bundle components.



### [Constant](/api-reference/nu/global-apis/Miscellaneous/Constant.md)


Includes constants used by Nimble AMS. The global constants are commonly used when working with customizations/extensions.



### [CouponRuleValidator](/api-reference/nu/global-apis/Miscellaneous/CouponRuleValidator.md)


Base class that implements the default validation logic which determines whether or not a coupon code is valid. This class is used to validate coupon codes for all rules unless an override is explicity set on a coupon rule record.



### [CouponService](/api-reference/nu/global-apis/Miscellaneous/CouponService.md)


Used for validating coupon codes.



### [CouponTestData](/api-reference/nu/global-apis/Miscellaneous/CouponTestData.md)


Builder class for dealing with Coupon__c records. Solely used for testing, NOT a data factory.



### [CouponValidator](/api-reference/nu/global-apis/Miscellaneous/CouponValidator.md)


This class is used to validate coupon codes to determine whether or not coupon codes can be applied. This class is primarily used to query the records necessary for coupon validation. The actual validation for a single coupon is handled by instances of the CouponRuleValidator class. This class can be overridden to customize the data that needs to be queried.



### [CreditCardDetail](/api-reference/nu/global-apis/Miscellaneous/CreditCardDetail.md)


Represents credit card payment details.



### [CreditCardNameResponse](/api-reference/nu/global-apis/Miscellaneous/CreditCardNameResponse.md)


Used when parsing a credit card name into its parts.



### [CreditCardPaymentOption](/api-reference/nu/global-apis/Miscellaneous/CreditCardPaymentOption.md)


The Credit Card Payment Option implementation.



### [CurrenciesApi](/api-reference/nu/global-apis/Miscellaneous/CurrenciesApi.md)


Provides endpoints for currency management.



### [CurrenciesApiV1](/api-reference/nu/global-apis/Miscellaneous/CurrenciesApiV1.md)


Version 1 implementation of a service that deals with currencies.



### [CurrencyBase](/api-reference/nu/global-apis/Miscellaneous/CurrencyBase.md)


Represents a Currency.



### [CurrencyFormat](/api-reference/nu/global-apis/Miscellaneous/CurrencyFormat.md)


Represents a currency format that is being used.



### [DataFactoryARAging](/api-reference/nu/global-apis/Miscellaneous/DataFactoryARAging.md)


Exposes constants and methods commonly used for creating and inserting AR Aging records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.



### [DataFactoryAccount](/api-reference/nu/global-apis/Miscellaneous/DataFactoryAccount.md)


Exposes constants and methods commonly used for account creation. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.



### [DataFactoryAffiliation](/api-reference/nu/global-apis/Miscellaneous/DataFactoryAffiliation.md)


Exposes constants and methods commonly used for creating and inserting affiliations. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.



### [DataFactoryBatch](/api-reference/nu/global-apis/Miscellaneous/DataFactoryBatch.md)


Exposes constants and methods commonly used for creating and inserting Batch records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.



### [DataFactoryBatchExportConfiguration](/api-reference/nu/global-apis/Miscellaneous/DataFactoryBatchExportConfiguration.md)


Exposes constants and methods commonly used for creating and inserting Batch Export Configuration records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.



### [DataFactoryCart](/api-reference/nu/global-apis/Miscellaneous/DataFactoryCart.md)


Exposes constants and methods commonly used for creating and inserting Cart records. 		These constants and methods are global to help aid in testing customizations and extensions 		that are created outside of the package.



### [DataFactoryCartItem](/api-reference/nu/global-apis/Miscellaneous/DataFactoryCartItem.md)


Exposes constants and methods commonly used for creating and inserting Cart Item records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.



### [DataFactoryCartItemLine](/api-reference/nu/global-apis/Miscellaneous/DataFactoryCartItemLine.md)


Exposes constants and methods commonly used for creating and inserting Cart Item Line records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.



### [DataFactoryCartPayment](/api-reference/nu/global-apis/Miscellaneous/DataFactoryCartPayment.md)


Exposes constants and methods commonly used for creating and inserting Cart Payment records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.



### [DataFactoryCartPaymentLine](/api-reference/nu/global-apis/Miscellaneous/DataFactoryCartPaymentLine.md)


Exposes constants and methods commonly used for creating and inserting Cart Payment Line records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.



### [DataFactoryCommittee](/api-reference/nu/global-apis/Miscellaneous/DataFactoryCommittee.md)


Exposes constants and methods commonly used for creating and inserting Committee records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.



### [DataFactoryCommitteeMembership](/api-reference/nu/global-apis/Miscellaneous/DataFactoryCommitteeMembership.md)


Exposes constants and methods commonly used for creating and inserting Committee Membership records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.



### [DataFactoryCoupon](/api-reference/nu/global-apis/Miscellaneous/DataFactoryCoupon.md)


Exposes constants and methods commonly used for creating and inserting Coupon records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.



### [DataFactoryCouponCode](/api-reference/nu/global-apis/Miscellaneous/DataFactoryCouponCode.md)


Exposes constants and methods commonly used for creating and inserting Coupon Code records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.



### [DataFactoryCouponRule](/api-reference/nu/global-apis/Miscellaneous/DataFactoryCouponRule.md)


Exposes constants and methods commonly used for creating and inserting Coupon Rule records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.



### [DataFactoryCreditCardIssuer](/api-reference/nu/global-apis/Miscellaneous/DataFactoryCreditCardIssuer.md)


Exposes constants and methods commonly used for creating and inserting Credit Card Issuer records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.



### [DataFactoryDeferredRevenueMethod](/api-reference/nu/global-apis/Miscellaneous/DataFactoryDeferredRevenueMethod.md)


Exposes constants and methods commonly used for creating and inserting Deferred Revenue Method records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.



### [DataFactoryDonation](/api-reference/nu/global-apis/Miscellaneous/DataFactoryDonation.md)


Exposes constants and methods commonly used for creating and inserting Donation records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.



### [DataFactoryEntity](/api-reference/nu/global-apis/Miscellaneous/DataFactoryEntity.md)


Exposes constants and methods commonly used for creating and inserting Entity records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.



### [DataFactoryEntityCreditCardIssuer](/api-reference/nu/global-apis/Miscellaneous/DataFactoryEntityCreditCardIssuer.md)


Exposes constants and methods commonly used for creating and inserting Entity Credit Card Issuer records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.



### [DataFactoryEntityCrossover](/api-reference/nu/global-apis/Miscellaneous/DataFactoryEntityCrossover.md)


Exposes methods commonly used for creating and inserting Entity Crossover records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.



### [DataFactoryEntityOrderItem](/api-reference/nu/global-apis/Miscellaneous/DataFactoryEntityOrderItem.md)


Exposes constants and methods commonly used for creating and inserting Entity Order Item records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.



### [DataFactoryEntityPaymentMethod](/api-reference/nu/global-apis/Miscellaneous/DataFactoryEntityPaymentMethod.md)


Exposes constants and methods commonly used for creating and inserting Entity Payment Method records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.



### [DataFactoryEvent](/api-reference/nu/global-apis/Miscellaneous/DataFactoryEvent.md)


Exposes constants and methods commonly used for creating and inserting Event records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.



### [DataFactoryEventBadge](/api-reference/nu/global-apis/Miscellaneous/DataFactoryEventBadge.md)


Exposes constants and methods commonly used for creating and inserting Event Badge records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.



### [DataFactoryEventQuestion](/api-reference/nu/global-apis/Miscellaneous/DataFactoryEventQuestion.md)


Exposes constants and methods commonly used for creating and inserting Event Question records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.



### [DataFactoryEventSessionGroup](/api-reference/nu/global-apis/Miscellaneous/DataFactoryEventSessionGroup.md)


Exposes constants and methods commonly used for creating and inserting Event Session Group records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.



### [DataFactoryGLAccount](/api-reference/nu/global-apis/Miscellaneous/DataFactoryGLAccount.md)


Exposes constants and methods commonly used for creating and inserting GL Account records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.



### [DataFactoryMembership](/api-reference/nu/global-apis/Miscellaneous/DataFactoryMembership.md)


Exposes constants and methods commonly used for creating and inserting Membership records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.



### [DataFactoryMembershipType](/api-reference/nu/global-apis/Miscellaneous/DataFactoryMembershipType.md)


Exposes constants and methods commonly used for creating and inserting Membership Type records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.



### [DataFactoryMembershipTypeProductLink](/api-reference/nu/global-apis/Miscellaneous/DataFactoryMembershipTypeProductLink.md)


Exposes constants and methods commonly used for creating and inserting Membership Type Product Link records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.



### [DataFactoryMerchandise](/api-reference/nu/global-apis/Miscellaneous/DataFactoryMerchandise.md)


Exposes constants and methods commonly used for creating and inserting Merchandise records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.



### [DataFactoryOrder](/api-reference/nu/global-apis/Miscellaneous/DataFactoryOrder.md)


Exposes constants and methods commonly used for creating and inserting Order records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.



### [DataFactoryOrderItem](/api-reference/nu/global-apis/Miscellaneous/DataFactoryOrderItem.md)


Exposes constants and methods commonly used for creating and inserting Order Item records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.



### [DataFactoryOrderItemConfiguration](/api-reference/nu/global-apis/Miscellaneous/DataFactoryOrderItemConfiguration.md)


Exposes constants and methods commonly used for creating and inserting Order Item Configuration records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.



### [DataFactoryOrderItemLine](/api-reference/nu/global-apis/Miscellaneous/DataFactoryOrderItemLine.md)


Exposes constants and methods commonly used for creating and inserting Order Item Line records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.



### [DataFactoryPayment](/api-reference/nu/global-apis/Miscellaneous/DataFactoryPayment.md)


Exposes constants and methods commonly used for creating and inserting Payment records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.



### [DataFactoryPaymentLine](/api-reference/nu/global-apis/Miscellaneous/DataFactoryPaymentLine.md)


Exposes constants and methods commonly used for creating and inserting Payment Line records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.



### [DataFactoryPaymentMethod](/api-reference/nu/global-apis/Miscellaneous/DataFactoryPaymentMethod.md)


Exposes constants and methods commonly used for creating and inserting Payment Method records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.



### [DataFactoryPaymentSchedule](/api-reference/nu/global-apis/Miscellaneous/DataFactoryPaymentSchedule.md)


Exposes constants and methods commonly used for creating and inserting Payment Schedule records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.



### [DataFactoryPaymentScheduleLink](/api-reference/nu/global-apis/Miscellaneous/DataFactoryPaymentScheduleLink.md)


Exposes constants and methods commonly used for creating and inserting Payment Schedule Link records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.



### [DataFactoryPriceClass](/api-reference/nu/global-apis/Miscellaneous/DataFactoryPriceClass.md)


Exposes constants and methods commonly used for creating and inserting Price Class records. 				These constants and methods are global to help aid in testing customizations and extensions 				that are created outside of the package.



### [DataFactoryProduct](/api-reference/nu/global-apis/Miscellaneous/DataFactoryProduct.md)


Exposes constants and methods commonly used for creating and inserting Product records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.



### [DataFactoryProrationRule](/api-reference/nu/global-apis/Miscellaneous/DataFactoryProrationRule.md)


Exposes constants and methods commonly used for creating and inserting Proration Rule records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.



### [DataFactoryProrationRuleItem](/api-reference/nu/global-apis/Miscellaneous/DataFactoryProrationRuleItem.md)


Exposes constants and methods commonly used for creating and inserting Proration Rule Item records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.



### [DataFactoryRecurringPayment](/api-reference/nu/global-apis/Miscellaneous/DataFactoryRecurringPayment.md)


Exposes constants and methods commonly used for creating and inserting Recurring Payment records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.



### [DataFactoryRegistration](/api-reference/nu/global-apis/Miscellaneous/DataFactoryRegistration.md)


Exposes constants and methods commonly used for creating and inserting Registration records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.



### [DataFactorySalesTax](/api-reference/nu/global-apis/Miscellaneous/DataFactorySalesTax.md)


Exposes constants and methods commonly used for creating and inserting Sales Tax records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.



### [DataFactoryShipMethod](/api-reference/nu/global-apis/Miscellaneous/DataFactoryShipMethod.md)


Exposes constants and methods commonly used for creating and inserting Ship Method records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.



### [DataFactorySpecialPrice](/api-reference/nu/global-apis/Miscellaneous/DataFactorySpecialPrice.md)


Exposes constants and methods commonly used for creating and inserting Special Price records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.



### [DataFactorySubscription](/api-reference/nu/global-apis/Miscellaneous/DataFactorySubscription.md)


Exposes constants and methods commonly used for creating and inserting Subscription records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.



### [DataFactoryWaitlist](/api-reference/nu/global-apis/Miscellaneous/DataFactoryWaitlist.md)


Exposes methods commonly used for waitlist creation. These methods are global to help aid in testing customizations and extensions that are created outside of the package.



### [DeferredRevenueRecognizerJob](/api-reference/nu/global-apis/Miscellaneous/DeferredRevenueRecognizerJob.md)


A schedulable Batch Apex class that recognizes deferred revenue 		based on the date that the class is run.



### [DeferredScheduleCalculatorRequest](/api-reference/nu/global-apis/Miscellaneous/DeferredScheduleCalculatorRequest.md)


Contains information required to calculate the start date of a deferred schedule & number of times that deferred schedule will be recognized for a given order item line.



### [DeferredScheduleCalculatorResponse](/api-reference/nu/global-apis/Miscellaneous/DeferredScheduleCalculatorResponse.md)


Contains the calculated start date of a deferred schedule & number of times that deferred schedule will be recognized for a given order item line.



### [DetailTaxes](/api-reference/nu/global-apis/Miscellaneous/DetailTaxes.md)


A container class to hold detailed information about taxes for the EnhancedData class.



### [Donation](/api-reference/nu/global-apis/Miscellaneous/Donation.md)


An SObjectWrapper representing a Donation__c order history record.



### [DonationBundleComponent](/api-reference/nu/global-apis/Miscellaneous/DonationBundleComponent.md)


The Donation Bundle Component class is used to represent donation products.



### [DonationOrderItemTypeCartSubmitter](/api-reference/nu/global-apis/Miscellaneous/DonationOrderItemTypeCartSubmitter.md)


Performs actions when Donation Order Items are submitted through the Nimble AMS Order Process.



### [ECheckSettings](/api-reference/nu/global-apis/Miscellaneous/ECheckSettings.md)


Provides utility settings functionality for the overall eCheck feature.



### [EditEvaluationModalComponentController](/api-reference/nu/global-apis/Miscellaneous/EditEvaluationModalComponentController.md)


Controls the EditEvaluationModal Lightning component, providing server side functionality.



### [Email](/api-reference/nu/global-apis/Miscellaneous/Email.md)


Send emails through Salesforce or external email providers



### [EmailContent](/api-reference/nu/global-apis/Miscellaneous/EmailContent.md)


Provides access to a globally accessible String key-value-store for use in passing data to Visualforce email templates.



### [EnhancedPayment](/api-reference/nu/global-apis/Miscellaneous/EnhancedPayment.md)


Enhanced data to include with the transaction request to qualify for Level 2 and Level 3 exchange rates.



### [EnhancedPaymentLine](/api-reference/nu/global-apis/Miscellaneous/EnhancedPaymentLine.md)


Provides support for level 3 payment data.



### [EntityOrderItemConfigurationService](/api-reference/nu/global-apis/Miscellaneous/EntityOrderItemConfigurationService.md)


A service to access information about the Entity Order Item and their related Order Item Configuration records.



### [EvaluationListComponentController](/api-reference/nu/global-apis/Miscellaneous/EvaluationListComponentController.md)


Controls the evaluation list Lightning component.



### [EvaluationService](/api-reference/nu/global-apis/Miscellaneous/EvaluationService.md)


A service to facilitate the logical evaluation of business rules.



### [EvaluationServiceRequest](/api-reference/nu/global-apis/Miscellaneous/EvaluationServiceRequest.md)


Represents a request for the EvaluationService.



### [EvaluationServiceResponse](/api-reference/nu/global-apis/Miscellaneous/EvaluationServiceResponse.md)


Represents a response from a call to the EvaluationService.



### [EventAnswer](/api-reference/nu/global-apis/Miscellaneous/EventAnswer.md)


An SObjectWrapper representing an EventAnswer__c record related to a Registration2__c record.



### [EventBadge](/api-reference/nu/global-apis/Miscellaneous/EventBadge.md)


An SObjectWrapper representing an EventBadge__c record related to a Registration2__c record.



### [EventBadgeTestData](/api-reference/nu/global-apis/Miscellaneous/EventBadgeTestData.md)


Builder class for dealing with Event Badge records. Solely used for testing, NOT a data factory.



### [EventBundleRequest](/api-reference/nu/global-apis/Miscellaneous/EventBundleRequest.md)


This class is passed into the BundleService.cls to get sessions products.



### [EventHandlerRequest](/api-reference/nu/global-apis/Miscellaneous/EventHandlerRequest.md)


Request class for classes that implement the IEventHandler interface.



### [EventHandlerResponse](/api-reference/nu/global-apis/Miscellaneous/EventHandlerResponse.md)


Response class for classes that implement the IEventHandler interface.



### [EventHandlerService](/api-reference/nu/global-apis/Miscellaneous/EventHandlerService.md)


Service class for handling events in the application.



### [EventService](/api-reference/nu/global-apis/Miscellaneous/EventService.md)


Exposes methods and functions commonly 		used outside of the package for Events.



### [ExceptionDetails](/api-reference/nu/global-apis/Miscellaneous/ExceptionDetails.md)


Used to build log message details.



### [ExchangeRatesApi](/api-reference/nu/global-apis/Miscellaneous/ExchangeRatesApi.md)


Provides endpoints for currency exchange management.



### [ExchangeRatesApiV1](/api-reference/nu/global-apis/Miscellaneous/ExchangeRatesApiV1.md)


Version 1 implementation of a service that deals with exchange rates..



### [FalseEvaluator](/api-reference/nu/global-apis/Miscellaneous/FalseEvaluator.md)


An implementation of IEvaluation that always evaluates to false.



### [FeatureEnabledRequest](/api-reference/nu/global-apis/Miscellaneous/FeatureEnabledRequest.md)


Represents a request to an implementation of IFeatureEnabled to determine if a feature is enabled or not via the API.



### [FeatureEnabledResponse](/api-reference/nu/global-apis/Miscellaneous/FeatureEnabledResponse.md)


Represents a response from an implementation of IFeatureEnabled to determine if a feature is enabled or not via the API.



### [FeatureEnabledService](/api-reference/nu/global-apis/Miscellaneous/FeatureEnabledService.md)


A global API endpoint for package subscribers to determine whether or not a given feature is enabled based upon a standard request / response pattern.



### [FieldSetService](/api-reference/nu/global-apis/Miscellaneous/FieldSetService.md)


Service for getting and validating fields in a particular field set.



### [Frequency](/api-reference/nu/global-apis/Miscellaneous/Frequency.md)


Wrapper for Frequency__c.



### [FrequencyDatesGenerator](/api-reference/nu/global-apis/Miscellaneous/FrequencyDatesGenerator.md)


Class in charge of generating Dates based on a Frequency.



### [GenerateDatesRequest](/api-reference/nu/global-apis/Miscellaneous/GenerateDatesRequest.md)


Request class for interacting with the IGenerateDates interface.



### [GlobalEntryPoint](/api-reference/nu/global-apis/Miscellaneous/GlobalEntryPoint.md)


Allow entry into specified public classes/methods without defining them as global. 				Allows development of libraries distinctly without commiting to global endpoints until development is complete.



### [GuestBundleComponent](/api-reference/nu/global-apis/Miscellaneous/GuestBundleComponent.md)


A specialized type of BundleComponent representing guest badge products.



### [Hierarchies](/api-reference/nu/global-apis/Miscellaneous/Hierarchies.md)


The Hierarchies class represents a series of hierarchical data using nodes.



### [HierarchyRequest](/api-reference/nu/global-apis/Miscellaneous/HierarchyRequest.md)


HierarchyRequest specifies the information required to build hierarchical data.



### [HierarchyResponse](/api-reference/nu/global-apis/Miscellaneous/HierarchyResponse.md)


HierarchyResponse includes hierarchical data built for a particular record as well as additional information about those hierarchies. This response may also include errors if there was a problem generating the hierarchies.



### [HierarchyService](/api-reference/nu/global-apis/Miscellaneous/HierarchyService.md)


The HierarchyService is used to request hierarchical data based on the specified record Id. This service defers the generation of hierarchical data to the implementation of the IBuildHierarchies interface which corresponds to the SObjectType of the specified record Id.



### [HistoryDataGenerator](/api-reference/nu/global-apis/Miscellaneous/HistoryDataGenerator.md)


Represents configuration settings that control whether History records should be created or not for a particular OrderLine.



### [HistoryObjectUtil](/api-reference/nu/global-apis/Miscellaneous/HistoryObjectUtil.md)


Exposes methods and functions commonly used when working with the Nimble AMS history objects.



### [HostedCheckoutCCPaymentHandler](/api-reference/nu/global-apis/Miscellaneous/HostedCheckoutCCPaymentHandler.md)


A default handler class for handling the hosted checkout response for the credit card payment.



### [HostedCheckoutEPProfileHandler](/api-reference/nu/global-apis/Miscellaneous/HostedCheckoutEPProfileHandler.md)


A default handler class for handling the hosted checkout response for the external payment profiles.



### [HostedCheckoutJavaScriptHandler](/api-reference/nu/global-apis/Miscellaneous/HostedCheckoutJavaScriptHandler.md)


A default handler class for handling the hosted checkout response from JavaScript.



### [HostedCheckoutResponseParams](/api-reference/nu/global-apis/Miscellaneous/HostedCheckoutResponseParams.md)


A class representation of hosted checkout response params.



### [HostedCheckoutUrlGenerator](/api-reference/nu/global-apis/Miscellaneous/HostedCheckoutUrlGenerator.md)


The wrapper class for generating hosted checkout URL.



### [HostedCheckoutUrlGeneratorRequest](/api-reference/nu/global-apis/Miscellaneous/HostedCheckoutUrlGeneratorRequest.md)


The wrapper class containing the information needed for generating the hosted checkout url.



### [HostedCheckoutUrlGeneratorResponse](/api-reference/nu/global-apis/Miscellaneous/HostedCheckoutUrlGeneratorResponse.md)


The wrapper class containing the response from the hosted checkout generate url request.



### [IBatchExporter](/api-reference/nu/global-apis/Miscellaneous/IBatchExporter.md)






### [IBuildHierarchies](/api-reference/nu/global-apis/Miscellaneous/IBuildHierarchies.md)


IBuildHierarchies interface describes the implementation for a class that can be used to build representations of hierarchical data.



### [IBulkBilling](/api-reference/nu/global-apis/Miscellaneous/IBulkBilling.md)


Contains methods for generating bills, items, and item lines for a bulk billing.



### [IBulkPricingManager](/api-reference/nu/global-apis/Miscellaneous/IBulkPricingManager.md)


The interface that allows one to get price classes and product prices for multiple customers at the same time.



### [IBulkSalesTaxDefaulter](/api-reference/nu/global-apis/Miscellaneous/IBulkSalesTaxDefaulter.md)


Used to determine which sales tax to apply based on the address, account, and entity.



### [IBundleComponentConstructor](/api-reference/nu/global-apis/Miscellaneous/IBundleComponentConstructor.md)


Interface implemented by all classes used to construct instances of the BundleComponent.cls.



### [ICartItemConstructor](/api-reference/nu/global-apis/Miscellaneous/ICartItemConstructor.md)


Interface implemented by all classes used to construct instances of the CartItem.cls.



### [IDeferredScheduleCalculator](/api-reference/nu/global-apis/Miscellaneous/IDeferredScheduleCalculator.md)


Implement this interface to calculate the start date of a deferred schedule & number of times a deferred schedule will be recognized.



### [IEvaluation](/api-reference/nu/global-apis/Miscellaneous/IEvaluation.md)


A generic interface for evaluating conditionals.



### [IEventHandler](/api-reference/nu/global-apis/Miscellaneous/IEventHandler.md)


Interface implemented by all classes used for handling events.



### [IFeatureToggle](/api-reference/nu/global-apis/Miscellaneous/IFeatureToggle.md)


Interface implemented by classes that are used to determine if a specific feature is enabled.



### [IGenerateDates](/api-reference/nu/global-apis/Miscellaneous/IGenerateDates.md)


Interface that is used to generate dates for a Frequency.



### [IImage](/api-reference/nu/global-apis/Miscellaneous/IImage.md)


Represents an image.



### [IMembershipFlowdownManager](/api-reference/nu/global-apis/Miscellaneous/IMembershipFlowdownManager.md)






### [IMembershipFlowdownManager2](/api-reference/nu/global-apis/Miscellaneous/IMembershipFlowdownManager2.md)






### [IMembershipTermCalculator](/api-reference/nu/global-apis/Miscellaneous/IMembershipTermCalculator.md)






### [IOrderItemTypeCartSubmitter](/api-reference/nu/global-apis/Miscellaneous/IOrderItemTypeCartSubmitter.md)






### [IPaymentOptionConstructor](/api-reference/nu/global-apis/Miscellaneous/IPaymentOptionConstructor.md)


Interface to construct PaymentOptions.IOption instances. Used by the PaymentOptionsFactory to dynamically construct PaymentOptions.IOption using the constructors defined in the PaymentOption__mdt object.



### [IPricingImpl](/api-reference/nu/global-apis/Miscellaneous/IPricingImpl.md)


 @deprecated Use IBulkPricingManager instead.



### [IPricingManager](/api-reference/nu/global-apis/Miscellaneous/IPricingManager.md)


 @deprecated Use IBulkPricingManager instead.



### [IProvideFields](/api-reference/nu/global-apis/Miscellaneous/IProvideFields.md)


Signifies that a class intends to provide SObject fields.



### [IProvideSelectOptions](/api-reference/nu/global-apis/Miscellaneous/IProvideSelectOptions.md)


Implemented by classes to indicate that they provide a list of SelectOption instances.



### [IRecognitionCalculator](/api-reference/nu/global-apis/Miscellaneous/IRecognitionCalculator.md)


Interface that is used to calculate recognition amounts.



### [IRecurringPaymentProcessedNotifier](/api-reference/nu/global-apis/Miscellaneous/IRecurringPaymentProcessedNotifier.md)


Notifies users when recurring payments have been processed



### [IRecurringTransition](/api-reference/nu/global-apis/Miscellaneous/IRecurringTransition.md)


Handles recurring transitions.



### [IRefundPeriodSupport](/api-reference/nu/global-apis/Miscellaneous/IRefundPeriodSupport.md)


Denotes whether a Payment Gateway has a definite refund period or not - if its class implements this interface, it does. We use this to modify the functioning of manual refunding of payments for different gateways.



### [IRegistrationValidator](/api-reference/nu/global-apis/Miscellaneous/IRegistrationValidator.md)


DEPRECATED



### [IRegistrationValidator2](/api-reference/nu/global-apis/Miscellaneous/IRegistrationValidator2.md)


Validates registration records that are being inserted, updated, or deleted



### [ISalesTaxDefaulter](/api-reference/nu/global-apis/Miscellaneous/ISalesTaxDefaulter.md)






### [IShippingCalculator](/api-reference/nu/global-apis/Miscellaneous/IShippingCalculator.md)


The interface that allows one to get the shipping and handling costs for the request passed in.



### [InstallScript](/api-reference/nu/global-apis/Miscellaneous/InstallScript.md)


Automatically invoked when package is installed. The class populates several objects, such as Security Recovery Questions, Credit Card Issuers, icons for stock Products, default Payment Methods, and default Configuration messages, along with routine maintenance tasks that are needed between releases.



### [Invoice](/api-reference/nu/global-apis/Miscellaneous/Invoice.md)


Stores invoice details needed to process order invoices. 		Controller for the Invoice component.



### [Logger](/api-reference/nu/global-apis/Miscellaneous/Logger.md)


Used to create logs for the NU.Loggers defined in the Logger__c Custom Settings.



### [MDT_AdditionalSetting](/api-reference/nu/global-apis/Miscellaneous/MDT_AdditionalSetting.md)


The wrapper class for AdditionalSetting__mdt custom metadata type records.



### [MDT_CountryCode](/api-reference/nu/global-apis/Miscellaneous/MDT_CountryCode.md)


The wrapper class for CountryCode__mdt custom metadata type records.



### [MDT_Query](/api-reference/nu/global-apis/Miscellaneous/MDT_Query.md)


A basic wrapper for reading both Query__c and SOQLQuery__mdt records. Intended to only write to SOQLQuery__mdt records.



### [Membership](/api-reference/nu/global-apis/Miscellaneous/Membership.md)


An SObjectWrapper representing a Membership__c order history record.



### [MembershipBulkBilling](/api-reference/nu/global-apis/Miscellaneous/MembershipBulkBilling.md)


Contains the logic necessary to generate bills, items, and item lines for memberships.



### [MembershipBundleComponent](/api-reference/nu/global-apis/Miscellaneous/MembershipBundleComponent.md)


The Membership Bundle Component class is used to represent membership products.



### [MembershipBundleDisplay](/api-reference/nu/global-apis/Miscellaneous/MembershipBundleDisplay.md)


Used to control the display for selecting membership bundle components.



### [MembershipBundleDisplayFactory](/api-reference/nu/global-apis/Miscellaneous/MembershipBundleDisplayFactory.md)


Used to build MembershipBundleDisplay instances based on a list of components. Only MembershipBundleComponents with a Display Class set will be used for constructing.



### [MembershipBundleRequest](/api-reference/nu/global-apis/Miscellaneous/MembershipBundleRequest.md)


This class is passed into the BundleService.cls to get membership products.



### [MembershipDeferredScheduleCalculator](/api-reference/nu/global-apis/Miscellaneous/MembershipDeferredScheduleCalculator.md)


Calculates deferred schedules for memberships.



### [MembershipFlowdown](/api-reference/nu/global-apis/Miscellaneous/MembershipFlowdown.md)


Exposes a context for processing membership flowdown.



### [MembershipFlowdownNotificationController](/api-reference/nu/global-apis/Miscellaneous/MembershipFlowdownNotificationController.md)






### [MembershipOrderItemTypeCartSubmitter](/api-reference/nu/global-apis/Miscellaneous/MembershipOrderItemTypeCartSubmitter.md)


Performs actions when Membership Order Items are submitted through the Nimble AMS Order Process.



### [MembershipService](/api-reference/nu/global-apis/Miscellaneous/MembershipService.md)


Exposes methods and functions commonly 		used outside of the package for Memberships.



### [MembershipTermInfo](/api-reference/nu/global-apis/Miscellaneous/MembershipTermInfo.md)


Encapsulates values that express a membership term. 		Used with IMembershipTermCalculator implementations.



### [MembershipTermRequest](/api-reference/nu/global-apis/Miscellaneous/MembershipTermRequest.md)


Encapsulates values that initiate a membership term calculation. 		Used with IMembershipTermCalculator implementations.



### [MembershipTermRequestInfo](/api-reference/nu/global-apis/Miscellaneous/MembershipTermRequestInfo.md)


Encapsulates individual membership term parameters. 		Permits calculating multiple membership terms for the same account placed in a cart.



### [MembershipTermResponse](/api-reference/nu/global-apis/Miscellaneous/MembershipTermResponse.md)


Encapsulates a list of membership terms as determined by 		an IMembershipTermCalculator implementation.



### [Merchandise](/api-reference/nu/global-apis/Miscellaneous/Merchandise.md)


An SObjectWrapper representing a Merchandise__c order history record.



### [MerchandiseBundleComponent](/api-reference/nu/global-apis/Miscellaneous/MerchandiseBundleComponent.md)


A bundle component that represents a merchandise product.



### [MerchandiseBundleRequest](/api-reference/nu/global-apis/Miscellaneous/MerchandiseBundleRequest.md)


An instance of this class is passed into BundleService to get Merchandise products.



### [MerchandiseOrderItemTypeCartSubmitter](/api-reference/nu/global-apis/Miscellaneous/MerchandiseOrderItemTypeCartSubmitter.md)


Performs actions when Merchandise Order Items are submitted through the Nimble AMS Order Process.



### [MetadataMigrator](/api-reference/nu/global-apis/Miscellaneous/MetadataMigrator.md)


Handles the migration of SObject records to Custom Metadata Type records.



### [Miscellaneous](/api-reference/nu/global-apis/Miscellaneous/Miscellaneous.md)


An SObjectWrapper representing a Miscellaneous__c order history record.



### [MiscellaneousOrderItemTypeCartSubmitter](/api-reference/nu/global-apis/Miscellaneous/MiscellaneousOrderItemTypeCartSubmitter.md)


Performs actions when Miscellaneous Order Items are submitted through 			the Nimble AMS Order Process.



### [MockFeatureEnabledService](/api-reference/nu/global-apis/Miscellaneous/MockFeatureEnabledService.md)


A mock implementation of IFeatureEnabled for use in unit testing.



### [MockPaymentGateway](/api-reference/nu/global-apis/Miscellaneous/MockPaymentGateway.md)


Deprecated. Use MockPaymentGateway2 instead.



### [MockPaymentGateway2](/api-reference/nu/global-apis/Miscellaneous/MockPaymentGateway2.md)


This class is used in unit tests for classes which interact with the PaymentGatewayService.



### [NimbleAMSSettingsTestHelpers](/api-reference/nu/global-apis/Miscellaneous/NimbleAMSSettingsTestHelpers.md)


Used to set values on the NimbleAMSSettings record in a test context.



### [NimbleAmsSettingsService](/api-reference/nu/global-apis/Miscellaneous/NimbleAmsSettingsService.md)


Provides global access to various NimbleAmsSettings__c record fields via methods.



### [Node](/api-reference/nu/global-apis/Miscellaneous/Node.md)


The node class represents a single point a hierarchical data set. This class can be extended to create nodes that represent different types of data.



### [OperationMessage](/api-reference/nu/global-apis/Miscellaneous/OperationMessage.md)


Extracts the message returned by a DML operation exception.



### [OperationMessageLevel](/api-reference/nu/global-apis/Miscellaneous/OperationMessageLevel.md)


Encapsulates available message levels for an DML operation: INFO, WARNING, and ERROR.



### [OperationResult](/api-reference/nu/global-apis/Miscellaneous/OperationResult.md)


Stores the result of a DML operation.



### [OperationStatus](/api-reference/nu/global-apis/Miscellaneous/OperationStatus.md)


Encapsulates available message statuses for an DML operation: SUCCESS and FAILURE.



### [OrderConfirmation](/api-reference/nu/global-apis/Miscellaneous/OrderConfirmation.md)


Stores order details needed to process confirmations. Used in staff view, self service and community hub.



### [OrderConfirmationService](/api-reference/nu/global-apis/Miscellaneous/OrderConfirmationService.md)


A utility service for sending order confirmation emails.



### [OrderController](/api-reference/nu/global-apis/Miscellaneous/OrderController.md)


Manages the Nimble AMS Order Process. Global so that custom order pages can be implemented and controlled by this class.



### [OrderItemLineTestData](/api-reference/nu/global-apis/Miscellaneous/OrderItemLineTestData.md)


Builder class for dealing with OrderItemLine__c records. Solely used for testing, NOT a data factory.



### [OrderItemTestData](/api-reference/nu/global-apis/Miscellaneous/OrderItemTestData.md)


Builder class for dealing with OrderItem__c records. Solely used for testing, NOT a data factory.



### [OrderProcessorMonitor](/api-reference/nu/global-apis/Miscellaneous/OrderProcessorMonitor.md)


Sends an email to ndev@nimbleams.com if any self service orders have 		remained in the queue for longer than a day. This schedulable Batch Apex 		class finds potential problems in the Self Service Order Process.



### [OrderProcessorTaxValidator](/api-reference/nu/global-apis/Miscellaneous/OrderProcessorTaxValidator.md)


In charge of validating that taxes have been correctly calculated when Orders are being processed.



### [OrderService](/api-reference/nu/global-apis/Miscellaneous/OrderService.md)


Handle interactions with Orders.



### [OrderTestData](/api-reference/nu/global-apis/Miscellaneous/OrderTestData.md)


Builder class for dealing with Order__c records. Solely used for testing, NOT a data factory.



### [Payment](/api-reference/nu/global-apis/Miscellaneous/Payment.md)


A base class utilized for wrapping Payment__c records generically.



### [PaymentBuilder](/api-reference/nu/global-apis/Miscellaneous/PaymentBuilder.md)


Creates Payment for order.



### [PaymentDetail](/api-reference/nu/global-apis/Miscellaneous/PaymentDetail.md)


Base class used to represent payment details.



### [PaymentOptions](/api-reference/nu/global-apis/Miscellaneous/PaymentOptions.md)


Base class to deal with Payment Options.



### [PaymentOptionsService](/api-reference/nu/global-apis/Miscellaneous/PaymentOptionsService.md)


Used as a proxy to communicate with the correct PaymentOptions instance as specified in the custom settings.



### [PaymentService](/api-reference/nu/global-apis/Miscellaneous/PaymentService.md)


Handles requests for payment.



### [PaymentServiceRequest](/api-reference/nu/global-apis/Miscellaneous/PaymentServiceRequest.md)


A payment request.



### [PermissionSetAssignmentUpdaterJob](/api-reference/nu/global-apis/Miscellaneous/PermissionSetAssignmentUpdaterJob.md)


Runs weekly to update the new user's by assigning them with Net Promoter Score Survey Permission set.



### [Pluggable](/api-reference/nu/global-apis/Miscellaneous/Pluggable.md)


Base class for API plugins to extend from.



### [PriceBase](/api-reference/nu/global-apis/Miscellaneous/PriceBase.md)


Base abstract class that represents a price.



### [PriceClassManager](/api-reference/nu/global-apis/Miscellaneous/PriceClassManager.md)


Exposes the method for getting the pricing manager.



### [PriceClassRequest](/api-reference/nu/global-apis/Miscellaneous/PriceClassRequest.md)


Extends PricingRequestBase, which stores information needed to determine product pricing for an Account.



### [PriceClassResponse](/api-reference/nu/global-apis/Miscellaneous/PriceClassResponse.md)


The response to a price class request which contains the customer's price class.



### [PriceProrater](/api-reference/nu/global-apis/Miscellaneous/PriceProrater.md)


Prorates a term based price based on the join date within the term as given by the start and end date and the proration rule items.



### [PriceProrationRequest](/api-reference/nu/global-apis/Miscellaneous/PriceProrationRequest.md)


The parameter object for prorating a price based on a join date within a term for the PriceProrater class.



### [PriceProrationResponse](/api-reference/nu/global-apis/Miscellaneous/PriceProrationResponse.md)


The object returned from prorating a price.



### [Prices](/api-reference/nu/global-apis/Miscellaneous/Prices.md)


Represents a group of PriceBase collection.



### [PricingRequestBase](/api-reference/nu/global-apis/Miscellaneous/PricingRequestBase.md)


Stores information needed to determine product pricing for an Account.



### [PricingSettingsTestData](/api-reference/nu/global-apis/Miscellaneous/PricingSettingsTestData.md)


This class is used to create PricingSettings__c records for unit tests.



### [Product](/api-reference/nu/global-apis/Miscellaneous/Product.md)


Represents a Product.



### [ProductBase](/api-reference/nu/global-apis/Miscellaneous/ProductBase.md)


Base abstract class that represents a product for the ProductsApi.



### [ProductPricingInfo](/api-reference/nu/global-apis/Miscellaneous/ProductPricingInfo.md)


Stores information needed to determine product pricing for a Product.



### [ProductPricingRequest](/api-reference/nu/global-apis/Miscellaneous/ProductPricingRequest.md)


Extends PricingRequestBase, which stores information needed to determine product pricing for an Account.



### [ProductPricingResponse](/api-reference/nu/global-apis/Miscellaneous/ProductPricingResponse.md)


The response to a product pricing request which contains the calculated product prices.



### [ProductService](/api-reference/nu/global-apis/Miscellaneous/ProductService.md)


Utility class for interacting with Product__c records.



### [ProductShippingInfo](/api-reference/nu/global-apis/Miscellaneous/ProductShippingInfo.md)


Stores information needed to determine shipping costs for a Product.



### [ProductVariant](/api-reference/nu/global-apis/Miscellaneous/ProductVariant.md)


Represents a product variant that is linked to a parent product.



### [ProductsApi](/api-reference/nu/global-apis/Miscellaneous/ProductsApi.md)


Provides endpoints for currency management.



### [ProductsApiRetriever](/api-reference/nu/global-apis/Miscellaneous/ProductsApiRetriever.md)


In charge of retrieving product data and returning the corresponding Product wrappers.



### [ProductsApiV1](/api-reference/nu/global-apis/Miscellaneous/ProductsApiV1.md)


Version 1 implementation of the ProductsApi. Do not call directly, but through ProductsApi.v1.



### [ProductsApiV1Retriever](/api-reference/nu/global-apis/Miscellaneous/ProductsApiV1Retriever.md)


Responsible for retrieving products and returning the corresponding ProductBase instances.



### [Q](/api-reference/nu/global-apis/Miscellaneous/Q.md)


Q is used to build SOQL statements.



### [QAndGroup](/api-reference/nu/global-apis/Miscellaneous/QAndGroup.md)


QAndGroup is used to build a SOQL WHERE clause with parenthetical groupings of logical AND operators.



### [QCondition](/api-reference/nu/global-apis/Miscellaneous/QCondition.md)


QCondition is used to build WHERE for SOQL statements.



### [QConditionGroup](/api-reference/nu/global-apis/Miscellaneous/QConditionGroup.md)


QConditionGroup is an abstract class extended by QAandGroup and QOrGroup to build parenthetical groupings.



### [QICondition](/api-reference/nu/global-apis/Miscellaneous/QICondition.md)


An interface to be implemented by shared classes that build SOQL conditions.



### [QOrGroup](/api-reference/nu/global-apis/Miscellaneous/QOrGroup.md)


QOrGroup is used to build a SOQL WHERE clause with parenthetical groupings of logical OR operators.



### [QOrder](/api-reference/nu/global-apis/Miscellaneous/QOrder.md)


QOrder is used to build ORDER BY for SOQL statements.



### [QPlugin](/api-reference/nu/global-apis/Miscellaneous/QPlugin.md)


Plugin class that introduces Q behavior for use in retrievers.



### [QueryService](/api-reference/nu/global-apis/Miscellaneous/QueryService.md)


A service for interacting with Query__c records.



### [QueryServiceRequest2](/api-reference/nu/global-apis/Miscellaneous/QueryServiceRequest2.md)


Represents a request to QueryService.



### [RecognitionCalculatorRequest](/api-reference/nu/global-apis/Miscellaneous/RecognitionCalculatorRequest.md)


Request class for interacting with the IRecognitionCalculator interface.



### [ReconciliationService](/api-reference/nu/global-apis/Miscellaneous/ReconciliationService.md)


Provides methods for reconciling various aspects of Payment records.



### [RecordTag](/api-reference/nu/global-apis/Miscellaneous/RecordTag.md)


Wrapper for RecordTag__c.



### [RecurringItem](/api-reference/nu/global-apis/Miscellaneous/RecurringItem.md)


A class with input values required for recurring an order item.



### [RecurringPriceRequest](/api-reference/nu/global-apis/Miscellaneous/RecurringPriceRequest.md)


Used when calling out to get recurring price.



### [RecurringPriceResponse](/api-reference/nu/global-apis/Miscellaneous/RecurringPriceResponse.md)


Used when generating responses to get recurred price.



### [RecurringPriceService](/api-reference/nu/global-apis/Miscellaneous/RecurringPriceService.md)


Service to get price of recurred order.



### [RecurringRequest](/api-reference/nu/global-apis/Miscellaneous/RecurringRequest.md)


Represents a deserializable JSON request from the Lightning UI to generate a schedules for recurring payments.



### [RecurringService](/api-reference/nu/global-apis/Miscellaneous/RecurringService.md)


Service in charge of operations related to the Recurring Payment feature.



### [RecurringTransitionRequest](/api-reference/nu/global-apis/Miscellaneous/RecurringTransitionRequest.md)


Request class for interacting with IRecurringTransition implementations.



### [RecurringTransitionResponse](/api-reference/nu/global-apis/Miscellaneous/RecurringTransitionResponse.md)


Response class with the result from a IRecurringTransition process.



### [RefundOptions](/api-reference/nu/global-apis/Miscellaneous/RefundOptions.md)


Utilized for determining the various refund options available for an adjustment cart of an existing order.



### [RefundService](/api-reference/nu/global-apis/Miscellaneous/RefundService.md)


Various utility methods for determining available refund options.



### [Registration](/api-reference/nu/global-apis/Miscellaneous/Registration.md)


An SObjectWrapper representing a Registration2__c record related to an OrderItem__c record.



### [RegistrationDeferredScheduleCalculator](/api-reference/nu/global-apis/Miscellaneous/RegistrationDeferredScheduleCalculator.md)


Calculates deferred schedules for registrations.



### [RegistrationOrderItemTypeCartSubmitter](/api-reference/nu/global-apis/Miscellaneous/RegistrationOrderItemTypeCartSubmitter.md)


Performs actions when Registration Order Items are submitted through 		the Nimble AMS Order Process.



### [ResetPasswordLinkController](/api-reference/nu/global-apis/Miscellaneous/ResetPasswordLinkController.md)


Deprecated.



### [SalesTaxManager](/api-reference/nu/global-apis/Miscellaneous/SalesTaxManager.md)


Exposes methods for getting the sales tax manager and calculating the sales tax amount.



### [SalesTaxRequest](/api-reference/nu/global-apis/Miscellaneous/SalesTaxRequest.md)


Contains the information needed to determine which sales tax to apply.



### [SalesTaxResponse](/api-reference/nu/global-apis/Miscellaneous/SalesTaxResponse.md)


The response to a SalesTaxRequest, containing the sales tax id and rate.



### [SaveCartRequest](/api-reference/nu/global-apis/Miscellaneous/SaveCartRequest.md)


Stores a request for a cart save action based on a bundle supplied to the CartService.cls.



### [SaveCartResponse](/api-reference/nu/global-apis/Miscellaneous/SaveCartResponse.md)


Stores the result of DML operations made to a cart based on a bundle supplied to the CartService.cls



### [Schedule](/api-reference/nu/global-apis/Miscellaneous/Schedule.md)


Wrapper for Schedule__c.



### [ScheduleLine](/api-reference/nu/global-apis/Miscellaneous/ScheduleLine.md)


Wraps a ScheduleLine__c record.



### [ScheduleLinesProcessorJob](/api-reference/nu/global-apis/Miscellaneous/ScheduleLinesProcessorJob.md)


Executed nightly to process ScheduleLine objects with today's date.



### [ScheduleRequest](/api-reference/nu/global-apis/Miscellaneous/ScheduleRequest.md)


Represents a deserializable JSON request from the Lightning UI to generate a schedule / lines.



### [ScheduleService](/api-reference/nu/global-apis/Miscellaneous/ScheduleService.md)


A service to handle the updating of ScheduleLine__c records.



### [SelfService](/api-reference/nu/global-apis/Miscellaneous/SelfService.md)


Contains web service methods for integrating with Self Service.



### [SelfServiceBuildCart](/api-reference/nu/global-apis/Miscellaneous/SelfServiceBuildCart.md)


The RESTful resource for building carts in Self Service.



### [SelfServiceCoupon](/api-reference/nu/global-apis/Miscellaneous/SelfServiceCoupon.md)


The RESTful resource for validating coupons in Self Service.



### [SelfServiceEmail](/api-reference/nu/global-apis/Miscellaneous/SelfServiceEmail.md)


The RESTful resource for sending emails in Self Service.



### [SelfServiceOrder](/api-reference/nu/global-apis/Miscellaneous/SelfServiceOrder.md)


The RESTful resource for submitting orders in Self Service.



### [SelfServicePassword](/api-reference/nu/global-apis/Miscellaneous/SelfServicePassword.md)






### [SelfServicePriceClass](/api-reference/nu/global-apis/Miscellaneous/SelfServicePriceClass.md)






### [SelfServicePricing](/api-reference/nu/global-apis/Miscellaneous/SelfServicePricing.md)






### [SelfServiceRecurringPaymentCalculator](/api-reference/nu/global-apis/Miscellaneous/SelfServiceRecurringPaymentCalculator.md)


The RESTful resource for calculating recurring payments in Self Service.



### [SelfServiceSObjects](/api-reference/nu/global-apis/Miscellaneous/SelfServiceSObjects.md)






### [SelfServiceSObjectsByExternalId](/api-reference/nu/global-apis/Miscellaneous/SelfServiceSObjectsByExternalId.md)






### [SelfServiceSettings](/api-reference/nu/global-apis/Miscellaneous/SelfServiceSettings.md)


The RESTful resource for retrieving settings in Self Service.



### [SelfServiceShippingCalculator](/api-reference/nu/global-apis/Miscellaneous/SelfServiceShippingCalculator.md)






### [SelfServiceSubmitCart](/api-reference/nu/global-apis/Miscellaneous/SelfServiceSubmitCart.md)


The RESTful resource for submitting a cart in Self Service.



### [SelfServiceTax](/api-reference/nu/global-apis/Miscellaneous/SelfServiceTax.md)






### [SendEmailInvAct](/api-reference/nu/global-apis/Miscellaneous/SendEmailInvAct.md)


Invocable Action that allows for sending emails through a Flow or Process Builder and uses the internal configured email service (like Sendgrid).



### [SessionBundleComponent](/api-reference/nu/global-apis/Miscellaneous/SessionBundleComponent.md)


A specialized type of BundleComponent representing session products.



### [SessionGroup](/api-reference/nu/global-apis/Miscellaneous/SessionGroup.md)


Represents the EventSessionGroup__c object.



### [ShippingCalculatorException](/api-reference/nu/global-apis/Miscellaneous/ShippingCalculatorException.md)


An exception to be used with Shipping Calculators. This globally accessible so that it can be used by Custom Shipping Calculators.



### [ShippingCalculatorManager](/api-reference/nu/global-apis/Miscellaneous/ShippingCalculatorManager.md)


Exposes the method for getting the shipping calculator.



### [ShippingCalculatorRequest](/api-reference/nu/global-apis/Miscellaneous/ShippingCalculatorRequest.md)


Stores information needed to determine shipping and handling calculations.



### [ShippingCalculatorResponse](/api-reference/nu/global-apis/Miscellaneous/ShippingCalculatorResponse.md)


The response to a shipping calculator request which contains the calculated shipping and handling costs for a ship method.



### [ShippingService](/api-reference/nu/global-apis/Miscellaneous/ShippingService.md)


Service used to calculate shipping costs for each ship method.



### [ShippingServiceRequest](/api-reference/nu/global-apis/Miscellaneous/ShippingServiceRequest.md)


Request class used for ShippingService.



### [ShippingServiceResponse](/api-reference/nu/global-apis/Miscellaneous/ShippingServiceResponse.md)


The response class used by ShippingService.



### [StandardBulkPricingManager](/api-reference/nu/global-apis/Miscellaneous/StandardBulkPricingManager.md)


Exposes methods for the bulk standard Pricing Manager. Exposes methods to determine the price class and product pricing for multiple customers.



### [StandardGreatPlainsBatchExporter](/api-reference/nu/global-apis/Miscellaneous/StandardGreatPlainsBatchExporter.md)


Exposes methods for the standard Great Plain Batch Exporter.



### [StandardMembershipFlowdownManager](/api-reference/nu/global-apis/Miscellaneous/StandardMembershipFlowdownManager.md)


Deprecated. Use the StandardMembershipFlowdownManager2 instead.



### [StandardMembershipFlowdownManager2](/api-reference/nu/global-apis/Miscellaneous/StandardMembershipFlowdownManager2.md)


Exposes methods for the standard Membership Flowdown Manager. 		Performs actions to affiliated accounts when accounts, memberships, and affiliations are updated.



### [StandardPricingImpl](/api-reference/nu/global-apis/Miscellaneous/StandardPricingImpl.md)


Deprecated. Use the StandardPricingManager instead.



### [StandardPricingManager](/api-reference/nu/global-apis/Miscellaneous/StandardPricingManager.md)


Exposes methods for the standard Pricing Manager. 		Exposes methods to determine the price class and product pricing.



### [StandardRegistrationValidator](/api-reference/nu/global-apis/Miscellaneous/StandardRegistrationValidator.md)


The standard implementation of the IRegistrationValidator2 interface. 		It prevents the deletion of registrations connected to an order, and the insertion 		of duplicate registrations with the same account and event



### [StandardShippingCalculator](/api-reference/nu/global-apis/Miscellaneous/StandardShippingCalculator.md)


The standard shipping calculator. 		Exposes methods to determine the valid 		ship methods and shipping & handling costs for the request passed in.



### [StateSalesTaxDefaulter](/api-reference/nu/global-apis/Miscellaneous/StateSalesTaxDefaulter.md)


Exposes methods for the standard Sales Tax Defaulter. 		Exposes the method to determine the sales tax.



### [StoredPaymentDetail](/api-reference/nu/global-apis/Miscellaneous/StoredPaymentDetail.md)


Represents stored payment details.



### [StoredPaymentPaymentOption](/api-reference/nu/global-apis/Miscellaneous/StoredPaymentPaymentOption.md)


The Stored Payment Payment Option implementation.



### [StoredPaymentsSettings](/api-reference/nu/global-apis/Miscellaneous/StoredPaymentsSettings.md)


This class is used to retrieve and interact with the protected StoredPaymentsSettings__c hierarchical custom setting.



### [StoredPaymentsSettingsTestData](/api-reference/nu/global-apis/Miscellaneous/StoredPaymentsSettingsTestData.md)


This class is used to create StoredPaymentsSettings__c records for unit tests.



### [StringUtil](/api-reference/nu/global-apis/Miscellaneous/StringUtil.md)


Exposes methods and functions for manipulating strings.



### [Subscription](/api-reference/nu/global-apis/Miscellaneous/Subscription.md)


An SObjectWrapper representing a Subscription__c order history record.



### [SubscriptionDeferredScheduleCalculator](/api-reference/nu/global-apis/Miscellaneous/SubscriptionDeferredScheduleCalculator.md)


Calculates deferred schedules for subscriptions.



### [SubscriptionOrderItemTypeCartSubmitter](/api-reference/nu/global-apis/Miscellaneous/SubscriptionOrderItemTypeCartSubmitter.md)


Performs actions when Subscription Order Items are submitted through the Nimble AMS Order Process.



### [SystemUtil](/api-reference/nu/global-apis/Miscellaneous/SystemUtil.md)


Contains various utility methods for interacting with the platform.



### [TagService](/api-reference/nu/global-apis/Miscellaneous/TagService.md)


Get Related Record Ids based on the Tags associated with given Record.



### [TagServiceRequest](/api-reference/nu/global-apis/Miscellaneous/TagServiceRequest.md)


Contains the information needed to request the TagService class.



### [TagServiceResponse](/api-reference/nu/global-apis/Miscellaneous/TagServiceResponse.md)


Used when generating responses from TagService.



### [TaxValidatorResult](/api-reference/nu/global-apis/Miscellaneous/TaxValidatorResult.md)


Stores the resulting data from the validation operation.



### [TaxationApiException](/api-reference/nu/global-apis/Miscellaneous/TaxationApiException.md)


Signals that an error has occurred when interacting with the TaxationApi.



### [TermInfo](/api-reference/nu/global-apis/Miscellaneous/TermInfo.md)


Represents information about terms.



### [TermProrationRequest](/api-reference/nu/global-apis/Miscellaneous/TermProrationRequest.md)


The parameter object containing the values for prorating a term.



### [TermProrationResponse](/api-reference/nu/global-apis/Miscellaneous/TermProrationResponse.md)


The parameter object containing the resulting prorated term (StartDate and EndDate) 		and the Proration Rule Item used to generate it.



### [TermService](/api-reference/nu/global-apis/Miscellaneous/TermService.md)


Service for calculating the start dates, end dates, and proration rules of products with terms.



### [TermServiceRequest](/api-reference/nu/global-apis/Miscellaneous/TermServiceRequest.md)


Represents a request to TermService.



### [TermServiceResponse](/api-reference/nu/global-apis/Miscellaneous/TermServiceResponse.md)


Represents a response from TermService.



### [TestUtil](/api-reference/nu/global-apis/Miscellaneous/TestUtil.md)


Exposes constants and methods commonly used within test code.



### [TransactionGenerator](/api-reference/nu/global-apis/Miscellaneous/TransactionGenerator.md)


This class performs calculations to generate Transaction records based on payments being applied (or no payments being applied) to Order Items or prepayments being applied to an account.



### [TriggerHandlerManager](/api-reference/nu/global-apis/Miscellaneous/TriggerHandlerManager.md)


A class for managing trigger handlers that can be disabled



### [TriggerHandlersBase](/api-reference/nu/global-apis/Miscellaneous/TriggerHandlersBase.md)


A base class for implementing trigger handlers



### [TriggerUtil](/api-reference/nu/global-apis/Miscellaneous/TriggerUtil.md)


A utility class for trigger handlers



### [TrueEvaluator](/api-reference/nu/global-apis/Miscellaneous/TrueEvaluator.md)


An implementation of IEvaluation that always evaluates to true.



### [UnitOfWork](/api-reference/nu/global-apis/Miscellaneous/UnitOfWork.md)


Provides an implementation of the Enterprise Application Architecture Unit Of Work, as defined by Martin Fowler: http://martinfowler.com/eaaCatalog/unitOfWork.html - Applies bulkification to DML operations, insert, update and delete. - Manages a business transaction around the work and ensures a rollback occurs (even when exceptions are later handled by the caller). - Honors dependency rules between records and updates dependent relationships automatically during the commit. - Populating relationships from one object type to itself are not currently supported (such as Account.NU__PrimaryAffiliation__c) - Allows for generic work to be registered and executed utilizing the IDoWork interface. - Allows for extension and custom operations during the commit phase via the IDML interface.



### [UnsupportedObjectTypeException](/api-reference/nu/global-apis/Miscellaneous/UnsupportedObjectTypeException.md)


Exception thrown when a term is requested for an object type that is not supported by the term service.


## Payment API

### [AddPaymentProfileRequest](/api-reference/nu/global-apis/Payment-API/AddPaymentProfileRequest.md)


Request class to interact with the PaymentStorageService and create new Payment Profiles.



### [DeletePaymentProfileRequest](/api-reference/nu/global-apis/Payment-API/DeletePaymentProfileRequest.md)


Request class to interact with the PaymentStorageService and delete Payment Profiles.



### [IPaymentGateway2](/api-reference/nu/global-apis/Payment-API/IPaymentGateway2.md)


Describes methods used to interact with a payment gateway.



### [PaymentApplierRequest](/api-reference/nu/global-apis/Payment-API/PaymentApplierRequest.md)


Creates requests intended to be used by implementors of the IPaymentApplier interface for the purposes of applying a payment to one or more orders.



### [PaymentApplierResponse](/api-reference/nu/global-apis/Payment-API/PaymentApplierResponse.md)


Creates responses intended to be returned from implementations of IPaymentApplier.



### [PaymentAuthorizationService](/api-reference/nu/global-apis/Payment-API/PaymentAuthorizationService.md)


This class is used to authorize payment information for an entity and amount specified by the caller. If the payment details are valid, this class will prepare a payment that can be applied to an order. This class will not insert anything into the database.



### [PaymentGatewayRequest](/api-reference/nu/global-apis/Payment-API/PaymentGatewayRequest.md)


Used when calling out to a configured payment gateway. Contains necessary information for sending an attempt to authorize, void or refund a credit card.



### [PaymentGatewayResponse](/api-reference/nu/global-apis/Payment-API/PaymentGatewayResponse.md)


Used when generating responses from configured payment gateway. Contains necessary information for determining the success or failure of an authorization, void or refund attempt.



### [PaymentGatewayService](/api-reference/nu/global-apis/Payment-API/PaymentGatewayService.md)


Allows interaction with a payment gateway for purposes of authorizing, voiding, refunding credit cards.



### [PaymentService2](/api-reference/nu/global-apis/Payment-API/PaymentService2.md)


Handles requests for payment. Version 2 created to enforce entity payment method selection from the provided cart's entity.



### [PaymentStorageRequest](/api-reference/nu/global-apis/Payment-API/PaymentStorageRequest.md)


Request class to interact with the PaymentStorageService.



### [PaymentStorageResponse](/api-reference/nu/global-apis/Payment-API/PaymentStorageResponse.md)


Response returned by the PaymentStorageService methods.



### [PaymentStorageService](/api-reference/nu/global-apis/Payment-API/PaymentStorageService.md)


This class is used to do CRUD operations related to External Payment Profiles.



### [UpdatePaymentProfileRequest](/api-reference/nu/global-apis/Payment-API/UpdatePaymentProfileRequest.md)


Request class to interact with the PaymentStorageService and update Payment Profiles.


## Cart Pricing Framework

### [CartPricingProcessor](/api-reference/nu/global-apis/Cart-Pricing-Framework/CartPricingProcessor.md)


This class implements IPricingProcessor. It is used in a trigger context to reprice carts after cart items are added, removed, or updated. This class will retrieve the IPricingRule classes for the CartItem__c or CartItemLine__c SObjectTypes and use them to determine which carts should be repriced. The actual calculation of special prices and DML are done by the CartPricingService.



### [IPricingProcessor](/api-reference/nu/global-apis/Cart-Pricing-Framework/IPricingProcessor.md)


This interface is used to process records which may require repricing.



### [IPricingRule](/api-reference/nu/global-apis/Cart-Pricing-Framework/IPricingRule.md)


This interface is used to evaluate records to determine if they require repricing.



### [PricingFrameworkTestHelpers](/api-reference/nu/global-apis/Cart-Pricing-Framework/PricingFrameworkTestHelpers.md)


This class is used to register IPricingProcessor and IPricingRule implementations in the PricingProcessorService cache for mocking unit tests.



### [PricingProcessorRequest](/api-reference/nu/global-apis/Cart-Pricing-Framework/PricingProcessorRequest.md)


The request for IPricingProcessor classes. This class contains the records which will be processed by an IPricingProcessor as well as any additional data.



### [PricingProcessorResponse](/api-reference/nu/global-apis/Cart-Pricing-Framework/PricingProcessorResponse.md)


The response returned by IPricingProcessor classes. The response will indicate the success or failure of the processing operation and contain errors.



### [PricingProcessorService](/api-reference/nu/global-apis/Cart-Pricing-Framework/PricingProcessorService.md)


This class is used to retrieve IPricingProcessor classes and IPricingRule classes for particular SObjectTypes. It is also used to process SObjects using these classes.



### [PricingRuleRequest](/api-reference/nu/global-apis/Cart-Pricing-Framework/PricingRuleRequest.md)


A request for IPricingRule classes. This class contains the records which need to be evaluated by an IPricingRule as well as any additional data which might be necessary.



### [PricingRuleResponse](/api-reference/nu/global-apis/Cart-Pricing-Framework/PricingRuleResponse.md)


The response returned by IPricingRule classes. This response contains two separate lists of records. One for the records which will be triggering repricing and one for the records that will not.


## Order API

### [HistoryData](/api-reference/nu/global-apis/Order-API/HistoryData.md)


This class represents the data needed to create history records.



### [Order](/api-reference/nu/global-apis/Order-API/Order.md)


This class is used to represent a single order. It facilitates the insertion of orders into the database.



### [OrderAPI](/api-reference/nu/global-apis/Order-API/OrderAPI.md)


Entry point to interact with the order creation process.



### [OrderGeneratorRequest](/api-reference/nu/global-apis/Order-API/OrderGeneratorRequest.md)


A request class for creating multiple orders.



### [OrderGeneratorResponse](/api-reference/nu/global-apis/Order-API/OrderGeneratorResponse.md)


A response class that holds a list of created orders.



### [OrderItem](/api-reference/nu/global-apis/Order-API/OrderItem.md)


A class representing an order item. This class is used to insert order data into the database.



### [OrderLine](/api-reference/nu/global-apis/Order-API/OrderLine.md)


This class represents an Order Item Line and is used to facilitate the entry of orders into the system.



### [OrderLineGeneratorRequest](/api-reference/nu/global-apis/Order-API/OrderLineGeneratorRequest.md)


Request that will be passed into an IOrderLineGenerator in order to generate Order Lines.



### [OrderLineGeneratorResponse](/api-reference/nu/global-apis/Order-API/OrderLineGeneratorResponse.md)


Contains a list of built Order Lines.



### [OrderLineRequest](/api-reference/nu/global-apis/Order-API/OrderLineRequest.md)


A request class for creating an Order Line.



### [OrderProcessorRequest](/api-reference/nu/global-apis/Order-API/OrderProcessorRequest.md)


Request to be passed into an IOrderProcessor implementation with information regarding the orders to process.



### [OrderProcessorResponse](/api-reference/nu/global-apis/Order-API/OrderProcessorResponse.md)


Response returned after an order has been processed by an IOrderProcessor with information regarding the processed orders.



### [OrderRequest](/api-reference/nu/global-apis/Order-API/OrderRequest.md)


A request class for creating an order.


## Recurring Payment

### [RecurringEligibilityService](/api-reference/nu/global-apis/Recurring-Payment/RecurringEligibilityService.md)


Get the Recurring Eligibility for products of Order/Cart Items and constructs list of Recurring Eligible Products.



### [RecurringEligibilityServiceResponse](/api-reference/nu/global-apis/Recurring-Payment/RecurringEligibilityServiceResponse.md)


Used when generating responses from Recurring Eligibility Service. Contains necessary information for determining the Recurring Eligibility of product. And list of Recurring Eligible products.


## Recurring Payment.

### [RecurringEligibilityServiceRequest](/api-reference/nu/global-apis/Recurring-Payment/RecurringEligibilityServiceRequest.md)


Used when calling out to a Recurring Eligibility Service. Contains necessary information for sending an attempt to check Recurring eligibility of products for lines of Order Items or Cart Item.
