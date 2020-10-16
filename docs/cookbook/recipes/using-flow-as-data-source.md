# Using a Flow as a Data Source

## Background

This guide goes through using Flows as Community Hub Data Sources to retrieve and insert records into the database.

## Use Cases

The first use case we are going to build is for users that want to be able add their experiences (Professional, Personal, Training, Other) in Community Hub. The editable form will appear on the Experience page, which will need to be created. The data from these fields will be gathered by the flow, and stored in memory until the Save button is clicked. Then it will be inserted into the logged in user account, represented by the “Account” field, which will then be viewable in Staff View.

The second use case to build is to allow already existing experiences that the user has created, to appear on the Experience page. The data will also be gathered by a flow and then will be organized and displayed in a Record Table. Both use cases go hand-in-hand and could easily be used together on the same page for users to view and create all of their experiences.

***In order to create the use cases, a custom object, Experience, must be created with a lookup to an Account record.***

## Data Source Technical Details

### **FlowDataSource**

FlowDataSource is an extension of DataSource. A new field, sObject Type, has been added to the DataSource Metadata Type to set the specified sObject Type used by the DataSource class.

The responsibility of the class is to gather the data source from the use of a Flow by:

- Getting the configured sObject Type from the data source instance.
- Getting the current account Id of the logged in Community User.
- Collect the input for the flow, instantiate the flow, start the flow and pass in the data.

### **NewSObjectFlowDataSource**

NewSObjectFlowDataSource is an extension of FlowDataSource. The purpose of this is for data to be stored in memory with the ability to insert it.

The responsibility of the NewSObjectFlowDataSource is to gather the data source from the use of a flow with a new sObject by:

- Extending FlowDataSource to get the current account Id of the logged in Community User and instantiating a new sObject with default values.

If more data is required, the NewSObjectFlowDataSource class can easily be extended for additional logic.

In this code example, the Primary Affiliation Id is added in the mapped input data from the getFlowInput method by adding a private helper method getUserPrimaryAffiliationId:

```apex
global virtual without sharing class ExtendingNewSObjectFlowDataSource extends NewSObjectFlowDataSource {
    private static final String INPUT_PRIMARY_AFFILIATION_ID = 'InputPrimaryAffiliationId';
  
    /**
     * @description Gets the current Account Id and Primary Affiliate Id 
     *              of the logged in Community User and instantiates a 
     *              new sObject with default values.
     * @return A Map of the current Account Id, sObject, and Primary Affiliate Id.
     */
    global virtual override Map<String, Object> getFlowInput() {
        Map<String, Object> input = super.getFlowInput();
        input.put(INPUT_PRIMARY_AFFILIATION_ID, getUserPrimaryAffiliationId());

        return input;
    }

    private Id getUserPrimaryAffiliationId() {
        return CommunityUser.getPrimaryAffiliateId();
    }
}
```

## Configurations

Now to set up our flows, data sources, field sets, permissions, and add the needed cards to a Community Hub page for each of our use cases.

### **Use Case 1: Insert an Experience Record into an Account in Community Hub**

### **Enable Permissions:**

1. **Setup** → **Manage** **Users** → **Profiles** → **Community** **Hub** **Login** **User** → **System** **Permissions**
    1. Select **Edit**
    2. Enable **Run** **Flows** by checking the checkbox
    3. Save
2. **Setup** → **Manage** **Users** → **Profiles** → **Community** **Hub** **Login** **User** → **Object** **Permissions**
    1. Choose **Experience**
    2. Select **Edit**
    3. Enable **Read**, **Create** and **Edit** for Object Permissions
    4. Enable **Read** and **Edit** Field Permissions for: Account, Description, Experience Name and Type.
    5. **Save**

### **Configuring the Flow:**

The flow will be created using the Flow Designer. If you are unfamiliar with flows, you can learn about them by doing the [Salesforce Lightning Flow Trailhead](https://trailhead.salesforce.com/en/modules/business_process_automation) and I would recommend the [Flow Project Trailhead](https://trailhead.salesforce.com/en/projects/flow_reassign) for further understanding.

So first thing, go to create a new flow.

For this example, you will need the following elements in your flow:

- **1 Variable** - CurrentAccountId (Data Type: Text)
- **1 SObject Variable** - InputSObject (Type: Experience)
- **1 SObject Collection Variable** - OutputData (Type: Experience)
- **2 Assignments** - Set Experience and Add To Output.

The fist assignment in your flow is to set any default values on your InputSObject. In this use case, the CurrentAccountId is used for the Account lookup.

![Using%20a%20Flow%20as%20a%20Data%20Source%201aebc204103b4efcb719b37e7c049e4a/Untitled.png](Using%20a%20Flow%20as%20a%20Data%20Source%201aebc204103b4efcb719b37e7c049e4a/Untitled.png)

The second assignment will be adding our InputSObject into the OutputData collection for use in our data source.

![Using%20a%20Flow%20as%20a%20Data%20Source%201aebc204103b4efcb719b37e7c049e4a/Untitled%201.png](Using%20a%20Flow%20as%20a%20Data%20Source%201aebc204103b4efcb719b37e7c049e4a/Untitled%201.png)

Lastly, hover over the Set Experience and in the upper right corner, select the green circle with a down arrow icon to set as the **Start** **Element** and connect the **Set Experience node** to the **Add To Output node.**

![Using%20a%20Flow%20as%20a%20Data%20Source%201aebc204103b4efcb719b37e7c049e4a/Untitled%202.png](Using%20a%20Flow%20as%20a%20Data%20Source%201aebc204103b4efcb719b37e7c049e4a/Untitled%202.png)

**Save** the flow and name it **AddExperience** (*the Unique Name of the flow will be used when configuring the data source*)*.*

**Activate** the flow.

### **Configuring the Data Source:**

**Data Sources** tab → **New Data Source***Note: If not in an NC org, the class would need the NC namespace (e.g. NC.NewSObjectFlowDataSource)*

![Using%20a%20Flow%20as%20a%20Data%20Source%201aebc204103b4efcb719b37e7c049e4a/Untitled%203.png](Using%20a%20Flow%20as%20a%20Data%20Source%201aebc204103b4efcb719b37e7c049e4a/Untitled%203.png)

1. Name: Add Experience *Used when configuring the data source for the card.*
2. Class: NewSObjectFlowDataSource *The class utilized by the data source.*
3. Context: AddExperience *Contextual data used by data source, e.g., the flow to be executed.*
4. sObject Type: Experience__c *API name of sObject used by the specified data source class.*
5. **Save**

### **Configuring the Field Set:**

1. **Setup** → **Create** → **Objects** → **Experience** → **Field** **Sets** → **New**
    1. Field Set Label: MyExperience
    2. Field Set Name: MyExperience
    3. Where is this used? CH
    4. **Save**
2. From the Quick Find, locate **Experience Name, Type,** and **Description** and drag it to **In the Field Set.**

![Using%20a%20Flow%20as%20a%20Data%20Source%201aebc204103b4efcb719b37e7c049e4a/Untitled%204.png](Using%20a%20Flow%20as%20a%20Data%20Source%201aebc204103b4efcb719b37e7c049e4a/Untitled%204.png)

1. *This is going to display the Experience Name, and Description in editable text fields, and the Type in a pick list. The Account is being set in the flow, so it does not have to be visible to the user.*
2. **save**

### **Create Cards:**

1. Cards on the Experience Page: **New Card**

    ![Using%20a%20Flow%20as%20a%20Data%20Source%201aebc204103b4efcb719b37e7c049e4a/Untitled%205.png](Using%20a%20Flow%20as%20a%20Data%20Source%201aebc204103b4efcb719b37e7c049e4a/Untitled%205.png)

    1. Type: Field Set Form
    2. Name: New Experience Form
    3. Object: Experience__c
    4. Data Source: AddExperience
    5. Field Set: MyExperience
    6. **Save**
2. Cards on the Experience Page: **New Card**
    1. Type: Button Row
    2. Name: New Experience Button
    3. Buttons: SubmitButton
    4. **Save**

### **Result:**

After configuration is complete, whenever a user goes to the Experience page, the AddExperience data source will use the NewSObjectFlowDataSource class, locate the logged in user Account and create a new sObject with default values. The field set will display the fields on the page in the New Experience Form card, storing the data in memory. The Account field will display the account name of the logged in user. The Experience Name and Description fields will render blank to be filled in and the Type pick list will be set to --None-- for the user to select from the available options.

![Using%20a%20Flow%20as%20a%20Data%20Source%201aebc204103b4efcb719b37e7c049e4a/Untitled%206.png](Using%20a%20Flow%20as%20a%20Data%20Source%201aebc204103b4efcb719b37e7c049e4a/Untitled%206.png)

![Using%20a%20Flow%20as%20a%20Data%20Source%201aebc204103b4efcb719b37e7c049e4a/Untitled%207.png](Using%20a%20Flow%20as%20a%20Data%20Source%201aebc204103b4efcb719b37e7c049e4a/Untitled%207.png)

Once the fields are filled in, pick list value select, and the Save/Submit button is selected, the data will be inserted into the users account as an Experience Record in SV and a success message will appear at the top of the page.

![Using%20a%20Flow%20as%20a%20Data%20Source%201aebc204103b4efcb719b37e7c049e4a/Untitled%208.png](Using%20a%20Flow%20as%20a%20Data%20Source%201aebc204103b4efcb719b37e7c049e4a/Untitled%208.png)

![Using%20a%20Flow%20as%20a%20Data%20Source%201aebc204103b4efcb719b37e7c049e4a/Untitled%209.png](Using%20a%20Flow%20as%20a%20Data%20Source%201aebc204103b4efcb719b37e7c049e4a/Untitled%209.png)

### **Use Case 2: Gather Experience Records from an Account in Community Hub**

### **Configuring the Flow:**

The first thing is to create a new flow.

For this example, you will need the following elements in your flow:

- **1 Variable** CurrentAccountId (Type: Text)
- **1 SObject Collection Variable** - OutputData. (Type: Experience)
- **1 Fast Lookup** - Gets all existing Experience records from the logged in Community User
- 

![Using%20a%20Flow%20as%20a%20Data%20Source%201aebc204103b4efcb719b37e7c049e4a/Untitled%2010.png](Using%20a%20Flow%20as%20a%20Data%20Source%201aebc204103b4efcb719b37e7c049e4a/Untitled%2010.png)

![Using%20a%20Flow%20as%20a%20Data%20Source%201aebc204103b4efcb719b37e7c049e4a/Untitled%2011.png](Using%20a%20Flow%20as%20a%20Data%20Source%201aebc204103b4efcb719b37e7c049e4a/Untitled%2011.png)

Make GetMyExperience the **Start** **Element.**

**Save** the flow and name it **GetMyExperience**.

![Using%20a%20Flow%20as%20a%20Data%20Source%201aebc204103b4efcb719b37e7c049e4a/Untitled%2012.png](Using%20a%20Flow%20as%20a%20Data%20Source%201aebc204103b4efcb719b37e7c049e4a/Untitled%2012.png)

**Activate** the flow.

### **Configuring the Data Source:**

1. **Data Sources** tab → **New Data Source***Note: If not in an NC org, the class would need the NC namespace (e.g. FlowDataSource)*

    ![Using%20a%20Flow%20as%20a%20Data%20Source%201aebc204103b4efcb719b37e7c049e4a/Untitled%2013.png](Using%20a%20Flow%20as%20a%20Data%20Source%201aebc204103b4efcb719b37e7c049e4a/Untitled%2013.png)

    1. Name: My Experience *Used when configuring the data source for the card*
    2. Class: FlowDataSource *The class utilized by the data source.*
    3. Context: GetMyExperience *Contextual data used by data source, e.g., the flow to be executed*
    4. sObject Type: Experience__c *API name of sObject used by the specified data source class*
    5. **Save**

### **Create a New Page:**

1. **Pages** → **New** **Page**
    1. Name: My Experience
    2. Url: /my-experience
    3. **Save**
2. Card on the My Experience Page: add a **New Card**

    ![Using%20a%20Flow%20as%20a%20Data%20Source%201aebc204103b4efcb719b37e7c049e4a/Untitled%2014.png](Using%20a%20Flow%20as%20a%20Data%20Source%201aebc204103b4efcb719b37e7c049e4a/Untitled%2014.png)

    1. Type: Record Table
    2. Name: My Experience
    3. Heading: (Optional) CurrentExperience
    4. Object: Experience__c
    5. Data Source: MyExperience
    6. Field Set: MyExperience
    7. **Save**

### **Result:**

After configuration is complete, whenever a user goes to the My Experience page, the My Experience data source will use the FlowDataSource class, run the GetMyExperience flow to lookup the Account of the logged in user, and gather the Experience Name, Type, and Description of any Experience records on their account and display them in a read only Record Table.

![Using%20a%20Flow%20as%20a%20Data%20Source%201aebc204103b4efcb719b37e7c049e4a/Untitled%2015.png](Using%20a%20Flow%20as%20a%20Data%20Source%201aebc204103b4efcb719b37e7c049e4a/Untitled%2015.png)

If you now combine all cards onto the one page, the result can look like so:

![Using%20a%20Flow%20as%20a%20Data%20Source%201aebc204103b4efcb719b37e7c049e4a/Untitled%2016.png](Using%20a%20Flow%20as%20a%20Data%20Source%201aebc204103b4efcb719b37e7c049e4a/Untitled%2016.png)
