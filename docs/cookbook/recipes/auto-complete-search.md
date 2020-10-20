# AutoCompleteSearch Components

## Background

To keep lookup fields functional, searchable, customizable, and in line with the Nimble AMS look-and-feel we have created the **AutoCompleteSearch** **Component**, both for AMS and for Community Hub.

### Diagram

This is the diagram for the AMS implementation of the **AutoCompleteSearch Component**. The Community Hub version works in much the same way.

![AutoCompleteSearch%20Components%208b578daf187a44d6a781f490e179dd6e/Untitled.png](AutoCompleteSearch%20Components%208b578daf187a44d6a781f490e179dd6e/Untitled.png)

## AMS

**AutoCompleteSearch** in AMS allows for ad-hoc filtering of any SObject type by the user.

### Example

Let's look at the example of filtering merchandise during the order process. We want the user to be able to search for individual pieces of merchandise AND for that search box to react with intelligent auto-completion.

### Code Sample

To start we need to include our **AutoCompleteSearch** script in the `OrderPurchaseMerchandise` component. See lines 3-8 below:

**OrderPurchaseMerchandise.component**

```html
<apex:component controller="OrderPurchaseMerchandiseController" allowDML="true">
    <apex:stylesheet value="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" />
    <apex:includeScript value="{!$Resource.AutoCompleteSearch}" />
    <style>
    .autocomplete-category-loading {
        background: #efefef url('{!$Resource.loadingDots}') center center no-repeat;
    }
    </style>
 
    <apex:attribute name="c" type="OrderController" description="OrderController" assignTo="{!Controller}"/>
    <apex:includeScript value="{!$Resource.OrderPurchaseMerchandiseJS}" />
```

!> Note the loading dots resource set as the background. This ensures that while the **AutoCompleteSearch** component is doing its work the user is presented with a visual cue. It must be handled outside of the component itself since the image resource cannot be referenced there.

Next we need to actually put our component onto the page. The following (or something similar) can be placed in any outputPanel:

**OrderPurchaseMerchandise.component**

```html
<apex:inputText value="{!SearchQuery}" id="SearchField"
        onkeypress="return orderProductSearchKeyPress(event);">
    <c:AutoCompleteSearch FieldId="{!$Component.SearchField}" ObjectName="{!ObjectName}"
            RecordLimit="10"
            SearchResultImplementation="{!SearchResultImplementation}"
            AdditionalData="{!AutoCompleteAdditionalData}" />
</apex:inputText>
```

Note the arguments provided to the component:

**Field**|**Purpose**
:-----:|:-----:
FieldId|The Id of the inputText field this instance of AutoCompleteSearch will utilize. Required so that the component can reference and update its field.
ObjectName|The name of the object being searched for. This allows for the dynamic construction of queries behind the scenes to support user queries.
RecordLimit|The maximum number of dropdown options the user will be presented with.
SearchResultImplementation|The implementation of IAutoCompleteSearchResult to use when querying for the user's search terms.
AdditionalFields|Any additional fields that should be queried against.
AdditionalData|A comma-delimited string of additional parameters.

### Extensibility

The above allows us to utilize the default behavior of the **AutoCompleteSearch Component**, but what if we had more specific needs? The default `IAutoCompleteSearchResult` implementation (`DefaultAutoCompleteSearchResult`, appropriately enough) just returns a list of matching records, selected and sorted by their Name field. Here's a quick alternate implementation that only selects records with status 'Active'.

```apex
/**
 * @description Custom implementation of IAutoCompleteSearchResult that allows dynamic queries against different fields, not just name.
 **/
public with sharing class AutoCompleteSearchResultActiveRecords implements NC.IAutoCompleteSearchResult {
    @testVisible private static final String REQUEST_PARAM = 'request';
    private static final String COMMA = ',';
 
    /**
     * @description Returns a list of SObjects based on the passed request.
     * @param request AutoCompleteSearchRequest request with information regarding which records should be returned.
     * @throws ArgumentNullException if request is null.
     **/
    public List<SObject> getRecords(NC.AutoCompleteSearchRequest request) {
        ArgumentNullException.throwIfNull(request, REQUEST_PARAM);
 
        // Start building list of all fields to select.
        Set<String> fieldsToSelect = new Set<String> { 'Id', 'Name' };
        if (request.AdditionalFields != null) {
            fieldsToSelect.addAll(request.AdditionalFields);
        }
 
        // Get the object name, dropping out if none is found.
        Map<String, Schema.SObjectType> globalDescribe = Schema.getGlobalDescribe();
        Schema.SObjectType sObjectType = globalDescribe.get(request.ObjectName);
        if (sObjectType == null) {
            return null;
        }
 
        // Build the "LIKE" conditionals for direct searches.
        String filter = String.format(' LIKE \'\'%{0}%\'\'', new List<String> { String.escapeSingleQuotes(
                request.SearchQuery) });
        Set<String> likeConditionals = new Set<String> { 'Name' + filter };
        if (request.AdditionalFields != null) {
            for (String additionalFieldName : request.AdditionalFields) {
                likeConditionals.add(additionalFieldName + filter);
            }
        }
 
        // EXAMPLE: Select Id,Name,additionalField__c FROM RecordType__c WHERE
        //          (Name LIKE '%Jeff%' OR AdditionalField__c LIKE '%Jeff%') AND Status__c = "Active"
        //          ORDER BY Name LIMIT 10
        String soql = 'SELECT {0} FROM {1} WHERE ({2}) AND Status__c = "Active" ORDER BY Name LIMIT {3}';
        List<String> queryPieces = new List<String> {
                String.join(new List<String>(fieldsToSelect), COMMA),
                request.ObjectName,
                String.join(new List<String>(likeConditionals), ' OR '),
                String.valueOf(request.RecordLimit)
        };
 
        return Database.query(String.format(soql, queryPieces));
    }
}
```

A simple example, and thus very similar to the default implementation, but provide that new class name when instantiating the component and only active merchandise products will show up in the order process' lookup.

## Community Hub

**AutoCompleteSearch** in Community Hub allows for ad-hoc filtering of any record type by the user from within a FieldSet component. We also added some configuration options so customers could get more out of the functionality via point-and-click.

### Example (low-level)

Before we begin let's see how the **AutoCompleteSearch Component** is added to `FieldSet.component`:

**FieldSet.component**

```java
<apex:inputHidden id="referencefieldhidden"
        rendered="{!f.Type = 'reference'}"
        value="{!RecordSObject[f.fieldPath]}" />
<apex:inputText id="referencefield" rendered="{!f.Type = 'reference'}" styleClass="form-control">
    <c:AutoCompleteSearch objectname="{!ObjectName}"
            customImplementation="{!ConfigurationsByFieldPath[f.fieldPath].ControllerName}"
            primaryField="{!ConfigurationsByFieldPath[f.fieldPath].PrimaryField}"
            fieldId="{!$Component.referencefield}"
            hiddenFieldId ="{!$Component.referencefieldhidden}"
            additionalFields="{!ConfigurationsByFieldPath[f.fieldPath].AdditionalFields}"
            additionalConditionals="{!ConfigurationsByFieldPath[f.fieldPath].AdditionalConditionals}"
            resultsLimit="{!ConfigurationsByFieldPath[f.fieldPath].ResultsLimit}" />
</apex:inputText>
```

Note that this is alongside the other potential input types in `FieldSet.component`. It renders only if this is a reference field, and it provides all the needed inputs:

**Parameter**|**Purpose**
:-----:|:-----:
objectName|The object to be queried against.
customImplementation|Any custom implementation of IAutoCompleteSearchResult to use for this component instance. Can be configured. See Extensibility below for more details on creating custom implementations.
primaryField|"The primary field to query against
fieldId|The id of the field the user will be entering queries into.
hiddenFieldId|The id of the hidden field that will maintain the Id of the object being looked up to.
additionalFields|Any fields beyond the primary field to search against and display. Can be configured.
additionalConditionals|Any additional WHERE clauses to include in the search query. Can be configured.
resultsLimit|The number of search results to show to the user. Can be configured.

Note that all these parameters are provided dynamically based on point-and-click Configurations explained below (Configuration section).

### Example (point-and-click)

But all that low-level work has already been done, at least for field set components! Let's take a look at how we would add a lookup field to a page, say **Edit My Profile**.

![AutoCompleteSearch%20Components%208b578daf187a44d6a781f490e179dd6e/Untitled%201.png](AutoCompleteSearch%20Components%208b578daf187a44d6a781f490e179dd6e/Untitled%201.png)

**Edit My Profile** contains a bunch of FieldSet cards, making it ideal for our component. To have a lookup field display on the page, all we need to do is add it to one of the Field Sets that will be displaying on the page. So go to **Setup > Account > Field Sets > IndividualNameAndTitle > Edit** and add a lookup field... let's say "Primary Affiliation".

![AutoCompleteSearch%20Components%208b578daf187a44d6a781f490e179dd6e/Untitled%202.png](AutoCompleteSearch%20Components%208b578daf187a44d6a781f490e179dd6e/Untitled%202.png)

Now click Save. You're done! Log in to Community Hub and browse to **Edit My Profile**, there is now a lookup field keyed to Account.Name on the page! That field is using the default settings though: it only searched on name, it shows 10 results, it has no additional search criteria, and it works the same no matter what card or field it exists on. We can improve that with some configuration!

### Configuration

The Community Hub **AutoCompleteSearch Component** is configured via AutoCompleteSearch Configuration custom metadata types. Browse to **Setup > Custom Metadata Types > AutoCompleteSearch Configuration** and click **Manage**.

![AutoCompleteSearch%20Components%208b578daf187a44d6a781f490e179dd6e/Untitled%203.png](AutoCompleteSearch%20Components%208b578daf187a44d6a781f490e179dd6e/Untitled%203.png)

#### **Information**

This is identifying information about this configuration, as well as the controller it will use.

**Field**|**Required**|**Impact**
:-----:|:-----:|:-----:
Label|REQUIRED|"The name of this configuration. Try to make it something descriptive
AutoCompleteSearch Configuration Name|REQUIRED|The auto-generated API name of this configuration.
Controller|OPTIONAL|The name of the class that retrieves records for this configuration. Should be an implementation of IAutoCompleteSearchResult to ensure the required methods are defined. If not specified the default record querier class will be used.

#### **Filters**

Filters determine which situations a given configuration will apply to. Nimble AMS will use whichever is better suited to the lookup field's placement. For example, say you have two configurations for Account: one with no filters beyond the object type and one with the field specified. For a lookup against that field the second configuration would be used. But for any other configuration the Account-only configuration would be used.

**Field**|**Required**|**Impact**|**Examples**|**When to use this filter**
:-----:|:-----:|:-----:|:-----:|:-----:
Object Type|REQUIRED|The type of object this filter will apply to.|"Account| NU\_\_Membership\_\_c
Field Name|OPTIONAL|The field this filter will apply to. Higher priority than Card Name.|"NU\_\_PrimaryAffiliation\_\_c (any lookup field| really)"
Card Name|OPTIONAL|The card this filter will apply to.|"IndividualNameAndTitle| NewCompanyInformation (any card of type FieldSet

Field Name will be preferred over Card name when Nimble AMS determines which configuration to use. Keep that in mind when creating a multi-layered configuration.

#### **Query Settings**

Query Settings determine what this configuration will actually *do*.

**Field**|**Required**|**Impact**|**Example**
:-----:|:-----:|:-----:|:-----:
Maximum Results|REQUIRED|Determines the maximum number of searhc results a user will be presented with. Defaults to 10. Numbers below 2 will be ignored. Numbers above 10 are not recommended.|5
Primary Field|OPTIONAL|"The main field to be searched against and displayed to the user. Defaults to ""Name"" if not specified."|PrimaryEmail
Field Set|OPTIONAL|The name of a field set to be used as a source of additional fields to be searched against.|FieldSetName
Additional Filters|OPTIONAL|A comma-delimited string of WHERE clauses to incorporate into the search query.|"NU\_\_Status\_\_c = 'Active'

### Extensibility

Just like in Nimble AMS clients and consultants can extend the **AutoCompleteSearch** **Component** via code. It's almost exactly the same, actually! Just write a class that implements `IAutoCompleteSearchResult` and specify it in any number of relevant configurations. In this way you can have custom extensibility configured ad-hoc for individual cards, record types or fields – or all of the above.

!> Note that The Community Hub version of the **AutoCompleteSearch Component** queries against dynamic primary fields as defined in your configurations. Keep this in mind when writing `IAutoCompleteSearchResult` implementations, wouldn't want to lose that functionality in your custom implementations! For reference see the default Community Hub implementation, `AutoCompleteSearchDefaultResults`.
