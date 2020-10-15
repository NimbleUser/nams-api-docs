# Chapters

The `ChaptersApi` is used to create and manage Chapters.

## Model and Factories

Model objects are classes that represent an SObject in the database. They exists in memory until persisted.

To avoid interacting with them directly, Factories are used to create in-memory instances that represent Models.

Currently, there is only one Model and one Factory for the creation of Chapter objects.

## Creating a Chapter

A Chapter is an Account object with a record type of Chapter. To create a Chapter through the API, you will need to pass in a list of records.

[code](../../samples/chapters/classes/ChaptersDocsSamples.cls ':include :type=code apex :fragment=creating-chapters')

## Assignment Rule

Besides the record type, one main distinction between a Chapter and a regular Account is the ability to set an assignment rule logic. This logic will be used to determine how people are associated with a chapter.
To do this, you will first need to create an [Evaluation](apis/EvaluationsApi/Evaluation.md) criteria.

To set/get the assignment rule for a Chapter:

[code](../../samples/chapters/classes/ChaptersDocsSamples.cls ':include :type=code apex :fragment=assignment-rule')

## Retrieving a Chapter

You can retrieve Chapters in the database through the API by using the Retriever. When using the Retriever, the Chapter will be returned in the form of Model objects.

To retrieve Chapter by Id:

[code](../../samples/chapters/classes/ChaptersDocsSamples.cls ':include :type=code apex :fragment=retrieve-chapters-byId')

To retrieve all Chapters:

[code](../../samples/chapters/classes/ChaptersDocsSamples.cls ':include :type=code apex :fragment=retrieve-all-chapters')

A method to retrieve all Chapters by itself doesn't have a strong use case. However, combining this method with plugins allows you to get all Chapters that match some specific criteria. To retrieve Chapters with a plugin:

[code](../../samples/chapters/classes/ChaptersDocsSamples.cls ':include :type=code apex :fragment=retrieve-all-with-plugin')

## Services

There are several functions available in Services to help you work with and manipulate chapters.

The getAutoAssignableChapters function allows you to get a list of chapters that a user can be automatically assigned to.

Get Auto-assignable Chapters:

[code](../../samples/chapters/classes/ChaptersDocsSamples.cls ':include :type=code apex :fragment=get-auto-assignable-chapters')

The getAutoAssignableAccounts function allows you to get a list of accounts that can be automatically assigned to a chapter.

Get Auto-assignable Accounts:

[code](../../samples/chapters/classes/ChaptersDocsSamples.cls ':include :type=code apex :fragment=get-auto-assignable-accounts')
