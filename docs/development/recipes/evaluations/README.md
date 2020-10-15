# Evaluations

The `Evaluations` framework provides a generic infrastructure to evaluate any given criteria. In simple terms an
evaluation takes a set of criteria, evaluates it against a context and return whether the criteria are met or not (true or false). 

## Criterion

A `Criterion` is the smallest element of the `Evaluations` framework. A `Criterion` has a type and can be evaluated
against a given context to return whether it was met or not, and they have a value that determines the logic that will
be evaluated.

`Criterion` are represented through the `Evaluations Api` through the `nams.Criterion` class and declaratively through the
`Criterion` Custom Metadata Type object.

The different `Criterion` types are:
* Formula
* Geolocation

### Formula

Formula `Criterion` hold a Salesforce formula text (string) as a value. These formulas can use any of the supported Salesforce formula
functions but must evaluate to a Boolean (true or false) value.

For example:
```
AND(
    $Target.FirstName = "John",
    $Target.LastName = "Smith"
) 
```

Notice how in that formula we are using the special syntax of `$Target`. Formulas accept this kind
of dynamic setting of the context in which it will run, just make sure to pass in the values appropriately
to the context for it to be able to resolve correctly, take for example the following code to build an evaluation context

```apex
 EvaluationContext evalContext = EvaluationContext.forRecord(context.getRecord())
                .put('Source', currentChapter.getRecord());
```

The `forRecord` call receives an `SObject` and will automatically make the formula correctly resolve the `$Target`
syntax, so you can use dot notation to get any field value from the passed in record.

Additionally you can pass as many additional records as desired and map then through the `put` method. In the
example above the `Source` key was passed, which will make the formula accept the `$Source` syntax. This allows you
to do complex record-to-record comparisons:

```
$Target.FirstName = $Source.FirstName
```

### Geolocation

Geolocation `Criterion` allow you to evaluate addresses and whether a certain address is within another. To define
the address parameters you can specify the City, Country and/or Subdivision (i.e. State). When evaluating a Geolocation
`Criterion` the evaluation will determine from the wider area (country) to the smallest (city) to see if the received
address is within it.

## Evaluation

An `Evaluation` is composed of one or more `Criterion`.

`Evaluation` are represented through the `Evaluations Api` through the `nams.Evaluation` class and declaratively through the
`Evaluation` Custom Metadata Type object.

When calculating an `Evaluation` with more than one `Criterion` you can also specify how the evaluation should be calculated,
either:

* Match All: All `Criterion` must evaluate to true for the evaluation to match.
* Match Any: Any of the `Criterion` evaluating to true causes a match.

## Evaluations Api

To interact with `Evaluations` the `Evaluations Api` exposes endpoints that can be used for any necessary match
calculation. 

To execute an evaluation calculation you need 2 pieces of information, the evaluation itself and an `EvaluationContext`.

### Getting an Evaluation

To get an `Evaluation` from the configured ones in the database you can use the EvaluationsApi's retriever layer:

[code](../../samples/evaluations/classes/EvaluationDocSamples.cls ':include :type=code apex :fragment=retrieving')

### Building a Context

To correctly execute most evaluations a context is needed. A context is any necessary information related to what is being evaluated.
This could be records for which you wish to evaluate based on a formula, an address for which you with to evaluate a geolocation, etc.

To build a context the API provides the `EvaluationContext` class which exposes methods as `forRecord` and `forPersistenceSupport`
to provide either a generic SObject or a generic model class to be evaluated, as well as a `put` method to provide any necessary
custom context.

### Executing the Evaluation

Finally, once you are ready to evaluate, you can use the API's service layer to execute it:

[code](../../samples/evaluations/classes/EvaluationDocSamples.cls ':include :type=code apex :fragment=evaluating')

Use the `EvaluationResult` object to gather information about the evaluation.

[code](../../samples/evaluations/classes/EvaluationDocSamples.cls ':include :type=code apex :fragment=eval-result')
