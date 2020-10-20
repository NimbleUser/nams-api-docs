# SOQL Data Source

## Background

Data Sources tell Cards in Community Hub what data to retrieve and display for end user interaction. Historically, our Data Sources have been Apex driven. That meant significant development work was needed to create them, or adjust them. With the advent of SOQL Data Sources we can base Data Sources off of **`NU__Query__c`** records, allowing for point-and-click Data Source creation. This means that the entire process of creating basic cards to display data in Community Hub can be fully accomplished without the need for a technical development resource.

This guide will walk you through the point-and-click creation of a Data Source using this new process.

To create an Apex data source, see [Data Sources](https://help.nimbleams.com/data-source-setup-6178097.html).

## A Basic Point-and-Craig Example

For our example scenario, we have a very simple need. We want to display a record list card, showing all accounts whose first name is "Craig".

To complete this process we will need four things:

1. A **`NU__Query__c`** record to build the SOQL query.
2. A **`NC__DataSource__c`** custom setting record to link the **`NC__Card__c`** record to the **`NU__Query__c`** record..
3. A **Field Set** on the object being queried, to determine how fields should be displayed on the card.
4. A **`NC__Card__c`** custom setting record to put the information on the page.

Let's go through them one by one, using that example to show you how to accomplish the goal.

### Query Record

Create a new **`NU__Query__c`** record. Here's ours by way of example:

**Field Name**|**Value**
:-----:|:-----:
Query Name|AccountsLikeCraig
SELECT|"Name
SObject|Account
WHERE|FirstName LIKE 'Craig'
ORDER BY|LastName
LIMIT|"50
Sharing Mode|User

The **`NU__Query__c`** record will be the basis of your data source – the SOQL query to be executed to retrieve the data. In our example, we're selecting the **Name, PersonEmail** fields from **Account** records where the **FirstName** is 'Craig', ordered by **LastName**.

!> **A Note About Sharing Modes.** The **Sharing Mode** field has two options; **System** and **User**. Depending on your selection, the query will be executed [**with sharing** or **without sharing**](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_classes_keywords_sharing.htm). **User** executes **with sharing**, while **System** executes **without sharing.**

!> **A Note About Permissions.** You will need to ensure that the **Read** permission is set on the **`NU__Query__c`** object for the Community Hub Login User profile. This allows Community Hub pages to access the data needed to execute the query.

### Data Source Custom Setting

Create a new **Data Source** custom setting record (/apex/nc__datasourceconfiguration). Here's ours as an example:

**Field Name**|**Value**
:-----:|:-----:
Name|AccountsLikeCraig
Class|NC.SOQLDataSource
Context|AccountsLikeCraig

!> **NOTE** The **`NU__Query__c.NU__Context__c`** field is set to the **Name** of our **`NU__Query__c`** record. The **`NC.SOQLDataSource`** class assigned to this record assumes that the **`NU__Context__c`** field contains that name and will locate the query based upon it.

### Field Set

Define a Field Set against the object your query/data source acts against. Ours just includes the Name and PersonEmail fields. This Field Set will determine what displays on the card. You could also specify an existing Field Set on the **`NC__Card__c`** record if you want to reuse an existing Field Set.

### Card Custom Setting

Go to **`/apex/nc__pageconfiguration`** on your org and put a new card on whatever page you want (we chose Profile Snapshot). Include your new Data Source and Field Set:

![SOQL%20Data%20Source%204f94c3f45e584e5fbb3b2347898c4694/Untitled.png](SOQL%20Data%20Source%204f94c3f45e584e5fbb3b2347898c4694/Untitled.png)

Save the record and voila! Your new Data Source's records will display on the page where your card lives. Try adjusting your query so that it reads `FirstName LIKE "Matt%"` and reloading the page. Now you see all names that start with "Matt", including Matty and Matthew – and all it took was a few clicks!

## Filtering by Current Account - Outstanding Orders

The SOQL Data Source also supports a merge field for the logged in user's account. The syntax for the merge field is **{!CurrentAccountId}**. For this example, we will walk through replacing the Data Source on the My Orders page with the SOQL Data Source to show an individual's outstanding orders.

To complete this process, we will:

1. Create a **`NU__Query__c`** record to retrieve the orders with a balance.
2. Create a **`NC__DataSource__c`** record that uses the SOQL Data Source.
3. Update the Outstanding Invoices card to use the SOQL Data Source.

### Query Record

Create a new **Query__c** record. Here's ours by way of example:

**Field Name**|**Value**
:-----:|:-----:
Query Name|OutstandingInvoices
SELECT|"Id
SObject|NU\_\_Order\_\_c
WHERE|NU\_\_BillTo\_\_c = {!CurrentAccountId} AND NU\_\_Balance\_\_c > 0
ORDER BY|"NU\_\_InvoiceDueDate\_\_c NULLS LAST
LIMIT|"50
Sharing Mode|User

### Data Source Custom Setting

Create a new **Data Source** custom setting record (/apex/nc__datasourceconfiguration). Again, here's ours as an example:

**Field Name**|**Value**
:-----:|:-----:
Name|OutstandingInvoicesSoqlDataSource
Class|NC.SOQLDataSource
Context|OutstandingInvoices

### Update Outstanding Invoices Card

Now we will update the Outstanding Invoices Card on the My Orders page to use our new Data Source custom setting.

1. Navigate to the **/apex/nc__pageconfiguration** page.
2. Select **My Orders** from the Page dropdown.
3. Edit the **OutstandingInvoices** card.
4. Replace the **Data Source** field with **OutstandingInvoicesSoqlDataSource**.

Now, navigate to the **My Orders** page in Community Hub and see your point-and-click Data Source at work!

## Filtering by URL Query String Parameters

The SOQL Data Source class also supports passing [URL query string parameters](https://en.wikipedia.org/wiki/Query_string) through to **`NU__Query__c`** records for highly flexible record filtering. We utilize a simple [Visualforce syntax](https://developer.salesforce.com/docs/atlas.en-us.pages.meta/pages/pages_quick_start_display_field_values.htm) of sending parameter values through to SOQL queries.

Let's use an example where we intend to retrieve a **single Registration record by its id**, and we want the Id to be sourced from a URL query string. That allows us to directly link users to their registration records from a 3rd party system outside of Community Hub.

To make our dreams come true we will follow these steps:

1. Create a **`NU__Query__c`** record which will retrieve a single registration record by its Id.
2. Create a **`NU__DataSource__c`** record which utilizes the SOQL Data Source.
3. Create a **field set** on the **`NU__Registration2__c`** object to display the fields we selected.
4. Add a **read only field set card** to the page we'd like to display the record on.
5. Pass in the Id of the registration we want to display via a URL query string parameter.

### Query Record

Create a new **`NU__Query__c`** record. Here's ours by way of example:

**Field Name**|**Value**
:-----:|:-----:
Query Name|SingleRegistrationById
SELECT|"Id
SObject|znu\_\_Registration2\_\_c
WHERE|Id = {!rid}
ORDER BY|znu\_\_EventStartDate2\_\_c ASC
LIMIT|"50
Sharing Mode|User

**Parameter Notes**

- "rid" represents the **key** of the query string parameter we want to plug in. In this case, a registration Id. If we wanted to make our query String parameter key "eid" then the value in the WHERE clause would be `{!eid}`.
- Single quotes are automatically added when the SOQL query is generated and `{!rid}` is replaced with `'a1836000000MnHoAAK'` as an example.
- If a malicious user were to add single quotes to the query string **value** they are automatically escaped to prevent [SOQL injection](https://developer.salesforce.com/docs/atlas.en-us.pages.meta/pages/pages_security_tips_soql_injection.htm).

> **Mix & Match** You can have **more than one** query string parameter in your query record. You can also utilize **current account filtering** at the same time as query string parameters!

### Data Source Custom Setting

Create a new **Data Source** custom setting record (/apex/nc__datasourceconfiguration). Again, here's ours as an example:

**Field Name**|**Value**
:-----:|:-----:
Name|SingleRegistrationSoqlDataSource
Class|NC.SOQLDataSource
Context|SingleRegistrationById

### Field Set

Create a new field set named **SingleRegistrationDisplay** on the `NU__Registration2__c` object utilizing the following fields to output the event name, event date and registration status on a card.

- `Event__c`
- `znu__EventStartDate2__c`
- `znu__Status__c`

### Add a Card

Utilizing the /apex/nc__pageconfiguration page, add a new **Read Only Field Set** card to the page of your choosing. Follow these values as an example:

**Field Name**|**Value**
:-----:|:-----:
Type|Read Only Field Set
Name|ShowSingleRegistrationById
Enabled|Checked
Data Source|SingleRegistrationSoqlDataSource
Field Set|SingleRegistrationDisplay
Heading Label|LabelOfYourChoiceHere

### Pass Query String Data to the Page

Since we specified "rid" as the registration Id in our query record, that will be where we want to plug in the Id of the registration to the URL query string of our page. Let's say as an example, the base URL to our page in Community Hub is as follows:

**https://my.iamnimble.org/community/showregistration**

So, the URL with an example registration Id of a1836000000MnHoAAK added in would look like this

**https://my.iamnimble.org/community/showregistration?rid=a1836000000MnHoAAK**

Any value you substitute in after "rid=" will be attempted to be loaded by the SOQL data source for display.

**Warning!**

When we say **any** value above, we really mean **any** value. Based upon the query we created, there will be **no restriction** of **who** can load **any** record into the page. If I knew the Id of another user's registration, I could view it on the page.

If you want to restrict the access of registration records by a specific customer, you could **use query string parameter filtering in combination with current account filtering** to secure access to records.

**Can't Get Enough Warnings!**

Incorrect record Ids e.g. an incorrect type of record, incorrectly formatted Id etc. will result in an **exceptional circumstance** which will cause a page error.

## Technical Jargon

Behind the scenes, there's a lot of magic going on in between records of various types between both Community Hub and Nimble AMS. The diagram below illustrates how data flows between various processes, packages, objects and records behind the scenes to make it all come together.

![SOQL%20Data%20Source%204f94c3f45e584e5fbb3b2347898c4694/Untitled%201.png](SOQL%20Data%20Source%204f94c3f45e584e5fbb3b2347898c4694/Untitled%201.png)
