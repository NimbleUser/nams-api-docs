# Classes
## AccountsApi

### [AccountBase](api-reference/nams/public-apis/AccountsApi/AccountBase.md)


Represents an Organization or a Person Account.



### [AccountsApi](api-reference/nams/public-apis/AccountsApi/AccountsApi.md)


Provides endpoints for Accounts API.



### [AccountsApiAccountFactory](api-reference/nams/public-apis/AccountsApi/AccountsApiAccountFactory.md)


Allows for the creation of [AccountBase](api-reference/nams/public-apis/AccountsApi/AccountBase.md) objects.



### [AccountsApiAccountRetriever](api-reference/nams/public-apis/AccountsApi/AccountsApiAccountRetriever.md)


In charge of retrieving Account data and returning the corresponding [AccountBase](api-reference/nams/public-apis/AccountsApi/AccountBase.md) wrappers.



### [AccountsApiContactFactory](api-reference/nams/public-apis/AccountsApi/AccountsApiContactFactory.md)


Allows for the creation of [PersonBase](api-reference/nams/public-apis/AccountsApi/PersonBase.md) objects.



### [AccountsApiContactRetriever](api-reference/nams/public-apis/AccountsApi/AccountsApiContactRetriever.md)


In charge of retrieving Contact data and returning the corresponding Contact wrappers.



### [AccountsApiException](api-reference/nams/public-apis/AccountsApi/AccountsApiException.md)


Signals an error has occurred when interacting with the [AccountsApi](api-reference/nams/public-apis/AccountsApi/AccountsApi.md).



### [AccountsApiV1](api-reference/nams/public-apis/AccountsApi/AccountsApiV1.md)


Version 1 implementation of the [AccountsApi](api-reference/nams/public-apis/AccountsApi/AccountsApi.md). Do not call directly, but through AccountsApi.v1.



### [PersonBase](api-reference/nams/public-apis/AccountsApi/PersonBase.md)


Represents a Person Account.


## Miscellaneous

### [AccountBaseTestData](api-reference/nams/public-apis/Miscellaneous/AccountBaseTestData.md)






### [AdditionalSettingTestData](api-reference/nams/public-apis/Miscellaneous/AdditionalSettingTestData.md)






### [Address](api-reference/nams/public-apis/Miscellaneous/Address.md)


Represents Address information - Street, City, State, PostalCode, and Country strings.



### [AffiliationTestData](api-reference/nams/public-apis/Miscellaneous/AffiliationTestData.md)






### [ChapterTestData](api-reference/nams/public-apis/Miscellaneous/ChapterTestData.md)






### [Comparators](api-reference/nams/public-apis/Miscellaneous/Comparators.md)


@description @group



### [CriterionTestData](api-reference/nams/public-apis/Miscellaneous/CriterionTestData.md)






### [CriterionType](api-reference/nams/public-apis/Miscellaneous/CriterionType.md)


Represents a different type of criterion. @group EvaluationsApi



### [EvaluationTestData](api-reference/nams/public-apis/Miscellaneous/EvaluationTestData.md)






### [ISortable](api-reference/nams/public-apis/Miscellaneous/ISortable.md)






### [LoggerLevel](api-reference/nams/public-apis/Miscellaneous/LoggerLevel.md)


Logger level enums. @group Logger



### [MultiselectPicklistFormatter](api-reference/nams/public-apis/Miscellaneous/MultiselectPicklistFormatter.md)


Helps manage object variations for Multiselect Picklists.



### [PersistenceDefinitionBase](api-reference/nams/public-apis/Miscellaneous/PersistenceDefinitionBase.md)


Represents how an API's model class can be persisted in the database.


## Core

### [AdditionalSetting](api-reference/nams/public-apis/Core/AdditionalSetting.md)


Represents a key value pair.



### [AdditionalSettingCollection](api-reference/nams/public-apis/Core/AdditionalSettingCollection.md)


Collection of [AdditionalSetting](api-reference/nams/public-apis/Core/AdditionalSetting.md).



### [AdditionalSettings](api-reference/nams/public-apis/Core/AdditionalSettings.md)


Helps with interactions with [AdditionalSetting](api-reference/nams/public-apis/Core/AdditionalSetting.md) objects.



### [Application](api-reference/nams/public-apis/Core/Application.md)


Provides access to classes that alter the application behavior.



### [BulkPersistenceMessageHandler](api-reference/nams/public-apis/Core/BulkPersistenceMessageHandler.md)


Implement this interface when you want to get notified of all of the IPersistenceSupport records that will be committed to the database before DML occurs.



### [FactoryWithPluginTemplate](api-reference/nams/public-apis/Core/FactoryWithPluginTemplate.md)


Base class for a Factory implementation that supports plugins.



### [FieldsProviderBase](api-reference/nams/public-apis/Core/FieldsProviderBase.md)


Represents an object that provides field names for querying records.



### [FieldsProviderFactory](api-reference/nams/public-apis/Core/FieldsProviderFactory.md)


Factory class to retrieve IFieldsProvider implementations for different SObjectTypes.



### [IModel](api-reference/nams/public-apis/Core/IModel.md)


Represents a model layer object.



### [INamed](api-reference/nams/public-apis/Core/INamed.md)


Represents an object that has a name.



### [IPersistenceSupport](api-reference/nams/public-apis/Core/IPersistenceSupport.md)


Allows for a model object to be saved into the database.



### [Identities](api-reference/nams/public-apis/Core/Identities.md)


Library of identity function helpers to group objects using the R framework.



### [Logger](api-reference/nams/public-apis/Core/Logger.md)


Logger class to log logs.



### [MetadataPersistenceCallback](api-reference/nams/public-apis/Core/MetadataPersistenceCallback.md)


Callback class for async interactions with the persistence service.



### [MetadataPersistenceService](api-reference/nams/public-apis/Core/MetadataPersistenceService.md)


[PersistenceService](api-reference/nams/public-apis/Core/PersistenceService.md) implementation that deals with persisting custom metadata records.



### [PersistenceCollection](api-reference/nams/public-apis/Core/PersistenceCollection.md)


Wraps a list of IPersistenceSupport. Helps with the tracking of IPersistenceSupport objects for them to be automatically registered into the PersistenceService based on changes made to them.



### [PersistenceService](api-reference/nams/public-apis/Core/PersistenceService.md)


Singleton service that deals with saving API Model data into the database.



### [Pluggable](api-reference/nams/public-apis/Core/Pluggable.md)


Base class for API plugins to extend from.



### [QPlugin](api-reference/nams/public-apis/Core/QPlugin.md)


Plugin class that introduces Q behavior for use in retrievers.



### [QRunner](api-reference/nams/public-apis/Core/QRunner.md)


Used for executing Q queries.



### [SObjectPersistenceService](api-reference/nams/public-apis/Core/SObjectPersistenceService.md)


[PersistenceService](api-reference/nams/public-apis/Core/PersistenceService.md) implementation that deals with persisting SObject records.



### [SharingUtils](api-reference/nams/public-apis/Core/SharingUtils.md)


Defines application wide sharing behavior.



### [TriggerHandlerManager](api-reference/nams/public-apis/Core/TriggerHandlerManager.md)


Entry-point for trigger execution.



### [TriggerRunnable](api-reference/nams/public-apis/Core/TriggerRunnable.md)


Implement this interface on a trigger step.



### [TriggeringContext](api-reference/nams/public-apis/Core/TriggeringContext.md)


Represents the context in which a trigger is being run.


## AffiliationsApi

### [Affiliation](api-reference/nams/public-apis/AffiliationsApi/Affiliation.md)


Represents an Affiliation.



### [AffiliationsApi](api-reference/nams/public-apis/AffiliationsApi/AffiliationsApi.md)


Provides endpoints for communicating with the AffiliationsApi.



### [AffiliationsApiException](api-reference/nams/public-apis/AffiliationsApi/AffiliationsApiException.md)


Signals an error has occurred when interacting with the [AffiliationsApi](api-reference/nams/public-apis/AffiliationsApi/AffiliationsApi.md).



### [AffiliationsApiFactory](api-reference/nams/public-apis/AffiliationsApi/AffiliationsApiFactory.md)


In charge of creating [Affiliation](api-reference/nams/public-apis/AffiliationsApi/Affiliation.md) instances.



### [AffiliationsApiPersistenceService](api-reference/nams/public-apis/AffiliationsApi/AffiliationsApiPersistenceService.md)


Service in charge of persisting [Affiliation](api-reference/nams/public-apis/AffiliationsApi/Affiliation.md) objects.



### [AffiliationsApiRetriever](api-reference/nams/public-apis/AffiliationsApi/AffiliationsApiRetriever.md)


Responsible for retrieving [Affiliation](api-reference/nams/public-apis/AffiliationsApi/Affiliation.md) instances.



### [AffiliationsApiService](api-reference/nams/public-apis/AffiliationsApi/AffiliationsApiService.md)


Service class for the [AffiliationsApi](api-reference/nams/public-apis/AffiliationsApi/AffiliationsApi.md).



### [AffiliationsApiV1](api-reference/nams/public-apis/AffiliationsApi/AffiliationsApiV1.md)


Version 1 implementation of the [AffiliationsApi](api-reference/nams/public-apis/AffiliationsApi/AffiliationsApi.md). Do not call directly, but through AffiliationsApi.v1.


## ChaptersApi

### [Chapter](api-reference/nams/public-apis/ChaptersApi/Chapter.md)


Represents a Chapter.



### [ChaptersApi](api-reference/nams/public-apis/ChaptersApi/ChaptersApi.md)


Provides endpoints for communicating with the ChaptersApi.



### [ChaptersApiException](api-reference/nams/public-apis/ChaptersApi/ChaptersApiException.md)


Thrown by the ChaptersApi.



### [ChaptersApiFactory](api-reference/nams/public-apis/ChaptersApi/ChaptersApiFactory.md)


In charge of creating [Chapter](api-reference/nams/public-apis/ChaptersApi/Chapter.md) objects.



### [ChaptersApiRetriever](api-reference/nams/public-apis/ChaptersApi/ChaptersApiRetriever.md)


Responsible for retrieving [Chapter](api-reference/nams/public-apis/ChaptersApi/Chapter.md) instances.



### [ChaptersApiService](api-reference/nams/public-apis/ChaptersApi/ChaptersApiService.md)


Service class for the ChaptersApi.



### [ChaptersApiV1](api-reference/nams/public-apis/ChaptersApi/ChaptersApiV1.md)


Version 1 implementation of the ChaptersApi. Do not call directly, but through ChaptersApi.v1.


## EvaluationsApi

### [CriteriaEvaluationResult](api-reference/nams/public-apis/EvaluationsApi/CriteriaEvaluationResult.md)


Result class returned by evaluating [Criterion](api-reference/nams/public-apis/EvaluationsApi/Criterion.md) objects.



### [Criterion](api-reference/nams/public-apis/EvaluationsApi/Criterion.md)


Represents a single criterion.



### [Evaluation](api-reference/nams/public-apis/EvaluationsApi/Evaluation.md)


Represents an evaluation.



### [EvaluationContext](api-reference/nams/public-apis/EvaluationsApi/EvaluationContext.md)


Class that gives contextual information for an evaluation.



### [EvaluationResult](api-reference/nams/public-apis/EvaluationsApi/EvaluationResult.md)


Result class returned by evaluating [Evaluation](api-reference/nams/public-apis/EvaluationsApi/Evaluation.md) objects.



### [EvaluationsApi](api-reference/nams/public-apis/EvaluationsApi/EvaluationsApi.md)


Provides endpoints for communicating with the EvaluationsApi.



### [EvaluationsApiCriteriaFactory](api-reference/nams/public-apis/EvaluationsApi/EvaluationsApiCriteriaFactory.md)


In charge of creating [Criterion](api-reference/nams/public-apis/EvaluationsApi/Criterion.md) instances.



### [EvaluationsApiEvaluationFactory](api-reference/nams/public-apis/EvaluationsApi/EvaluationsApiEvaluationFactory.md)


In charge of creating [Evaluation](api-reference/nams/public-apis/EvaluationsApi/Evaluation.md) instances.



### [EvaluationsApiException](api-reference/nams/public-apis/EvaluationsApi/EvaluationsApiException.md)


Exception thrown by the Evaluations API.



### [EvaluationsApiFactory](api-reference/nams/public-apis/EvaluationsApi/EvaluationsApiFactory.md)


In charge of creating [Evaluation](api-reference/nams/public-apis/EvaluationsApi/Evaluation.md) instances.



### [EvaluationsApiPersistenceService](api-reference/nams/public-apis/EvaluationsApi/EvaluationsApiPersistenceService.md)


Service in charge of persisting Evaluation objects.



### [EvaluationsApiRetriever](api-reference/nams/public-apis/EvaluationsApi/EvaluationsApiRetriever.md)


Responsible for retrieving [Evaluation](api-reference/nams/public-apis/EvaluationsApi/Evaluation.md) objects.



### [EvaluationsApiService](api-reference/nams/public-apis/EvaluationsApi/EvaluationsApiService.md)


Service class for the EvaluationsApi.



### [EvaluationsApiV1](api-reference/nams/public-apis/EvaluationsApi/EvaluationsApiV1.md)


Version 1 implementation of the EvaluationsApi. Do not call directly, but through EvaluationsApi.v1.



### [IEvaluateCriteria](api-reference/nams/public-apis/EvaluationsApi/IEvaluateCriteria.md)


Evaluate [Criterion](api-reference/nams/public-apis/EvaluationsApi/Criterion.md) objects.


## Logger

### [ILogger](api-reference/nams/public-apis/Logger/ILogger.md)


Logger interface.



### [LogBuilder](api-reference/nams/public-apis/Logger/LogBuilder.md)


Fluent class to build log messages with helper methods that allow for additional contextual information to be passed to the logs.



### [LogContext](api-reference/nams/public-apis/Logger/LogContext.md)


The base context for a logging statement. This object is automatically generated by the internal logger framework and passed to [ILogger](api-reference/nams/public-apis/Logger/ILogger.md) implementations, which should use the contents of the object to appropriately log.



### [Trace](api-reference/nams/public-apis/Logger/Trace.md)


This class contains methods to interact with the stack trace.



### [Tracer](api-reference/nams/public-apis/Logger/Tracer.md)


Tracer class to retrieve stack trace relevant information.


## TriggerStepApi

### [TriggerStep](api-reference/nams/public-apis/TriggerStepApi/TriggerStep.md)


Model representation for the TriggerStep custom metadata type.



### [TriggerStepApi](api-reference/nams/public-apis/TriggerStepApi/TriggerStepApi.md)


Provides endpoints for the TriggerStepApi.



### [TriggerStepApiRetriever](api-reference/nams/public-apis/TriggerStepApi/TriggerStepApiRetriever.md)


Responsible for retrieving TriggerStep custom metadata types.



### [TriggerStepApiV1](api-reference/nams/public-apis/TriggerStepApi/TriggerStepApiV1.md)


Version 1 implementation of the [TriggerStepApi](api-reference/nams/public-apis/TriggerStepApi/TriggerStepApi.md). Do not call directly, but through TriggerStepApi.v1.


## TriggerStep

### [TriggerStepApiException](api-reference/nams/public-apis/TriggerStep/TriggerStepApiException.md)


Signals an error has occurred when interacting with the [TriggerStep](api-reference/nams/public-apis/TriggerStepApi/TriggerStep.md).



### [TriggerStepApiFactory](api-reference/nams/public-apis/TriggerStep/TriggerStepApiFactory.md)


Allows for the creation of Trigger Step objects.


## UiApi

### [UiApi](api-reference/nams/public-apis/UiApi/UiApi.md)


Provides endpoints for the UiApi.



### [UiApiException](api-reference/nams/public-apis/UiApi/UiApiException.md)


Signals an error has occurred when interacting with the [UiApi](api-reference/nams/public-apis/UiApi/UiApi.md).



### [UiApiV1](api-reference/nams/public-apis/UiApi/UiApiV1.md)


Version 1 implementation of the [UiApi](api-reference/nams/public-apis/UiApi/UiApi.md). Do not call directly, but through UiApi.v1.



### [UiRecordApi](api-reference/nams/public-apis/UiApi/UiRecordApi.md)


Provides endpoints to facilitate the display of records through a UI.



### [UiRecordApiRequest](api-reference/nams/public-apis/UiApi/UiRecordApiRequest.md)


Request class that provides information about records to retrieve for UI display.



### [UiRecordApiResponse](api-reference/nams/public-apis/UiApi/UiRecordApiResponse.md)


Response class that provides information about records to retrieved for UI display.


## UiRecordApi

### [UiRecordApiResponseWithTotalCount](api-reference/nams/public-apis/UiRecordApi/UiRecordApiResponseWithTotalCount.md)


Sets the total number of records to the generated [UiRecordApiResponse](api-reference/nams/public-apis/UiApi/UiRecordApiResponse.md).


