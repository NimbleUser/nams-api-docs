# Use a Custom Data Class

## Background

This guide goes through configuring Nimble Create templates to use data from custom sources through the `ITemplateData` interface.

## Example

To show how someone could make use of the `ITemplateData` interface, and the ability to override the data retrieval, we are going to walk through a use case.

### **Starting Template**

This is the template before we add our custom Data Class.

![Use%20a%20Custom%20Data%20Class%20fac0b8a23797456799ba5908a1d47c6c/Untitled.png](Use%20a%20Custom%20Data%20Class%20fac0b8a23797456799ba5908a1d47c6c/Untitled.png)

### Use Case

The use case we are going to walk through is grouping Order Item Lines in an invoice. A client may want to have a membership broken out into different products (for book keeping), but display them as one to the constituent. So this customization will group all of the "fee" Order Item Lines into one for display.

!> This use case is slightly complex from a technical perspective, depending on how the template is architected. Apex does not allow the setting of child relationships (e.g. NU__Membership__c.NU__OrderItemLines__r), so you will have to use JSON to do that (included in this example via fflib_ApexMocksUtils.makeRelationship).

### Template Setup

For this use case, we borrowed the Jumpstart TSO's Membership Order Items template (slightly modified). So go ahead and create a template with this information.

```apex
SELECT Id,
NU__OrderItemLine__r.NU__OrderItem__r.NU__Order__c,
NU__Account2__r.NU__FullName__c,
NU__MembershipType2__r.Name,
NU__Stage__c,
NU__StartDate__c,
NU__EndDate__c,
(SELECT Id,
NU__Product2__r.Name,
NU__Quantity__c,
NU__UnitPrice__c,
NU__TotalPrice__c
FROM NU__OrderItemLines__r
WHERE NU__Status__c != 'Cancelled'
ORDER BY NU__Product2__r.NU__DisplayOrder__c)
FROM NU__Membership__c
WHERE NU__OrderItemLine__r.NU__OrderItem__r.NU__Order__c = :param1
AND NU__Status__c != 'Cancelled'
```

```html
<h3><strong><span style="font-size:20px">Membership {!NU__Membership__c.NU__Stage__c} for {!NU__Membership__c.NU__Account2__r.NU__FullName__c}</span></strong></h3>
 
<div><strong>Membership Type</strong>: {!NU__Membership__c.NU__MembershipType2__r.Name}</div>
 
<div><strong>Membership Term</strong>: {format({!NU__Membership__c.NU__StartDate__c}, {date, M/d/yyyy})} - {format({!NU__Membership__c.NU__EndDate__c}, {date, M/d/yyyy})}</div>
 
<div> </div>
 
<div>
<table border="0" cellpadding="0" cellspacing="0" style="width:100%" summary="NU__OrderItemLines__r">
    <thead>
        <tr>
            <th scope="col">Item</th>
            <th scope="col" style="text-align: center;">Quantity</th>
            <th scope="col" style="text-align: right;">Price</th>
            <th scope="col" style="text-align: right;">Total</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>{!NU__OrderItemLines__r.NU__Product2__r.Name}</td>
            <td style="text-align:center; width:75px">{!NU__OrderItemLines__r.NU__Quantity__c}</td>
            <td style="text-align:right; width:75px">${format({!NU__OrderItemLines__r.NU__UnitPrice__c}, {number, 2})}</td>
            <td style="width: 75px; text-align: right;">${format({!NU__OrderItemLines__r.NU__TotalPrice__c}, {number, 2})}</td>
        </tr>
    </tbody>
</table>
</div>
```

This is what my template ended up looking like (note the new field on the layout as well - Data Class).

![Use%20a%20Custom%20Data%20Class%20fac0b8a23797456799ba5908a1d47c6c/Untitled%201.png](Use%20a%20Custom%20Data%20Class%20fac0b8a23797456799ba5908a1d47c6c/Untitled%201.png)

### Custom ITemplateData Implementation

To accomplish our goal, we will need to create a custom Apex class that implements the `NUTPL.ITemplateData` interface. This will allow us to then specify our custom class as the Data Class on the Template SObject. Then when the template compiles, it will use the provided class instead of the standard `SObjectData` class (which we'll still make use of here).

!> Your class must be declared as global. You do not need a global constructor, nor do any method signatures need to be global, but the first word in the class must be "global" otherwise you get an "Error: Something has gone wrong. Please contact support if you continue to receive this error."

```apex
/**
 * @description Custom ITemplateData implementation to group all "fee" order item lines.
 *              Class must be global so it can be dynamically instantiated.
 */
global with sharing class GroupedFeesTemplateData implements NUTPL.ITemplateData {
    private NUTPL.DataRequest request;
 
    /**
     * @description Global, default, parameterless constructor.
     */
    global GroupedFeesTemplateData() { }
 
    /**
     * @description Sets the request locally, to use in the getData method.
     * @param request The request to store, and reference later.
     */
    global void setRequest(NUTPL.DataRequest request) {
        this.request = request;
    }
 
    /**
     * @description Gets the necessary data for the Nimble Create template.
     *              Here we are calling the standard SObject data, and then grouping all fee order item lines.
     * @return List of memberships with their fee order item lines grouped.
     */
    global Object getData() {
        List<SObject> data = (List<SObject>)NUTPL.SObjectData.newInstance(request).getData();
 
        if (!(data instanceof List<NU__Membership__c>)) {
            // If it is not the type we are expecting, return early.
            return data;
        }
 
        // Cast to correct type and make a new list to store the parsed memberships.
        List<NU__Membership__c> memberships = (List<NU__Membership__c>)data;
        List<NU__Membership__c> parsedMemberships = new List<NU__Membership__c>();
 
        for (NU__Membership__c membership : memberships) {
            parsedMemberships.add(getUpdatedMembership(membership));
        }
 
        return parsedMemberships;
    }
 
    private NU__Membership__c getUpdatedMembership(NU__Membership__c membership) {
        if (membership.NU__OrderItemLines__r == null || membership.NU__OrderItemLines__r.isEmpty()) {
            // Return early if there are no order item lines to parse and group.
            return membership;
        }
 
        List<NU__OrderItemLine__c> groupedOrderItemLines = groupFeeOrderItemLines(membership.NU__OrderItemLines__r);
 
        // Since we can't set child relationships in Apex, we have to use JSON to deserialize, set, and serialize back.
        List<NU__Membership__c> updatedMembership = (List<NU__Membership__c>)fflib_ApexMocksUtils.makeRelationship(
                List<NU__Membership__c>.class,
                new List<NU__Membership__c> { membership },
                NU__OrderItemLine__c.NU__Membership__c,
                new List<List<NU__OrderItemLine__c>> { groupedOrderItemLines }
        );
 
        return updatedMembership[0];
    }
 
    private List<NU__OrderItemLine__c> groupFeeOrderItemLines(List<NU__OrderItemLine__c> orderItemLines) {
        List<NU__OrderItemLine__c> groupedOrderItemLines = new List<NU__OrderItemLine__c>();
 
        // Keep track of the fees.
        Decimal totalFees = 0;
 
        for (NU__OrderItemLine__c orderItemLine : orderItemLines) {
            // Ideally this "fee" check should be implemented better. Like a checkbox on the product for Fee.
            if (!orderItemLine.NU__Product2__r.Name.containsIgnoreCase('fee')) {
                // Add any non-fee order item lines to the result and continue.
                groupedOrderItemLines.add(orderItemLine);
                continue;
            }
 
            // Add the total price to the fees.
            totalFees += orderItemLine.NU__TotalPrice__c;
        }
 
        if (totalFees > 0) {
            // Add one order item line that contains all the fees.
            groupedOrderItemLines.add(getFeeOrderItemLine(totalFees));
        }
 
        return groupedOrderItemLines;
    }
 
    private NU__OrderItemLine__c getFeeOrderItemLine(Decimal totalFees) {
        // Create a simple order item line to hold the fees.
        NU__OrderItemLine__c feeOrderItemLine = new NU__OrderItemLine__c(
                NU__UnitPrice__c = totalFees,
                NU__Quantity__c = 1
        );
 
        // Recalculate formulas to calculate the Total Price from the Unit Price and Quantity.
        feeOrderItemLine.recalculateFormulas();
 
        // Ideally this would be coming from a configuration and not hard-coded.
        feeOrderItemLine.NU__Product2__r = new NU__Product__c(Name = 'Secret Fees');
 
        return feeOrderItemLine;
    }
}
```

We have some slightly complex business logic going on for Apex to handle, so that is why I made use of the `fflib_ApexMocksUtils` ([https://github.com/financialforcedev/fflib-apex-mocks](https://github.com/financialforcedev/fflib-apex-mocks) - we use these classes in just about all of our product packages) to set the child relationship. Simpler use cases might only involve changing field values, and not child relationships, which would reduce the complexity.

Also, if the template was based on Order Item Line, instead of Membership (in the SOQL Query), you could prevent having to set a child relationship altogether. Instead, you would simply build and return the list of grouped Order Item Lines.

### Template Data Class

The last piece to tie everything together is the Data Class field on the Template record. By default, it most likely will not be on your page layout (because it is a new field). So make sure to edit the page layout and add it if you see it missing.

Once the field is on the layout, populate it with your class name - `GroupedFeesTemplateData` in this example.

### End Result

So, what did all of this do?

![Use%20a%20Custom%20Data%20Class%20fac0b8a23797456799ba5908a1d47c6c/Untitled%202.png](Use%20a%20Custom%20Data%20Class%20fac0b8a23797456799ba5908a1d47c6c/Untitled%202.png)

Now we have all the "fee" products grouped as one Order Item Line!

## Conclusion

As you can see, the new `ITemplateData` global interface can provide great extensibility for templates. In theory, your custom Data Class could call a REST endpoint, get JSON, parse it into an SObject (for display), and now your template has dynamic data. A lot is now possible!
