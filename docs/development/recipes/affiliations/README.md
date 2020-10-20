# Affiliations

The `AffiliationsApi` is used to create and manage Affiliations.

## Model and Factories

Each object represents an SObject in the database, but exists in memory until persisted.

Model objects should not be created directly, instead Factories provide ways to create Model objects easily.

Currently, there is only one Model and one Factory for the creation of Affiliation objects, so the process is very streamlined.  

## Creating an Affiliation

The following call can be used to create affiliations:

[code](../../samples/affiliations/classes/AffiliationsDocsSamples.cls ':include :type=code apex :fragment=creating-affiliations')

You can also pass and retrieve any custom data to the Model object that you tie into the SObject record that will eventually be saved into the database, as long as the SObject represented by the model contains a field for it.

## Retrieving an Affiliation

You can retrieve Affiliations in the database through the API by using the Retriever. When using the Retriever, the Affiliations will be returned in the form of Model objects.

To retrieve Affiliations by Id:

[code](../../samples/affiliations/classes/AffiliationsDocsSamples.cls ':include :type=code apex :fragment=retrieve-affiliations-by-id')

When retrieving Affiliations, you can also specify to retrieve all parent or child Affiliations related to the given set of Affiliations.

To retrieve parent Affiliations:

[code](../../samples/affiliations/classes/AffiliationsDocsSamples.cls ':include :type=code apex :fragment=retrieve-affiliations-by-parents')

To retrieve child Affiliations:

[code](../../samples/affiliations/classes/AffiliationsDocsSamples.cls ':include :type=code apex :fragment=retrieve-affiliations-by-children')

To retrieve all Affiliations:

[code](../../samples/affiliations/classes/AffiliationsDocsSamples.cls ':include :type=code apex :fragment=retrieve-all-affiliations')

A method to retrieve all Affiliations by itself doesn't have a strong use case. However, combining this method with plugins allows you to get all Affiliations that match some specific criteria. To retrieve affiliations with a plugin:

[code](../../samples/affiliations/classes/AffiliationsDocsSamples.cls ':include :type=code apex :fragment=retrieve-all-with-plugin')

## Services

There are several functions available in Services to help you work with and manipulate affiliations.

The affiliate function allows you to affiliate Account Models created from the Accounts API:

[code](../../samples/affiliations/classes/AffiliationsDocsSamples.cls ':include :type=code apex :fragment=affiliate-accounts')

You can terminate Affiliations:

[code](../../samples/affiliations/classes/AffiliationsDocsSamples.cls ':include :type=code apex :fragment=terminate-affiliations')
