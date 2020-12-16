# Classes
## Miscellaneous

### [AboutYourDonationComponentController](/api-reference/nc/global-apis/Miscellaneous/AboutYourDonationComponentController.md)


Controls the About Your Donation card.



### [AccessControlSettingServiceRequest](/api-reference/nc/global-apis/Miscellaneous/AccessControlSettingServiceRequest.md)


Provides requests for interacting with AccessControlSettingService.



### [AccessControlSettingServiceResponse](/api-reference/nc/global-apis/Miscellaneous/AccessControlSettingServiceResponse.md)


Provides responses from AccessControlSettingService methods.



### [AccountCreatedBroadcastCardController](/api-reference/nc/global-apis/Miscellaneous/AccountCreatedBroadcastCardController.md)


Controls a card for creating accounts. Expects an AccountCreatedMessage once that account is inserted by the submit action. Once that is received sends along a further AccountCreatedMessage to inform any other cards of the newly-inserted account's Id.



### [AccountCreatedMessage](/api-reference/nc/global-apis/Miscellaneous/AccountCreatedMessage.md)


A Message subclass that is used to notify subscribers that an account has been inserted.



### [AccountDetailComponentController](/api-reference/nc/global-apis/Miscellaneous/AccountDetailComponentController.md)


Controls AccountDetail.component, providing a means of receiving messages to display details of a record.



### [Action](/api-reference/nc/global-apis/Miscellaneous/Action.md)


Represents potential actions for a specific user to take re: registering for a specific event.



### [AddToCartButton](/api-reference/nc/global-apis/Miscellaneous/AddToCartButton.md)


Controls the Add To Cart button.



### [AdditionalSetting](/api-reference/nc/global-apis/Miscellaneous/AdditionalSetting.md)


Represents an instance of an AdditionalSetting__mdt record.



### [AdvancedStoreList](/api-reference/nc/global-apis/Miscellaneous/AdvancedStoreList.md)


Handles the control of record retrieval and display for store products.



### [AffiliationInfoComponentController](/api-reference/nc/global-apis/Miscellaneous/AffiliationInfoComponentController.md)


A controller for the Affiliation Info card.



### [AffiliationService](/api-reference/nc/global-apis/Miscellaneous/AffiliationService.md)


A home for DML operations involving Affiliation records.



### [Alerts](/api-reference/nc/global-apis/Miscellaneous/Alerts.md)


Allows any class to add alerts to be displayed on cards.



### [ArgumentException](/api-reference/nc/global-apis/Miscellaneous/ArgumentException.md)


Argument exception base class.



### [ArgumentNullException](/api-reference/nc/global-apis/Miscellaneous/ArgumentNullException.md)


For throwing errors when an argument is unexpectedly null.



### [AuthorizationRequest](/api-reference/nc/global-apis/Miscellaneous/AuthorizationRequest.md)


The request to be passed in to a ICommunityAuthorization.isAuthorizedForCommunity(AuthorizationRequest) call.



### [AuthorizationResponse](/api-reference/nc/global-apis/Miscellaneous/AuthorizationResponse.md)


The returned response from a ICommunityAuthorization.isAuthorizedForCommunity(AuthorizationRequest) call.



### [AuthorizePaymentMessage](/api-reference/nc/global-apis/Miscellaneous/AuthorizePaymentMessage.md)


Message that gets broadcast with a fully built znu.Order as a parameter. Cards listening to this message sould utilize the znu.Order to handle payments based on the order's balance.



### [AutoCompleteSearchComponentController](/api-reference/nc/global-apis/Miscellaneous/AutoCompleteSearchComponentController.md)


Controls the AutoCompleteSearch component, deciding which implementation of IAutoCompleteSearchResult to make use of.



### [AutoCompleteSearchRequest](/api-reference/nc/global-apis/Miscellaneous/AutoCompleteSearchRequest.md)


A request class with data that will be passed to an IAutoCompleteSearchResult implementation.



### [AutoRenewToggleComponentController](/api-reference/nc/global-apis/Miscellaneous/AutoRenewToggleComponentController.md)


Controls the AutoRenewalToggle.component.



### [BadgeInformationComponentController](/api-reference/nc/global-apis/Miscellaneous/BadgeInformationComponentController.md)


Controls BadgeInformation.component.



### [BankAccountPaymentComponentController](/api-reference/nc/global-apis/Miscellaneous/BankAccountPaymentComponentController.md)


Controls BankAccountPayment.component, providing virtually no base functionality at this time as we do not accept one-off bank account payments for now. Serves as a base extension point for ManageExtPmtBankProfileCompController.



### [BaseStylesScriptsComponentController](/api-reference/nc/global-apis/Miscellaneous/BaseStylesScriptsComponentController.md)


Controls the BaseStylesScripts.component.



### [BeforeSubmitRecurItemHandler](/api-reference/nc/global-apis/Miscellaneous/BeforeSubmitRecurItemHandler.md)


Event handler that runs before recurring payments are submitted by the Recurring Payments modal lightning component. Contains server side validation to ensure that the form has not been manipulated with by a malicious party.



### [BeforeSubmitScheduleLinesHandler](/api-reference/nc/global-apis/Miscellaneous/BeforeSubmitScheduleLinesHandler.md)


Event handler that runs before schedule lines are submitted by the Schedule line modal lightning component. Contains server side validation to ensure that the form has not been manipulated with by a malicious party.



### [BillMeAddressComponentController](/api-reference/nc/global-apis/Miscellaneous/BillMeAddressComponentController.md)


 Controls the Bill Me Address card.



### [BillMeDetailsComponentController](/api-reference/nc/global-apis/Miscellaneous/BillMeDetailsComponentController.md)


Controls the Bill Me Details Card



### [BillingAddressComponentController](/api-reference/nc/global-apis/Miscellaneous/BillingAddressComponentController.md)


Controls the BillingAddress card.



### [BulkFieldSetFormComponentController](/api-reference/nc/global-apis/Miscellaneous/BulkFieldSetFormComponentController.md)


Controls FieldSetForm.component, providing bulk saves to a collection of objects from a single form.



### [BundleUtil](/api-reference/nc/global-apis/Miscellaneous/BundleUtil.md)


A utility for interacting with bundles, bundle components.



### [Button](/api-reference/nc/global-apis/Miscellaneous/Button.md)


This object represents a button on a card.



### [ButtonGroupComponentController](/api-reference/nc/global-apis/Miscellaneous/ButtonGroupComponentController.md)


Controls the ButtonGroup.component.



### [ButtonInstallData](/api-reference/nc/global-apis/Miscellaneous/ButtonInstallData.md)


Builder class for dealing with button custom settings. Intended for use in install scripts. This is a data factory, but please use sparingly and NOT in tests (TestData classes exist for that purpose).



### [ButtonRowComponentController](/api-reference/nc/global-apis/Miscellaneous/ButtonRowComponentController.md)


This is the controller for a card that is nothing but buttons.



### [Card](/api-reference/nc/global-apis/Miscellaneous/Card.md)


This object represents a card on a page in Community Hub.



### [CardComponentController](/api-reference/nc/global-apis/Miscellaneous/CardComponentController.md)


The base class for controllers for card components. Holds the corresponding Card and provides access to the MessageService.



### [CardComponents](/api-reference/nc/global-apis/Miscellaneous/CardComponents.md)


Contains the components to be displayed in a card list.



### [CardData](/api-reference/nc/global-apis/Miscellaneous/CardData.md)


Allows page controllers to communicate with card component controllers via map.



### [CardInstallData](/api-reference/nc/global-apis/Miscellaneous/CardInstallData.md)


Builder class for dealing with card custom settings. Intended for use in install scripts. This is a data factory, but please use sparingly and NOT in tests (TestData classes exist for that purpose).



### [CardIsPresentMessage](/api-reference/nc/global-apis/Miscellaneous/CardIsPresentMessage.md)


A message for one card to broadcast to one or more subscribers, indicating it is present on a page.



### [CardLayout](/api-reference/nc/global-apis/Miscellaneous/CardLayout.md)


This object represents a card layout used for displaying a card in Community Hub.



### [CardLayoutInstallData](/api-reference/nc/global-apis/Miscellaneous/CardLayoutInstallData.md)


Builder class for dealing with card layout custom settings. Intended for use in install scripts. This is a data factory, but please use sparingly and NOT in tests (TestData classes exist for that purpose).



### [CardTestData](/api-reference/nc/global-apis/Miscellaneous/CardTestData.md)


Builder class for dealing with Card__c records. Solely used for testing, NOT a data factory.



### [CardType](/api-reference/nc/global-apis/Miscellaneous/CardType.md)


This object represents a type of card to be displayed on a page in Community Hub.



### [CardTypeInstallData](/api-reference/nc/global-apis/Miscellaneous/CardTypeInstallData.md)


Builder class for dealing with card type custom settings. Intended for use in install scripts. This is a data factory, but please use sparingly and NOT in tests (TestData classes exist for that purpose).



### [CardTypeTestData](/api-reference/nc/global-apis/Miscellaneous/CardTypeTestData.md)


Builder class for dealing with CardType__c records. Solely used for testing, NOT a data factory.



### [CarouselComponentController](/api-reference/nc/global-apis/Miscellaneous/CarouselComponentController.md)


A controller for the Carousel component.



### [CarouselItem](/api-reference/nc/global-apis/Miscellaneous/CarouselItem.md)


This object represents carousel items that will be displayed on card type.



### [CartCloneService](/api-reference/nc/global-apis/Miscellaneous/CartCloneService.md)


CartCloneService will take in a Cart and clone it into a new Cart. This is global to allow for accessibility inside of the Programs package for Cash Billing.



### [CartDisplayComponentController](/api-reference/nc/global-apis/Miscellaneous/CartDisplayComponentController.md)


Controls CartDisplay.component



### [CartItemHandlerRequest](/api-reference/nc/global-apis/Miscellaneous/CartItemHandlerRequest.md)


Request class for an ICartItemHandler implementation.



### [CartItemHandlerResponse](/api-reference/nc/global-apis/Miscellaneous/CartItemHandlerResponse.md)


Response class for an ICartItemHandler implementation.



### [CartItemService](/api-reference/nc/global-apis/Miscellaneous/CartItemService.md)


Manages Cart Item records.



### [CartSubmittedMessage](/api-reference/nc/global-apis/Miscellaneous/CartSubmittedMessage.md)


A Message subclass to handle messages sent when a Cart is submitted.



### [ChangePasswordComponentController](/api-reference/nc/global-apis/Miscellaneous/ChangePasswordComponentController.md)


Controls ChangePassword.component.



### [ChangeUsernameComponentController](/api-reference/nc/global-apis/Miscellaneous/ChangeUsernameComponentController.md)


Controls ChangeUsername.component.



### [ChooseAColleagueComponentController](/api-reference/nc/global-apis/Miscellaneous/ChooseAColleagueComponentController.md)


Controls ChooseAColleague.component.



### [ChooseAColleagueComponentController2](/api-reference/nc/global-apis/Miscellaneous/ChooseAColleagueComponentController2.md)


Controls ChooseAColleague2.component.



### [ColleagueDisplay](/api-reference/nc/global-apis/Miscellaneous/ColleagueDisplay.md)


A wrapper to contain colleague accounts for display during the registration process.



### [ColleagueList](/api-reference/nc/global-apis/Miscellaneous/ColleagueList.md)


Handles the control of record retrieval and messaging display for list of Colleagues.



### [ColleagueLocator](/api-reference/nc/global-apis/Miscellaneous/ColleagueLocator.md)


Base class for fetching coworkers/colleagues for various purposes.



### [CommunityFlowComponentController](/api-reference/nc/global-apis/Miscellaneous/CommunityFlowComponentController.md)


Extends the base EmbeddedLightningComponentController but overrides the configuration for use with the CommunityFlow Lightning Component.



### [CommunityManager](/api-reference/nc/global-apis/Miscellaneous/CommunityManager.md)


Provides convenience methods for interacting with the NU__CommunitySettings__c object.



### [CommunityUser](/api-reference/nc/global-apis/Miscellaneous/CommunityUser.md)






### [CompanyAffiliationsComponentController](/api-reference/nc/global-apis/Miscellaneous/CompanyAffiliationsComponentController.md)


Controls Company Affiliation cards.



### [CompanyListViewDataSource](/api-reference/nc/global-apis/Miscellaneous/CompanyListViewDataSource.md)


A data source which provides schedule line list view data specifically for companies affiliated with certain Community Hub users. Used to provide data for the 'Company Scheduled Payments' page in Community Hub, and re-uses most of the functionality of ScheduleLineListViewDataSource.cls which is used for the 'My Scheduled Payments' CH page.



### [CompanyScheduleLinesFailedDataSource](/api-reference/nc/global-apis/Miscellaneous/CompanyScheduleLinesFailedDataSource.md)


A data source that extends on its base class functionality by sourcing only failed schedule lines of the user's affiliated company account.



### [CompanyScheduleLinesPendingDataSource](/api-reference/nc/global-apis/Miscellaneous/CompanyScheduleLinesPendingDataSource.md)


A data source that extends on its base class functionality by sourcing only pending schedule lines of the user's affiliated company.



### [ConditionalButton](/api-reference/nc/global-apis/Miscellaneous/ConditionalButton.md)


A button with a point and click configurable getShouldRender method.



### [Configuration](/api-reference/nc/global-apis/Miscellaneous/Configuration.md)


Represents the configuration of Community Hub custom settings for import and export.



### [ConfigurationOption](/api-reference/nc/global-apis/Miscellaneous/ConfigurationOption.md)


Represents a single configuration option for a Card to be displayed in the Card's configuration UI.



### [ConfigurationService](/api-reference/nc/global-apis/Miscellaneous/ConfigurationService.md)


Service for managing the import and export of Community Hub custom settings.



### [ContainsDupeService](/api-reference/nc/global-apis/Miscellaneous/ContainsDupeService.md)


DEPRECATED. Use ContainsDupeService2 instead. @throws InvalidOperationException if called.



### [ContainsDupeService2](/api-reference/nc/global-apis/Miscellaneous/ContainsDupeService2.md)


This class is used to find potential duplicate records using the LIKE keyword. This class can also be extended to assist with the creation of custom implementations. There are several virtual methods available for creating the dynamic query that finds potential duplicates.



### [CookieMessageComponentController](/api-reference/nc/global-apis/Miscellaneous/CookieMessageComponentController.md)


An extension of the PlainTextComponentController to support displaying description messages stored in encrypted cookies.



### [CoreTemplateController](/api-reference/nc/global-apis/Miscellaneous/CoreTemplateController.md)


Controls CoreTemplate.page. It is global to allow it to be used as a controller for custom templates when replacing the stock CoreTemplate.page in implementations requiring advanced theming.



### [CountMeInButton](/api-reference/nc/global-apis/Miscellaneous/CountMeInButton.md)


Controls the "Count Me In" donation page button, returning the URL field from the record.



### [CouponCodeComponentController](/api-reference/nc/global-apis/Miscellaneous/CouponCodeComponentController.md)


Controls CouponCode.component.



### [CreateAccountService](/api-reference/nc/global-apis/Miscellaneous/CreateAccountService.md)


Contains methods associated with User and Account creation.



### [CreditCardPaymentComponentController](/api-reference/nc/global-apis/Miscellaneous/CreditCardPaymentComponentController.md)


Controls CreditCardPayment.component



### [CurrencyMenuController](/api-reference/nc/global-apis/Miscellaneous/CurrencyMenuController.md)


Controller for the currencyMenu Visualforce component and LWC. Handles interacting with the API and getting/saving user preferences.



### [CurrentAccountRenderButton](/api-reference/nc/global-apis/Miscellaneous/CurrentAccountRenderButton.md)


A render button that returns the current logged in user's account id when getRecordId is called.



### [CustomLabelService](/api-reference/nc/global-apis/Miscellaneous/CustomLabelService.md)


Service to handle interacting with custom labels.



### [CustomizationSettingsService](/api-reference/nc/global-apis/Miscellaneous/CustomizationSettingsService.md)


A service for allowing setup to be scripted for CustomizationSettings__c.



### [DataFactoryAccount](/api-reference/nc/global-apis/Miscellaneous/DataFactoryAccount.md)


Handles data management for the Account object. Primarily used for testing.



### [DataFactoryCommunity](/api-reference/nc/global-apis/Miscellaneous/DataFactoryCommunity.md)


Handles data creation for the Nimble Community product. Primarily used for testing.



### [DataFactoryContact](/api-reference/nc/global-apis/Miscellaneous/DataFactoryContact.md)


Handles data management for the Contact object. Primarily used for testing.



### [DataFactorySettings](/api-reference/nc/global-apis/Miscellaneous/DataFactorySettings.md)


Handles data management for NC__CommunitySettings__c. Primarily used for testing.



### [DataFactoryUser](/api-reference/nc/global-apis/Miscellaneous/DataFactoryUser.md)


Handles data management for the User and Auth.User objects. Primarily used for testing.



### [DataSource](/api-reference/nc/global-apis/Miscellaneous/DataSource.md)


Contains standard IDataSource [legacy] implementations. Serves as a base class for new DataSources.



### [DataSourceExportRequest](/api-reference/nc/global-apis/Miscellaneous/DataSourceExportRequest.md)


This class represents a request to export data from a Data Source.



### [DataSourceTestData](/api-reference/nc/global-apis/Miscellaneous/DataSourceTestData.md)


Builder class for dealing with DataSource__c records. Solely used for testing, NOT a data factory. Default Values: Name: CurrentAccount Class__c: NC.DataSource$CurrentAccount Context__c: null



### [DatePickerComponentController](/api-reference/nc/global-apis/Miscellaneous/DatePickerComponentController.md)


Controls DatePicker.component.



### [DeleteSObjectButton](/api-reference/nc/global-apis/Miscellaneous/DeleteSObjectButton.md)


A button for deleting objects.



### [DonationAmountChangedMessage](/api-reference/nc/global-apis/Miscellaneous/DonationAmountChangedMessage.md)


Message that gets broadcast whenever the donation amount changes in the Donate Now page.



### [DonationAmountComponentController](/api-reference/nc/global-apis/Miscellaneous/DonationAmountComponentController.md)


Used for controlling DonationAmount.component and specifying a donation amount.



### [DonationFrequencyComponentController](/api-reference/nc/global-apis/Miscellaneous/DonationFrequencyComponentController.md)


ButtonGroupComponentController implementation to control the DonationFrequencySelection card type.



### [DragAndDropFileUploadComponentController](/api-reference/nc/global-apis/Miscellaneous/DragAndDropFileUploadComponentController.md)


Controls DragAndDropFileUpload.component, providing a means of uploading files asynchronously through a drag and drop user interface.



### [DupeSearchAction](/api-reference/nc/global-apis/Miscellaneous/DupeSearchAction.md)


Action to execute duplicate checking and send a RecordsMessage with the records received.



### [DupeService](/api-reference/nc/global-apis/Miscellaneous/DupeService.md)


DEPRECATED. Use DupeService2 instead.



### [DupeService2](/api-reference/nc/global-apis/Miscellaneous/DupeService2.md)


This class is used to find potential duplicate records by looking for records who are exact matches to the criteria provided to this service. This class can also be extended to assist with the creation of custom implementations. There are several virtual methods available for creating the dynamic query that finds potential duplicates.



### [DupeServiceRequest](/api-reference/nc/global-apis/Miscellaneous/DupeServiceRequest.md)


A request class used to provide context to methods in a DupeService class.



### [DupeServiceResponse](/api-reference/nc/global-apis/Miscellaneous/DupeServiceResponse.md)


The response given from methods called on the DupeService class.



### [DuplicateCompanySearchButton](/api-reference/nc/global-apis/Miscellaneous/DuplicateCompanySearchButton.md)


Controls the Duplicate Company Search button.



### [DuplicateIndividualSearchButton](/api-reference/nc/global-apis/Miscellaneous/DuplicateIndividualSearchButton.md)


Controls the Duplicate Individual Search button.



### [DynamicCheckoutController](/api-reference/nc/global-apis/Miscellaneous/DynamicCheckoutController.md)


Dynamic controller for the Dynamic Checkout Page.



### [DynamicCheckoutSubmitButton](/api-reference/nc/global-apis/Miscellaneous/DynamicCheckoutSubmitButton.md)


Button used for submitting the Dynamic Checkout page.



### [DynamicFlowButton](/api-reference/nc/global-apis/Miscellaneous/DynamicFlowButton.md)


A button which allows for the dynamic instantiation of a Flow via metadata configuration.



### [DynamicInvoiceController](/api-reference/nc/global-apis/Miscellaneous/DynamicInvoiceController.md)


Dynamic controller for the Dynamic Invoice page.



### [DynamicPageController](/api-reference/nc/global-apis/Miscellaneous/DynamicPageController.md)


The controller for a dynamic page.



### [ECheckDisclaimerComponentController](/api-reference/nc/global-apis/Miscellaneous/ECheckDisclaimerComponentController.md)


Controls the eCheck Disclaimer card.



### [ECheckRenderButton](/api-reference/nc/global-apis/Miscellaneous/ECheckRenderButton.md)


A button which renders if and only if the eCheck feature is enabled.



### [EditOrCancelAction](/api-reference/nc/global-apis/Miscellaneous/EditOrCancelAction.md)


The action of editing or cancelling an item. Currently just for Registrations using the ManageRegistrations page.



### [EditOrderButton](/api-reference/nc/global-apis/Miscellaneous/EditOrderButton.md)


A button which allows a user to adjust an existing order. Currently only supports registration editing.



### [EditScheduledPaymentComponentController](/api-reference/nc/global-apis/Miscellaneous/EditScheduledPaymentComponentController.md)


Extends on the functionality of SchedulePaymentComponentController allowing the component to always be present in the page.



### [EmbeddedLightningComponentController](/api-reference/nc/global-apis/Miscellaneous/EmbeddedLightningComponentController.md)


The controller for a Visualforce component which provides the necessary details to embed a Lightning Component into a Visualforce page whose configuration is contained in the metadata of a Card record.



### [EventComponentController](/api-reference/nc/global-apis/Miscellaneous/EventComponentController.md)


Controls Event.component.



### [EventDynamicController](/api-reference/nc/global-apis/Miscellaneous/EventDynamicController.md)


Controls the dynamic event page, providing functionality to determine if cards should render as well as heading, and description labels based upon the event.



### [EventQuestionsCompController](/api-reference/nc/global-apis/Miscellaneous/EventQuestionsCompController.md)


The controller for the Event Questions component.



### [ExpandableListViewComponentController](/api-reference/nc/global-apis/Miscellaneous/ExpandableListViewComponentController.md)


Controls the expandable list view component.



### [ExpandableListViewData](/api-reference/nc/global-apis/Miscellaneous/ExpandableListViewData.md)


Represents data to be presented in an ExpandableListView card.



### [ExpressCartGuestSubmitButton](/api-reference/nc/global-apis/Miscellaneous/ExpressCartGuestSubmitButton.md)


Extends DynamicCheckoutSubmitButton with the ability to only render if logged out.



### [ExpressCartSubmitButton](/api-reference/nc/global-apis/Miscellaneous/ExpressCartSubmitButton.md)


Extends DynamicCheckoutSubmitButton with the ability to only render if logged in.



### [FeatureToggleRenderButton](/api-reference/nc/global-apis/Miscellaneous/FeatureToggleRenderButton.md)


Defines a button which should only render if a specific feature is active.



### [FeatureToggleRequest](/api-reference/nc/global-apis/Miscellaneous/FeatureToggleRequest.md)


Represents a request to an implementation of IFeatureToggle to determine if a feature is enabled or not via the API.



### [FeatureToggleResponse](/api-reference/nc/global-apis/Miscellaneous/FeatureToggleResponse.md)


Represents a response from an implementation of IFeatureToggle to determine if a feature is enabled or not via the API.



### [FeatureToggleService](/api-reference/nc/global-apis/Miscellaneous/FeatureToggleService.md)


A global API endpoint for package subscribers to determine whether or not a given feature is enabled based upon a standard request / response pattern.



### [FieldSetFormComponentController](/api-reference/nc/global-apis/Miscellaneous/FieldSetFormComponentController.md)


Controls FieldSetForm.component.



### [FieldSetReadOnlyComponentController](/api-reference/nc/global-apis/Miscellaneous/FieldSetReadOnlyComponentController.md)


Controls FieldSetReadOnly.component.



### [FieldSetService](/api-reference/nc/global-apis/Miscellaneous/FieldSetService.md)


service for getting fields in a particular field set



### [FileAttachmentComponentController](/api-reference/nc/global-apis/Miscellaneous/FileAttachmentComponentController.md)


Controls the FileAttachment component.



### [FileDeleteRequest](/api-reference/nc/global-apis/Miscellaneous/FileDeleteRequest.md)


Utilized to generate requests for the FileDeleteService.



### [FileDeleteResponse](/api-reference/nc/global-apis/Miscellaneous/FileDeleteResponse.md)


Used to determine the success or failure of a file deletion.



### [FileNotFoundException](/api-reference/nc/global-apis/Miscellaneous/FileNotFoundException.md)


Exception thrown when a file is not found.



### [FileUploadComponentController](/api-reference/nc/global-apis/Miscellaneous/FileUploadComponentController.md)


Controls FileUpload.component, allowing files to be uploaded and attached to SObject records.



### [FileUploadRequest](/api-reference/nc/global-apis/Miscellaneous/FileUploadRequest.md)


Utilized to generate requests for the FileUploadService.



### [FileUploadResponse](/api-reference/nc/global-apis/Miscellaneous/FileUploadResponse.md)


Used to determine the success or failure of a file upload.



### [FileUploadService](/api-reference/nc/global-apis/Miscellaneous/FileUploadService.md)


Used for uploading files to Salesforce.



### [FilterComponentController](/api-reference/nc/global-apis/Miscellaneous/FilterComponentController.md)


Controls Filter.component.



### [FindMyAccountComponentController](/api-reference/nc/global-apis/Miscellaneous/FindMyAccountComponentController.md)


Controller class for the FindMyAccount component.



### [FlowDataSource](/api-reference/nc/global-apis/Miscellaneous/FlowDataSource.md)


Allows gathering of Data Source from use of a Flow.



### [GoogleAnalyticsComponentController](/api-reference/nc/global-apis/Miscellaneous/GoogleAnalyticsComponentController.md)


Controls GoogleAnalyticsTracking.component.



### [HeaderComponentController](/api-reference/nc/global-apis/Miscellaneous/HeaderComponentController.md)






### [HostedCheckoutResponseHandler](/api-reference/nc/global-apis/Miscellaneous/HostedCheckoutResponseHandler.md)


A Event handler class for Application Event to call the specific response handler class.



### [IAutoCompleteSearchResult](/api-reference/nc/global-apis/Miscellaneous/IAutoCompleteSearchResult.md)


Interface used for custom logic to be used in an AutoCompleteSearch.component's controller.



### [IButtonConstructor](/api-reference/nc/global-apis/Miscellaneous/IButtonConstructor.md)


Implemented by a concrete class that constructs a button. Typically the class is an inner class of button and named Constructor.



### [ICallback](/api-reference/nc/global-apis/Miscellaneous/ICallback.md)


A callback that can be invoked, passing a single parameter.



### [ICardComponentConstructor](/api-reference/nc/global-apis/Miscellaneous/ICardComponentConstructor.md)


Exposes methods used for dynamically creating card components.



### [ICardComponentController](/api-reference/nc/global-apis/Miscellaneous/ICardComponentController.md)






### [ICarouselItemBuilder](/api-reference/nc/global-apis/Miscellaneous/ICarouselItemBuilder.md)


An interface created to generate records to be displayed in the Community Hub carousel for the Cross-sell feature.



### [ICartItemHandler](/api-reference/nc/global-apis/Miscellaneous/ICartItemHandler.md)


Interface for handling cart items in a cart.



### [ICommunityAuthorization](/api-reference/nc/global-apis/Miscellaneous/ICommunityAuthorization.md)


Determines if a User has access to a community.



### [ICommunityUserLocator](/api-reference/nc/global-apis/Miscellaneous/ICommunityUserLocator.md)


Defines how a User should be located or created when logging into a community with OpenID.



### [ICommunityUserPopulater](/api-reference/nc/global-apis/Miscellaneous/ICommunityUserPopulater.md)


Defines what information be populated on the User object when logging into a community.



### [IComponentService](/api-reference/nc/global-apis/Miscellaneous/IComponentService.md)


Exposes methods used for injecting custom components into Community Hub.



### [IConditional](/api-reference/nc/global-apis/Miscellaneous/IConditional.md)


A generic interface for evaluating conditionals.



### [IConfigurationOptionsProvider](/api-reference/nc/global-apis/Miscellaneous/IConfigurationOptionsProvider.md)


Implement this interface in any ICardComponentController you wish to provide configuration options for.



### [IData](/api-reference/nc/global-apis/Miscellaneous/IData.md)


public data interface, used to build generic list of records to insert.



### [IDataSource](/api-reference/nc/global-apis/Miscellaneous/IDataSource.md)


An interface for classes that provide data from a particular source, with the specified fields queried. @deprecated DEPRECATED! DO NOT USE! Please extend DataSource.cls instead.



### [IDataSourceExportService](/api-reference/nc/global-apis/Miscellaneous/IDataSourceExportService.md)


Describes methods used by implementations for exporting data based upon Data Sources.



### [IDragAndDrop](/api-reference/nc/global-apis/Miscellaneous/IDragAndDrop.md)


Describes methods to be used for drag and drop file upload functionality.



### [IDupeService](/api-reference/nc/global-apis/Miscellaneous/IDupeService.md)


DEPRECATED. Use IDupeService2 instead.



### [IDupeService2](/api-reference/nc/global-apis/Miscellaneous/IDupeService2.md)


Interface implemented by classes that handle duplicate checking.



### [IDynamicPageController](/api-reference/nc/global-apis/Miscellaneous/IDynamicPageController.md)


Interface to handle dynamic page controllers.



### [IDynamicPageController2](/api-reference/nc/global-apis/Miscellaneous/IDynamicPageController2.md)


Interface to handle dynamic page controllers. Builds on the v1 concept by adding the requirement to define the heading, description text to render as well as when to render them.



### [IFileDeleteService](/api-reference/nc/global-apis/Miscellaneous/IFileDeleteService.md)


Describes implementations for deleting files to a storage mechanism.



### [IFileUploadService](/api-reference/nc/global-apis/Miscellaneous/IFileUploadService.md)


Describes implementations for uploading files to a storage mechanism.



### [IFrameModalComponentController](/api-reference/nc/global-apis/Miscellaneous/IFrameModalComponentController.md)


Controls IFrameModal.component, allowing an URL to be loaded into the IFrame.



### [IItemDisplayConstructor](/api-reference/nc/global-apis/Miscellaneous/IItemDisplayConstructor.md)


Interface implemented by classes that create ItemDisplay instances.



### [IMessageHandler](/api-reference/nc/global-apis/Miscellaneous/IMessageHandler.md)






### [IMultipleFileUploadService](/api-reference/nc/global-apis/Miscellaneous/IMultipleFileUploadService.md)


Describes implementations for uploading files to a storage mechanism.



### [IOptionSelections](/api-reference/nc/global-apis/Miscellaneous/IOptionSelections.md)


An interface used to build generic list of options to choose from on the page.



### [IPostInitialize](/api-reference/nc/global-apis/Miscellaneous/IPostInitialize.md)


Card component controllers can implement this interface in order to send messages to other cards after all cards have been initialized.



### [IProvideSelectOptions](/api-reference/nc/global-apis/Miscellaneous/IProvideSelectOptions.md)


Implemented by classes to indicate that they provide a list of SelectOption instances.



### [InstallScript](/api-reference/nc/global-apis/Miscellaneous/InstallScript.md)


Automatically invoked when package is installed. The class upserts an empty custom setting on a fresh install in order to populate the default values for the field.



### [InvoiceListComponentController](/api-reference/nc/global-apis/Miscellaneous/InvoiceListComponentController.md)


Controls the OutstandingInvoices card.



### [ItemDisplay](/api-reference/nc/global-apis/Miscellaneous/ItemDisplay.md)


Base class for the different sub-classes used to display order items and cart items.



### [ItemDisplayComponentController](/api-reference/nc/global-apis/Miscellaneous/ItemDisplayComponentController.md)


This class is used to retrieve and interact with instances of the ItemDisplay class.



### [ItemDisplayComponentControllerTest](/api-reference/nc/global-apis/Miscellaneous/ItemDisplayComponentControllerTest.md)






### [ItemDisplaySettingTestData](/api-reference/nc/global-apis/Miscellaneous/ItemDisplaySettingTestData.md)


Builder class for dealing with ItemDisplaySetting__c records. Solely used for testing, NOT a data factory.



### [ItemLineDisplay](/api-reference/nc/global-apis/Miscellaneous/ItemLineDisplay.md)


Wrapper classed used to represent order item lines and cart item lines.



### [JoinRenewButton](/api-reference/nc/global-apis/Miscellaneous/JoinRenewButton.md)


A join or renew button to display to an end user. Overrides default button behavior to: a) Return different labels to member, non-member, and users with invoices. b) Take users to the join / renew page, or to an outstanding invoice depending on the circumstances. There are also a number of factors which determine if this button is rendered at all. See getShouldRender for more information.



### [JoinRenewButton2](/api-reference/nc/global-apis/Miscellaneous/JoinRenewButton2.md)


A version 2 of the JoinRenewButton which is designed to operate off an account passed in from the card it is displayed on rather than the current account. Expects that the account is provided by a card, sharing the same data source name.



### [LicenseManager](/api-reference/nc/global-apis/Miscellaneous/LicenseManager.md)


Manages customer community user licenses.



### [LightningStoreDataSource](/api-reference/nc/global-apis/Miscellaneous/LightningStoreDataSource.md)


Data source for the Product Grid used in the Lightning Store.



### [ListUtil](/api-reference/nc/global-apis/Miscellaneous/ListUtil.md)


A utility class for interacting with lists. Ain't it grand?



### [LocatorRequest](/api-reference/nc/global-apis/Miscellaneous/LocatorRequest.md)


The request to be passed in to a ICommunityUserLocator.findOrCreateUser(LocatorRequest) call.



### [LocatorResponse](/api-reference/nc/global-apis/Miscellaneous/LocatorResponse.md)


The returned response from a ICommunityUserLocator.findOrCreateUser(LocatorRequest) call.



### [LoginAction](/api-reference/nc/global-apis/Miscellaneous/LoginAction.md)


The action of throwing an UnauthorizedAccessException when a user is not logged in.



### [LoginCommunityUserLocator](/api-reference/nc/global-apis/Miscellaneous/LoginCommunityUserLocator.md)


ICommunityUserLocator used on social sign on to find an existing community user or create a new one if it does not exist.



### [LoginComponentController](/api-reference/nc/global-apis/Miscellaneous/LoginComponentController.md)


Control the logic for the Login Component.



### [MDT_Filter](/api-reference/nc/global-apis/Miscellaneous/MDT_Filter.md)


Represents a Filter__mdt custom metadata type.



### [ManageExtPmtAddressProfileCompController](/api-reference/nc/global-apis/Miscellaneous/ManageExtPmtAddressProfileCompController.md)


Controls the AddEditExternalPaymentProfile card.



### [ManageExtPmtBankProfileCompController](/api-reference/nc/global-apis/Miscellaneous/ManageExtPmtBankProfileCompController.md)


Collects details related to a bank account in order to store them in an external payment gateway.



### [ManageExtPmtCardProfileCompController](/api-reference/nc/global-apis/Miscellaneous/ManageExtPmtCardProfileCompController.md)


Controls the Manage External Profile Card.



### [ManageRosterComponentController](/api-reference/nc/global-apis/Miscellaneous/ManageRosterComponentController.md)


Controls ManageRoster.component.



### [MemberTypeSelectComponentController](/api-reference/nc/global-apis/Miscellaneous/MemberTypeSelectComponentController.md)


Controls MemberTypeSelect.component



### [MembershipBundleComponentDataSource](/api-reference/nc/global-apis/Miscellaneous/MembershipBundleComponentDataSource.md)


Generates a request for a Membership bundle based on the current user's membership status as well as the Membership Type specified with the 'id' url parameter. The request will then be used to retrieve a membership bundle. This data source will return the bundle components.



### [MembershipCancelAutoRenewAction](/api-reference/nc/global-apis/Miscellaneous/MembershipCancelAutoRenewAction.md)


Represents the action of Cancelling the Auto Renewal of a Cart Item.



### [MembershipItemDisplay](/api-reference/nc/global-apis/Miscellaneous/MembershipItemDisplay.md)


Class used to display membership order items and cart items.



### [MembershipItemDisplayConstructor](/api-reference/nc/global-apis/Miscellaneous/MembershipItemDisplayConstructor.md)


The constructor class used to create multiple instances of the MembershipItemDisplay class. This class handles querying any additional records which may be needed for display.



### [MembershipItemLineDisplay](/api-reference/nc/global-apis/Miscellaneous/MembershipItemLineDisplay.md)


Wrapper classed used to represent membership order item lines and cart item lines.



### [MembershipOptionalComponentController](/api-reference/nc/global-apis/Miscellaneous/MembershipOptionalComponentController.md)


Controls MembershipOptionalProducts.component



### [MembershipOrderDetailsCompController2](/api-reference/nc/global-apis/Miscellaneous/MembershipOrderDetailsCompController2.md)


Controls MembershipOrderDetails.component



### [MembershipPrimProdComponentController](/api-reference/nc/global-apis/Miscellaneous/MembershipPrimProdComponentController.md)


Controls MembershipPrimProducts.component



### [MembershipStatusComponentController](/api-reference/nc/global-apis/Miscellaneous/MembershipStatusComponentController.md)


Controls MembershipStatus.component.



### [MembershipTypeDataSource](/api-reference/nc/global-apis/Miscellaneous/MembershipTypeDataSource.md)


Data source for querying the membership types that should be available in the Join/Renew process.



### [MembershipTypeLockRenewalDataSource](/api-reference/nc/global-apis/Miscellaneous/MembershipTypeLockRenewalDataSource.md)


A data source that retrieves the membership type the current user has a cart for.



### [Message](/api-reference/nc/global-apis/Miscellaneous/Message.md)


A message containing details on an event that occurred.



### [MessageService](/api-reference/nc/global-apis/Miscellaneous/MessageService.md)


Manages Messaging notifications and subscriptions.



### [MockFeatureToggleService](/api-reference/nc/global-apis/Miscellaneous/MockFeatureToggleService.md)


A mock implementation of IFeatureToggle for use in unit testing.



### [MockPageRedirectService](/api-reference/nc/global-apis/Miscellaneous/MockPageRedirectService.md)


A mock implementation of IPageRedirect used in unit tests.



### [MultipleFileUploadComponentController](/api-reference/nc/global-apis/Miscellaneous/MultipleFileUploadComponentController.md)


Controls the MultipleFileUpload component.



### [MultipleFileUploadRequest](/api-reference/nc/global-apis/Miscellaneous/MultipleFileUploadRequest.md)


Utilized to generate requests for the FileUploadService.



### [MultipleFileUploadResponse](/api-reference/nc/global-apis/Miscellaneous/MultipleFileUploadResponse.md)


Used to determine the success or failure of a multiple file upload.



### [NavConfigurationController2](/api-reference/nc/global-apis/Miscellaneous/NavConfigurationController2.md)


Controller for NavConfiguration.page.



### [NavigationInstallData](/api-reference/nc/global-apis/Miscellaneous/NavigationInstallData.md)


Builder class for dealing with navigation menu item custom settings. Intended for use in install scripts. This is a data factory, but please use sparingly and NOT in tests (TestData classes exist for that purpose).



### [NavigationMenuItem](/api-reference/nc/global-apis/Miscellaneous/NavigationMenuItem.md)


Represents a NavigationMenuItem__c custom setting. Specifically for install data.



### [NavigationMenuItemTestData](/api-reference/nc/global-apis/Miscellaneous/NavigationMenuItemTestData.md)


Builder class for dealing with NavigationMenuItem__c records. Solely used for testing, NOT a data factory.



### [NavigationMenuService](/api-reference/nc/global-apis/Miscellaneous/NavigationMenuService.md)


Utility methods for dealing with NavigationMenuItem__c custom setting objects.



### [NewSObjectFlowDataSource](/api-reference/nc/global-apis/Miscellaneous/NewSObjectFlowDataSource.md)


Allows gathering of Data Source from use of a Flow with a new Object.



### [NoAction](/api-reference/nc/global-apis/Miscellaneous/NoAction.md)


Returned when there are no possible actions.



### [NullData](/api-reference/nc/global-apis/Miscellaneous/NullData.md)


A class representing null data to be returned in classes utilizing the null object pattern. Returned by classes (such as DataSources) to indicate that no results were found.



### [OperationResult](/api-reference/nc/global-apis/Miscellaneous/OperationResult.md)


Represents the result of some operation.



### [Option](/api-reference/nc/global-apis/Miscellaneous/Option.md)


Represents an option to display in the OptionSelection card.



### [OptionSelectionComponentController](/api-reference/nc/global-apis/Miscellaneous/OptionSelectionComponentController.md)


Controls OptionSelection.component.



### [OptionSelectionComponentController2](/api-reference/nc/global-apis/Miscellaneous/OptionSelectionComponentController2.md)


Controls OptionSelection.component, allowing options to be received via message, or by data source.



### [OptionalDonationChangedMessage](/api-reference/nc/global-apis/Miscellaneous/OptionalDonationChangedMessage.md)


Message that gets broadcast with a znu.BundleComponent as a parameter.



### [OptionalDonationComponentController](/api-reference/nc/global-apis/Miscellaneous/OptionalDonationComponentController.md)


Controls OptionalDonation.component.



### [OptionalDonationComponentController2](/api-reference/nc/global-apis/Miscellaneous/OptionalDonationComponentController2.md)


Replaces the functionality of OptionalDonationComponentController to base it off of a generic data source model to source the bundle, as well as sending Message instances based upon UI actions rather than operating simply off of a Cart.



### [OrderInformationComponentController](/api-reference/nc/global-apis/Miscellaneous/OrderInformationComponentController.md)


Controls the Order Information card.



### [OrderInformationComponentController2](/api-reference/nc/global-apis/Miscellaneous/OrderInformationComponentController2.md)


Extends the OrderInformationComponentController to control the Order Information card that uses a znu.Order based DataSource.



### [OrderItemDetailsComponentController](/api-reference/nc/global-apis/Miscellaneous/OrderItemDetailsComponentController.md)


Controls OrderItemDetails.component



### [OrderPaymentComponentController](/api-reference/nc/global-apis/Miscellaneous/OrderPaymentComponentController.md)


Used for controlling OrderPayment.component and facilitates authorizing credit card payments.



### [OrderPaymentComponentController2](/api-reference/nc/global-apis/Miscellaneous/OrderPaymentComponentController2.md)


Used for controlling OrderPayment.component and facilitates authorizing credit card payments on znu.Order wrapper instances.



### [OrderStoredPaymentOptSelectionCompCont](/api-reference/nc/global-apis/Miscellaneous/OrderStoredPaymentOptSelectionCompCont.md)


Controls the OptionSelection card in a standalone checkout page.



### [OrderStoredPaymentOptSelectionCompCont2](/api-reference/nc/global-apis/Miscellaneous/OrderStoredPaymentOptSelectionCompCont2.md)


Extension of OrderStoredPaymentOptSelectionCompCont to use a znu.Order based DataSource.



### [OrderSummaryComponentController](/api-reference/nc/global-apis/Miscellaneous/OrderSummaryComponentController.md)


Controls OrderSummary.component



### [PageConfigurationController2](/api-reference/nc/global-apis/Miscellaneous/PageConfigurationController2.md)


Controls PageConfiguration2.page.



### [PageController](/api-reference/nc/global-apis/Miscellaneous/PageController.md)


The base class for pages. Holds the shared data dictionary and provides access to the MessageService.



### [PageInstallData](/api-reference/nc/global-apis/Miscellaneous/PageInstallData.md)


Builder class for dealing with page custom settings. Intended for use in install scripts. This is a data factory, but please use sparingly and NOT in tests (TestData classes exist for that purpose).



### [PageMessageService](/api-reference/nc/global-apis/Miscellaneous/PageMessageService.md)


Provides helper methods for working with Apex page messages



### [PageRedirectRequest](/api-reference/nc/global-apis/Miscellaneous/PageRedirectRequest.md)


A request used for retrieving responses from PageRedirectService.



### [PageRedirectResponse](/api-reference/nc/global-apis/Miscellaneous/PageRedirectResponse.md)


A response used for sending information regarding requests to PageRedirectService.



### [PageRedirectService](/api-reference/nc/global-apis/Miscellaneous/PageRedirectService.md)


Handles page redirects via a request / response model and an implementation of IPageRedirect.



### [PageTestData](/api-reference/nc/global-apis/Miscellaneous/PageTestData.md)


Handles data management for the Page__c custom settings. Solely used for testing, NOT a data factory.



### [PageableV2](/api-reference/nc/global-apis/Miscellaneous/PageableV2.md)


A class for collection pagination Referenced from http://www.iterativelogic.com/enabling-custom-paging-using-apex-and-visualforce/



### [PasscodeComponentController](/api-reference/nc/global-apis/Miscellaneous/PasscodeComponentController.md)


Controller for Passcode.component.



### [PaymentAuthorizationCallback](/api-reference/nc/global-apis/Miscellaneous/PaymentAuthorizationCallback.md)


Implementation of ICallback that sets IsValid to false whenever the callback result is not successful. Used to store Payments for a Payment Authorization.



### [PaymentOptionsComponentController](/api-reference/nc/global-apis/Miscellaneous/PaymentOptionsComponentController.md)


Controls the standalone checkout payment options card.



### [PaymentProcessedException](/api-reference/nc/global-apis/Miscellaneous/PaymentProcessedException.md)


A custom exception to be thrown when a payment is not processed as expected.



### [PickOneMembershipBundle](/api-reference/nc/global-apis/Miscellaneous/PickOneMembershipBundle.md)


NU.MembershipBundleDisplay implementation requiring the user to select exactly one option.



### [PlainTextComponentController](/api-reference/nc/global-apis/Miscellaneous/PlainTextComponentController.md)


A controller for the Plain Text Component.



### [PlainTextComponentController2](/api-reference/nc/global-apis/Miscellaneous/PlainTextComponentController2.md)


A controller for the Plain Text Component which supports merging label values with data from a data source.



### [PlainTextTermsComponentController](/api-reference/nc/global-apis/Miscellaneous/PlainTextTermsComponentController.md)


Extends TermsAndConditionsComponentController providing basic plaintext card style heading / description support for the terms and conditions card.



### [PopulaterRequest](/api-reference/nc/global-apis/Miscellaneous/PopulaterRequest.md)


The request to be passed in to a ICommunityUserPopulater.populateUserInfo(PopulaterRequest) call.



### [PopulaterResponse](/api-reference/nc/global-apis/Miscellaneous/PopulaterResponse.md)


The returned response from a ICommunityUserPopulater.populateUserInfo(PopulaterRequest) call.



### [ProductComponentController](/api-reference/nc/global-apis/Miscellaneous/ProductComponentController.md)


Controls Product.component.



### [ProductFrequenciesComponentController](/api-reference/nc/global-apis/Miscellaneous/ProductFrequenciesComponentController.md)


Controls the ProductFrequencies card.



### [ProductGridDetails](/api-reference/nc/global-apis/Miscellaneous/ProductGridDetails.md)


Class to power the Product Grid LWC.



### [ProductListComponentController](/api-reference/nc/global-apis/Miscellaneous/ProductListComponentController.md)


Controls ProductList.component



### [ProductSummary](/api-reference/nc/global-apis/Miscellaneous/ProductSummary.md)


Handles the data related to a product summary.



### [ProfilePhotoDragAndDropService](/api-reference/nc/global-apis/Miscellaneous/ProfilePhotoDragAndDropService.md)


Facilitates drag and drop upload functionality for account profile photos.



### [QueryService](/api-reference/nc/global-apis/Miscellaneous/QueryService.md)


Service class used by cards to register data sources. Registering data sources across multiple cards prevents different cards from querying the same records separately.



### [QueueableUserInserter](/api-reference/nc/global-apis/Miscellaneous/QueueableUserInserter.md)


Used for inserting users asynchronous via Queueable. Circumvents the synchronous limitations of Mixed DML following account insertion and Site.createExternalUser failing if already logged in.



### [ReCaptchaComponentController](/api-reference/nc/global-apis/Miscellaneous/ReCaptchaComponentController.md)


Controls the ReCaptcha card component.



### [ReceivedRecordListComponentController](/api-reference/nc/global-apis/Miscellaneous/ReceivedRecordListComponentController.md)


Component Controller for the received record list card type, which is a record list subclass that received a list of records to display, instead of using a data source.



### [RecordListComponentController](/api-reference/nc/global-apis/Miscellaneous/RecordListComponentController.md)


Controls RecordList.component cards.



### [RecordPaginationV2](/api-reference/nc/global-apis/Miscellaneous/RecordPaginationV2.md)


RecordPagination is an extension of the pageable class that allows us to implement pagination on the list of records to be displayed.



### [RecordTypeComponentController](/api-reference/nc/global-apis/Miscellaneous/RecordTypeComponentController.md)


Controls RecordType.component.



### [RecordTypeService](/api-reference/nc/global-apis/Miscellaneous/RecordTypeService.md)


This service class is used get record type information.



### [RecordsMessage](/api-reference/nc/global-apis/Miscellaneous/RecordsMessage.md)


Message that contains a set of Ids as well as the SObjectType of those Ids.



### [RegisterAction](/api-reference/nc/global-apis/Miscellaneous/RegisterAction.md)


The potential action of registering for an event.



### [RegistrationButton](/api-reference/nc/global-apis/Miscellaneous/RegistrationButton.md)


An event registration button. Overrides default button functionality to only be enabled if the registration action is available.



### [RegistrationHandler](/api-reference/nc/global-apis/Miscellaneous/RegistrationHandler.md)


Provides hooks for the ICommunityUserLocator, ICommunityUserPopulater, and ICommunityAuthorization interfaces. The default classes can be overridden using the NC__CommunitySettings__c Custom Setting.



### [RegistrationItemDisplay](/api-reference/nc/global-apis/Miscellaneous/RegistrationItemDisplay.md)


Displays registration order items and cart items.



### [RegistrationItemDisplayConstructor](/api-reference/nc/global-apis/Miscellaneous/RegistrationItemDisplayConstructor.md)


Convert registration order items and cart items into objects that can be used for display.



### [RegistrationOrderDetailsCompController](/api-reference/nc/global-apis/Miscellaneous/RegistrationOrderDetailsCompController.md)


Controls RegistrationOrderDetails.component



### [RegistrationService](/api-reference/nc/global-apis/Miscellaneous/RegistrationService.md)


API for registering a user for events.



### [RegistrationTypeComponentController](/api-reference/nc/global-apis/Miscellaneous/RegistrationTypeComponentController.md)


Controller for RegistrationType.component.



### [RenderBankExtProfButton](/api-reference/nc/global-apis/Miscellaneous/RenderBankExtProfButton.md)


A button which only renders if the record it is being displayed with is a bank account external payment profile.



### [RenderButton](/api-reference/nc/global-apis/Miscellaneous/RenderButton.md)


A button with a point and click configurable getShouldRender method. WARNING: This has been deprecated. Use ConditionalButton instead.



### [RenderCreditCardExtProfButton](/api-reference/nc/global-apis/Miscellaneous/RenderCreditCardExtProfButton.md)


A button which only renders if the record it is being displayed with is a credit card external payment profile.



### [RenderExternalPaymentProfileTypeButton](/api-reference/nc/global-apis/Miscellaneous/RenderExternalPaymentProfileTypeButton.md)


An abstract button which provides a mechanism for subclasses to specify the type of external payment profile they are expecting a given record to be in order to render.



### [RosterSearchRequest](/api-reference/nc/global-apis/Miscellaneous/RosterSearchRequest.md)


Request class for interacting with the RosterSearchService.



### [RosterSearchResponse](/api-reference/nc/global-apis/Miscellaneous/RosterSearchResponse.md)


Response class when interacting with the RosterSearchService.



### [RosterSearchService](/api-reference/nc/global-apis/Miscellaneous/RosterSearchService.md)


Service class to handle searching rosters.



### [SObjectInstallData](/api-reference/nc/global-apis/Miscellaneous/SObjectInstallData.md)


A fluent interface for creating and inserting SObject records. Intended for use in install scripts. This is a data factory, but please use sparingly and NOT in tests (TestData classes exist for that purpose).



### [ScheduleLineListViewDataSource](/api-reference/nc/global-apis/Miscellaneous/ScheduleLineListViewDataSource.md)


A data source which provides schedule line list view data.



### [ScheduleLineListViewFailedDataSource](/api-reference/nc/global-apis/Miscellaneous/ScheduleLineListViewFailedDataSource.md)


Extends on its base class functionality by sourcing only failed schedule lines.



### [ScheduleLineListViewPendingDataSource](/api-reference/nc/global-apis/Miscellaneous/ScheduleLineListViewPendingDataSource.md)


Extends on its base class functionality by sourcing only upcoming schedule lines.



### [SchedulePaymentComponentController](/api-reference/nc/global-apis/Miscellaneous/SchedulePaymentComponentController.md)


Controls the ScheduledPayment.component, providing a message if the current user has no stored payment methods.



### [ScheduledPaymentOption](/api-reference/nc/global-apis/Miscellaneous/ScheduledPaymentOption.md)


The Scheduled Payment Option implementation.



### [SearchList](/api-reference/nc/global-apis/Miscellaneous/SearchList.md)


Handles the control of record retrieval and messaging display for store products based upon search queries.



### [SelectMyselfOrOthersComponentController](/api-reference/nc/global-apis/Miscellaneous/SelectMyselfOrOthersComponentController.md)


Controller for SelectMyselfOrOthers.component.



### [ShippingComponentController](/api-reference/nc/global-apis/Miscellaneous/ShippingComponentController.md)


Collects the address of the shippable cart items, the logged account associated with the account, and displays the appropriate shipping address if any.



### [SocialConnectionsComponentController](/api-reference/nc/global-apis/Miscellaneous/SocialConnectionsComponentController.md)


Controls the SocialConnections card.



### [SocialRegistrationHandler](/api-reference/nc/global-apis/Miscellaneous/SocialRegistrationHandler.md)


Registration Handler for Social Sign On functionality.



### [SocialSignOnComponentController](/api-reference/nc/global-apis/Miscellaneous/SocialSignOnComponentController.md)


Controls the Social Sign On Component.



### [SsoCookieComponentController](/api-reference/nc/global-apis/Miscellaneous/SsoCookieComponentController.md)


Controls SsoCookie.component.



### [StoreCategoryListComponentController](/api-reference/nc/global-apis/Miscellaneous/StoreCategoryListComponentController.md)


Controls StoreCategoryList.component



### [StoreList](/api-reference/nc/global-apis/Miscellaneous/StoreList.md)


Handles the control of record retrieval and messaging display for store products.



### [StoreListComponentController](/api-reference/nc/global-apis/Miscellaneous/StoreListComponentController.md)


Collects the requested products based on category. If no category is selected then it will show all products



### [StoredPaymentOptSelectionCompController](/api-reference/nc/global-apis/Miscellaneous/StoredPaymentOptSelectionCompController.md)


Extends the OptionSelectionComponentController2 to handle the selection and process of stored payment methods.



### [StoredPaymentRenderButton](/api-reference/nc/global-apis/Miscellaneous/StoredPaymentRenderButton.md)


A button which renders if and only if the stored payments feature is enabled.



### [SubmitButton](/api-reference/nc/global-apis/Miscellaneous/SubmitButton.md)


This class is a sub-class of the button class that uses the Messaging Service to publish a submit message that will cause all subscribers to the submit message to execute validation and submit logic.



### [SubmitMessage](/api-reference/nc/global-apis/Miscellaneous/SubmitMessage.md)


A Message subclass that is used to notify subscribers to submit any changes entered by users.



### [SubmitNewCompanyButton](/api-reference/nc/global-apis/Miscellaneous/SubmitNewCompanyButton.md)


The button used for submitting new companies in the affiliation new company process. Utilized to automatically make the account doing the creating a company manager, and set it as their primary affiliation.



### [SubmitOrderButton](/api-reference/nc/global-apis/Miscellaneous/SubmitOrderButton.md)


Handles the submission process for already existing orders to apply payment (such as express payments).



### [SubmitOrderMessage](/api-reference/nc/global-apis/Miscellaneous/SubmitOrderMessage.md)


Message that gets broadcast with a znu.Order as a parameter. Cards listening to this message will populate the order accordingly.



### [SubmitPageRequest](/api-reference/nc/global-apis/Miscellaneous/SubmitPageRequest.md)


Request class when using the SubmitPageService.



### [SubmitPageResponse](/api-reference/nc/global-apis/Miscellaneous/SubmitPageResponse.md)


Response class when using the SubmitPageService.



### [SubmitPageService](/api-reference/nc/global-apis/Miscellaneous/SubmitPageService.md)


Handles submitting pages.



### [SubscriptionOrderDetailsCompController](/api-reference/nc/global-apis/Miscellaneous/SubscriptionOrderDetailsCompController.md)


DEPRECATED - Use the SubscriptionOrderDetailsController instead.



### [SubscriptionOrderDetailsController](/api-reference/nc/global-apis/Miscellaneous/SubscriptionOrderDetailsController.md)


Controls the SubscriptionOrderDetails.component for subscriptions.



### [SyncAllRecordJob](/api-reference/nc/global-apis/Miscellaneous/SyncAllRecordJob.md)


An on demand job for syncing all record objects as defined by FieldMapping__c custom settings.



### [SyncRecordJob](/api-reference/nc/global-apis/Miscellaneous/SyncRecordJob.md)


A nightly job for syncing record objects as defined by FieldMapping__c custom settings. Only worries about mappings that involve formula fields as other fields should activate triggers on update.



### [TermBasedItemDetailsComponentController](/api-reference/nc/global-apis/Miscellaneous/TermBasedItemDetailsComponentController.md)


Controls TermBasedItemDetails.component



### [TermBasedItemDisplay](/api-reference/nc/global-apis/Miscellaneous/TermBasedItemDisplay.md)


Display order items and cart items for term based items such as Membership or Program renewals. In order for customizations or external packages to display start and end dates, a mutator must be provided to inject it into the packaged TermBasedItemDetails component.



### [TermsAndConditionsComponentController](/api-reference/nc/global-apis/Miscellaneous/TermsAndConditionsComponentController.md)


Controls TermsAndConditions.component



### [TestHelper](/api-reference/nc/global-apis/Miscellaneous/TestHelper.md)


Test Helpers for asserting common conditions.



### [TimeZoneUtil](/api-reference/nc/global-apis/Miscellaneous/TimeZoneUtil.md)


Provides utility variables for interacting with the User TimeZoneSidKeys.



### [ToggleComponentController](/api-reference/nc/global-apis/Miscellaneous/ToggleComponentController.md)


Controls the Toggle.component.



### [TotalDisplayComponentController](/api-reference/nc/global-apis/Miscellaneous/TotalDisplayComponentController.md)


Controls TotalDisplay.component, displaying the totals of a cart, or order provided by the configured data source.



### [TrafficService](/api-reference/nc/global-apis/Miscellaneous/TrafficService.md)


Wraps an ITrafficService implementation. Originally created to obfuscate calls to the CookieTrafficService, to avoid globally exposing in case of deprecation.



### [UnauthorizedAccessException](/api-reference/nc/global-apis/Miscellaneous/UnauthorizedAccessException.md)


Exception thrown when a user attempts to access objects or fields that they do not have sufficient permissions for.



### [UnitOfWork](/api-reference/nc/global-apis/Miscellaneous/UnitOfWork.md)


Provides an implementation of the Enterprise Application Architecture Unit Of Work, as defined by Martin Fowler: http://martinfowler.com/eaaCatalog/unitOfWork.html - Applies bulkification to DML operations, insert, update and delete. - Manages a business transaction around the work and ensures a rollback occurs (even when exceptions are later handled by the caller). - Honors dependency rules between records and updates dependent relationships automatically during the commit. - Populating relationships from one object type to itself are not currently supported (such as Account.NU__PrimaryAffiliation__c) - Allows for generic work to be registered and executed utilizing the IDoWork interface. - Allows for extension and custom operations during the commit phase via the IDML interface.



### [UploadPhotoComponentController](/api-reference/nc/global-apis/Miscellaneous/UploadPhotoComponentController.md)


Controls UploadPhoto.component, allowing photos to be uploaded.



### [UrlService](/api-reference/nc/global-apis/Miscellaneous/UrlService.md)


A service providing utility methods related to the manipulation of URLs.



### [UserService](/api-reference/nc/global-apis/Miscellaneous/UserService.md)


UserService accesses the users and accounts defined in the org, including imported accounts with no Salesforce user accounts attached to them.



### [ValidateCallback](/api-reference/nc/global-apis/Miscellaneous/ValidateCallback.md)


Implementation of ICallback that sets IsValid to false whenever the callback result is not successful.



### [ValidateMessage](/api-reference/nc/global-apis/Miscellaneous/ValidateMessage.md)


A Message subclass that is used to notify subscribers to process any validation logic.



### [ValidationException](/api-reference/nc/global-apis/Miscellaneous/ValidationException.md)


Thrown when validation did not succeed.



### [VisualforcePage](/api-reference/nc/global-apis/Miscellaneous/VisualforcePage.md)


This object represents a Visualforce page wrapping a Page__c or Page2__mdt record.



### [WelcomeEmailComponentController](/api-reference/nc/global-apis/Miscellaneous/WelcomeEmailComponentController.md)


Controls user facing email related components.


## url-rewriters

### [UrlRewriter](/api-reference/nc/global-apis/url-rewriters/UrlRewriter.md)


Url Rewriter for Community Hub. Will translate friendly urls and serve up a dynamic template if a Page Setting is configured with the Page__c.DynamicPageUrl__c.



### [UrlRewriter2](/api-reference/nc/global-apis/url-rewriters/UrlRewriter2.md)


Url Rewriter for Community Hub. Will translate friendly urls and serve up a dynamic template if a Page Setting is configured with the Page__c.DynamicPageUrl__c.
