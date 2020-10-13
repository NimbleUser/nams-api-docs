# Classes
## AccountsApi

### [AccountBase](nams/public-apis/AccountsApi/AccountBase.md)


Represents an Organization or a Person Account.



### [AccountsApi](nams/public-apis/AccountsApi/AccountsApi.md)


Provides endpoints for Accounts API.



### [AccountsApiAccountFactory](nams/public-apis/AccountsApi/AccountsApiAccountFactory.md)


Allows for the creation of [AccountBase](nams/public-apis/AccountsApi/AccountBase.md) objects.



### [AccountsApiAccountRetriever](nams/public-apis/AccountsApi/AccountsApiAccountRetriever.md)


In charge of retrieving Account data and returning the corresponding [AccountBase](nams/public-apis/AccountsApi/AccountBase.md) wrappers.



### [AccountsApiContactFactory](nams/public-apis/AccountsApi/AccountsApiContactFactory.md)


Allows for the creation of [PersonBase](nams/public-apis/AccountsApi/PersonBase.md) objects.



### [AccountsApiContactRetriever](nams/public-apis/AccountsApi/AccountsApiContactRetriever.md)


In charge of retrieving Contact data and returning the corresponding {@link ContactBase} wrappers.



### [AccountsApiException](nams/public-apis/AccountsApi/AccountsApiException.md)


Signals an error has occurred when interacting with the [AccountsApi](nams/public-apis/AccountsApi/AccountsApi.md).



### [AccountsApiV1](nams/public-apis/AccountsApi/AccountsApiV1.md)


Version 1 implementation of the [AccountsApi](nams/public-apis/AccountsApi/AccountsApi.md). Do not call directly, but through AccountsApi.v1.



### [PersonBase](nams/public-apis/AccountsApi/PersonBase.md)


Represents a Person Account.


## Miscellaneous

### [AccountBaseTestData](nams/public-apis/Miscellaneous/AccountBaseTestData.md)






### [AdditionalSettingTestData](nams/public-apis/Miscellaneous/AdditionalSettingTestData.md)






### [Address](nams/public-apis/Miscellaneous/Address.md)


Represents Address information - Street, City, State, PostalCode, and Country strings.



### [AffiliationTestData](nams/public-apis/Miscellaneous/AffiliationTestData.md)






### [ChapterTestData](nams/public-apis/Miscellaneous/ChapterTestData.md)






### [Comparators](nams/public-apis/Miscellaneous/Comparators.md)


@description @group



### [CriterionTestData](nams/public-apis/Miscellaneous/CriterionTestData.md)






### [CriterionType](nams/public-apis/Miscellaneous/CriterionType.md)


Represents a different type of criterion. @group EvaluationsApi



### [EvaluationTestData](nams/public-apis/Miscellaneous/EvaluationTestData.md)






### [ISortable](nams/public-apis/Miscellaneous/ISortable.md)






### [LoggerLevel](nams/public-apis/Miscellaneous/LoggerLevel.md)


Logger level enums. @group Logger



### [MultiselectPicklistFormatter](nams/public-apis/Miscellaneous/MultiselectPicklistFormatter.md)


Helps manage object variations for Multiselect Picklists.



### [PersistenceDefinitionBase](nams/public-apis/Miscellaneous/PersistenceDefinitionBase.md)


Represents how an API's model class can be persisted in the database.


## Core

### [AdditionalSetting](nams/public-apis/Core/AdditionalSetting.md)


Represents a key value pair.



### [AdditionalSettingCollection](nams/public-apis/Core/AdditionalSettingCollection.md)


Collection of [AdditionalSetting](nams/public-apis/Core/AdditionalSetting.md).



### [AdditionalSettings](nams/public-apis/Core/AdditionalSettings.md)


Helps with interactions with [AdditionalSetting](nams/public-apis/Core/AdditionalSetting.md) objects.



### [Application](nams/public-apis/Core/Application.md)


Provides access to classes that alter the application behavior.



### [BulkPersistenceMessageHandler](nams/public-apis/Core/BulkPersistenceMessageHandler.md)


Implement this interface when you want to get notified of all of the IPersistenceSupport records that will be committed to the database before DML occurs.



### [FactoryWithPluginTemplate](nams/public-apis/Core/FactoryWithPluginTemplate.md)


Base class for a Factory implementation that supports plugins.



### [FieldsProviderBase](nams/public-apis/Core/FieldsProviderBase.md)


Represents an object that provides field names for querying records.



### [FieldsProviderFactory](nams/public-apis/Core/FieldsProviderFactory.md)


Factory class to retrieve IFieldsProvider implementations for different SObjectTypes.



### [IModel](nams/public-apis/Core/IModel.md)


Represents a model layer object.



### [INamed](nams/public-apis/Core/INamed.md)


Represents an object that has a name.



### [IPersistenceSupport](nams/public-apis/Core/IPersistenceSupport.md)


Allows for a model object to be saved into the database.



### [Identities](nams/public-apis/Core/Identities.md)


Library of identity function helpers to group objects using the R framework.



### [Logger](nams/public-apis/Core/Logger.md)


Logger class to log logs.



### [MetadataPersistenceCallback](nams/public-apis/Core/MetadataPersistenceCallback.md)


Callback class for async interactions with the persistence service.



### [MetadataPersistenceService](nams/public-apis/Core/MetadataPersistenceService.md)


[PersistenceService](nams/public-apis/Core/PersistenceService.md) implementation that deals with persisting custom metadata records.



### [PersistenceCollection](nams/public-apis/Core/PersistenceCollection.md)


Wraps a list of IPersistenceSupport. Helps with the tracking of IPersistenceSupport objects for them to be automatically registered into the PersistenceService based on changes made to them.



### [PersistenceService](nams/public-apis/Core/PersistenceService.md)


Singleton service that deals with saving API Model data into the database.



### [Pluggable](nams/public-apis/Core/Pluggable.md)


Base class for API plugins to extend from.



### [QPlugin](nams/public-apis/Core/QPlugin.md)


Plugin class that introduces Q behavior for use in retrievers.



### [QRunner](nams/public-apis/Core/QRunner.md)


Used for executing Q queries.



### [SObjectPersistenceService](nams/public-apis/Core/SObjectPersistenceService.md)


[PersistenceService](nams/public-apis/Core/PersistenceService.md) implementation that deals with persisting SObject records.



### [SharingUtils](nams/public-apis/Core/SharingUtils.md)


Defines application wide sharing behavior.



### [TriggerHandlerManager](nams/public-apis/Core/TriggerHandlerManager.md)


Entry-point for trigger execution.



### [TriggerRunnable](nams/public-apis/Core/TriggerRunnable.md)


Implement this interface on a trigger step.



### [TriggeringContext](nams/public-apis/Core/TriggeringContext.md)


Represents the context in which a trigger is being run.


## AffiliationsApi

### [Affiliation](nams/public-apis/AffiliationsApi/Affiliation.md)


Represents an Affiliation.



### [AffiliationsApi](nams/public-apis/AffiliationsApi/AffiliationsApi.md)


Provides endpoints for communicating with the AffiliationsApi.



### [AffiliationsApiException](nams/public-apis/AffiliationsApi/AffiliationsApiException.md)


Signals an error has occurred when interacting with the [AffiliationsApi](nams/public-apis/AffiliationsApi/AffiliationsApi.md).



### [AffiliationsApiFactory](nams/public-apis/AffiliationsApi/AffiliationsApiFactory.md)


In charge of creating [Affiliation](nams/public-apis/AffiliationsApi/Affiliation.md) instances.



### [AffiliationsApiPersistenceService](nams/public-apis/AffiliationsApi/AffiliationsApiPersistenceService.md)


Service in charge of persisting [Affiliation](nams/public-apis/AffiliationsApi/Affiliation.md) objects.



### [AffiliationsApiRetriever](nams/public-apis/AffiliationsApi/AffiliationsApiRetriever.md)


Responsible for retrieving [Affiliation](nams/public-apis/AffiliationsApi/Affiliation.md) instances.



### [AffiliationsApiService](nams/public-apis/AffiliationsApi/AffiliationsApiService.md)


Service class for the [AffiliationsApi](nams/public-apis/AffiliationsApi/AffiliationsApi.md).



### [AffiliationsApiV1](nams/public-apis/AffiliationsApi/AffiliationsApiV1.md)


Version 1 implementation of the [AffiliationsApi](nams/public-apis/AffiliationsApi/AffiliationsApi.md). Do not call directly, but through AffiliationsApi.v1.


## ChaptersApi

### [Chapter](nams/public-apis/ChaptersApi/Chapter.md)


Represents a Chapter.



### [ChaptersApi](nams/public-apis/ChaptersApi/ChaptersApi.md)


Provides endpoints for communicating with the ChaptersApi.



### [ChaptersApiException](nams/public-apis/ChaptersApi/ChaptersApiException.md)


Thrown by the ChaptersApi.



### [ChaptersApiFactory](nams/public-apis/ChaptersApi/ChaptersApiFactory.md)


In charge of creating [Chapter](nams/public-apis/ChaptersApi/Chapter.md) objects.



### [ChaptersApiRetriever](nams/public-apis/ChaptersApi/ChaptersApiRetriever.md)


Responsible for retrieving [Chapter](nams/public-apis/ChaptersApi/Chapter.md) instances.



### [ChaptersApiService](nams/public-apis/ChaptersApi/ChaptersApiService.md)


Service class for the ChaptersApi.



### [ChaptersApiV1](nams/public-apis/ChaptersApi/ChaptersApiV1.md)


Version 1 implementation of the ChaptersApi. Do not call directly, but through ChaptersApi.v1.


## EvaluationsApi

### [CriteriaEvaluationResult](nams/public-apis/EvaluationsApi/CriteriaEvaluationResult.md)


Result class returned by evaluating [Criterion](nams/public-apis/EvaluationsApi/Criterion.md) objects.



### [Criterion](nams/public-apis/EvaluationsApi/Criterion.md)


Represents a single criterion.



### [Evaluation](nams/public-apis/EvaluationsApi/Evaluation.md)


Represents an evaluation.



### [EvaluationContext](nams/public-apis/EvaluationsApi/EvaluationContext.md)


Class that gives contextual information for an evaluation.



### [EvaluationResult](nams/public-apis/EvaluationsApi/EvaluationResult.md)


Result class returned by evaluating [Evaluation](nams/public-apis/EvaluationsApi/Evaluation.md) objects.



### [EvaluationsApi](nams/public-apis/EvaluationsApi/EvaluationsApi.md)


Provides endpoints for communicating with the EvaluationsApi.



### [EvaluationsApiCriteriaFactory](nams/public-apis/EvaluationsApi/EvaluationsApiCriteriaFactory.md)


In charge of creating [Criterion](nams/public-apis/EvaluationsApi/Criterion.md) instances.



### [EvaluationsApiEvaluationFactory](nams/public-apis/EvaluationsApi/EvaluationsApiEvaluationFactory.md)


In charge of creating [Evaluation](nams/public-apis/EvaluationsApi/Evaluation.md) instances.



### [EvaluationsApiException](nams/public-apis/EvaluationsApi/EvaluationsApiException.md)


Exception thrown by the Evaluations API.



### [EvaluationsApiFactory](nams/public-apis/EvaluationsApi/EvaluationsApiFactory.md)


In charge of creating [Evaluation](nams/public-apis/EvaluationsApi/Evaluation.md) instances.



### [EvaluationsApiPersistenceService](nams/public-apis/EvaluationsApi/EvaluationsApiPersistenceService.md)


Service in charge of persisting Evaluation objects.



### [EvaluationsApiRetriever](nams/public-apis/EvaluationsApi/EvaluationsApiRetriever.md)


Responsible for retrieving [Evaluation](nams/public-apis/EvaluationsApi/Evaluation.md) objects.



### [EvaluationsApiService](nams/public-apis/EvaluationsApi/EvaluationsApiService.md)


Service class for the EvaluationsApi.



### [EvaluationsApiV1](nams/public-apis/EvaluationsApi/EvaluationsApiV1.md)


Version 1 implementation of the EvaluationsApi. Do not call directly, but through EvaluationsApi.v1.



### [IEvaluateCriteria](nams/public-apis/EvaluationsApi/IEvaluateCriteria.md)


Evaluate [Criterion](nams/public-apis/EvaluationsApi/Criterion.md) objects.


## Logger

### [ILogger](nams/public-apis/Logger/ILogger.md)


Logger interface.



### [LogBuilder](nams/public-apis/Logger/LogBuilder.md)


Fluent class to build log messages with helper methods that allow for additional contextual information to be passed to the logs.



### [LogContext](nams/public-apis/Logger/LogContext.md)


The base context for a logging statement. This object is automatically generated by the internal logger framework and passed to [ILogger](nams/public-apis/Logger/ILogger.md) implementations, which should use the contents of the object to appropriately log.



### [Trace](nams/public-apis/Logger/Trace.md)


This class contains methods to interact with the stack trace.



### [Tracer](nams/public-apis/Logger/Tracer.md)


Tracer class to retrieve stack trace relevant information.


## TriggerStepApi

### [TriggerStep](nams/public-apis/TriggerStepApi/TriggerStep.md)


Model representation for the TriggerStep custom metadata type.



### [TriggerStepApi](nams/public-apis/TriggerStepApi/TriggerStepApi.md)


Provides endpoints for the TriggerStepApi.



### [TriggerStepApiRetriever](nams/public-apis/TriggerStepApi/TriggerStepApiRetriever.md)


Responsible for retrieving TriggerStep custom metadata types.



### [TriggerStepApiV1](nams/public-apis/TriggerStepApi/TriggerStepApiV1.md)


Version 1 implementation of the [TriggerStepApi](nams/public-apis/TriggerStepApi/TriggerStepApi.md). Do not call directly, but through TriggerStepApi.v1.


## TriggerStep

### [TriggerStepApiException](nams/public-apis/TriggerStep/TriggerStepApiException.md)


Signals an error has occurred when interacting with the [TriggerStep](nams/public-apis/TriggerStepApi/TriggerStep.md).



### [TriggerStepApiFactory](nams/public-apis/TriggerStep/TriggerStepApiFactory.md)


Allows for the creation of Trigger Step objects.


## UiApi

### [UiApi](nams/public-apis/UiApi/UiApi.md)


Provides endpoints for the UiApi.



### [UiApiException](nams/public-apis/UiApi/UiApiException.md)


Signals an error has occurred when interacting with the [UiApi](nams/public-apis/UiApi/UiApi.md).



### [UiApiV1](nams/public-apis/UiApi/UiApiV1.md)


Version 1 implementation of the [UiApi](nams/public-apis/UiApi/UiApi.md). Do not call directly, but through UiApi.v1.



### [UiRecordApi](nams/public-apis/UiApi/UiRecordApi.md)


Provides endpoints to facilitate the display of records through a UI.



### [UiRecordApiRequest](nams/public-apis/UiApi/UiRecordApiRequest.md)


Request class that provides information about records to retrieve for UI display.



### [UiRecordApiResponse](nams/public-apis/UiApi/UiRecordApiResponse.md)


Response class that provides information about records to retrieved for UI display.


## UiRecordApi

### [UiRecordApiResponseWithTotalCount](nams/public-apis/UiRecordApi/UiRecordApiResponseWithTotalCount.md)


Sets the total number of records to the generated [UiRecordApiResponse](nams/public-apis/UiApi/UiRecordApiResponse.md).


