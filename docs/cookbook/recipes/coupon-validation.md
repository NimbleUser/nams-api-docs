# Coupon Validation

## Background

Nimble AMS allows developers to extend and customize the logic used to validate coupons. This is done by abstracting the existing coupon validation logic into a couple classes:

### CouponValidator

This class receives an **Id** representing the **account** and a **String** representing the "**code**" that the account is trying to use. With this information we query **Coupon Code records** and **related** **Coupon records** for the **specified account**. This allows multiple Coupon Code records to have the same string value for the **Code** field.

The results of the query represent potential coupon codes which **may or may not be valid for the specified account**. Validation is done at the **`CouponRuleValidator`** level.

After querying the necessary records, this class will begin processing each potential coupon code. For each coupon code, this class will instantiate a **Coupon Rule Validator** based on the **value specified on the related Coupon Rule record's `ValidatorClass` field**. If for some reason the related Coupon Rule is **null, or the ValidatorClass field is blank**, the default **`CouponRuleValidator`** class is used.

Processing of potential coupon codes will continue **until a valid coupon code is found**, which means the account may use the coupon code they have entered, or **until all potential coupon codes are determined to be invalid**.

### CouponRuleValidator

This class is used to **validate a single coupon code**. The validation is done using a **coupon code record** and **related coupon records**. The records are passed in by the **`CouponValidator`** class.

By default, a coupon code is valid if it has a status of **active**, and there are **no related coupon codes for the account attempting to use the coupon code**.

## Using Query Records

The standard CouponValidator.cls can use Query records should the need arise to adjust the default query used for coupon validation or if custom Coupon Rule Validators require additional data.

### Overriding The Default Query

Before we get into how we can override the default query with a Query record, we should know what the default query is doing. The default query has been included below.

```apex
SELECT Id,
    NU__CouponRule__c,
    NU__CouponRule__r.Name,
    NU__CouponRule__r.NU__CouponProduct__c,
    NU__CouponRule__r.NU__Description__c,
    NU__CouponRule__r.NU__DiscountPercentage__c,
    NU__CouponRule__r.NU__DiscountRate__c,
    NU__CouponRule__r.NU__EntityName__c,
    NU__CouponRule__r.NU__MaximumDiscount__c,
    NU__CouponRule__r.NU__ValidatorClass__c,
    NU__StartDate__c,
    NU__EndDate__c,
    NU__Status__c,
    NU__Email__c,
    NU__Code__c,
    (SELECT Id FROM NU__Coupons__r WHERE NU__Account__c = :accountId AND Status__c != 'Cancelled')
    FROM NU__CouponCode__c
        WHERE NU__Code__c = :code ORDER BY Name
```

As you can see, it queries Coupon Code records. Any Query records that are used to override the default query must query Coupon Code records. Unless custom Coupon Rule Validators have been implemented, Query records should also include the Coupon subquery. It is recommended that any overrides also take advantage of the bind values, :code and :accountId.

#### **To actually utilize a query record within the CouponValidator.cls:**

1. Create a Query record like you would any other record.
    1. Please note the recommendations mentioned above.
2. Go to **Setup | Installed Packages**.
3. Click **Configure** next to the **Nimble AMS** package.
4. Scroll down to the **Coupon Validation Settings** heading.
5. Enter the name of your Query record in the **Coupon Validation Query Override** field.
6. Click **Save**.

!> Upon clicking save, the system will ensure that the specified query exists and generates valid SOQL. 
If there are any errors that occur at run time while attempting to execute the query during coupon validation, 
they will be caught, logged, and the system will default to the standard query.

### Providing Additional Data To Coupon Rule Validators

In addition to overriding the Coupon Code query, we can also use Query records to provide additional data to our Coupon Rule Validators. This will be useful if custom Coupon Rule Validators require records in addition to Coupon Codes. When providing additional data in this manner, any type of record can be queried. The CouponValidator.cls will ensure that the :accountId and :code bind values are provided so feel free to take advantage of this in the Where clauses for any Query record you created.

The additional data will be queried in the CouponValidator class and provided to each Coupon Rule Validator instance. The results of the additional queries can be accessed within a Coupon Rule Validator like so:

```apex
// The name of the Query record.
String queryName = 'SampleQueryRecordNameForAccounts';
  
List<Account> sampleAccounts = (List<Account>)request.Context.get(queryName);
```

#### **To configure these additional queries:**

1. Create a Query record like you would any other record.
2. Go to **Setup | Installed Packages**.
3. Click **Configure** next to the **Nimble AMS** package.
4. Scroll down to the **Coupon Validation Settings** heading.
5. Enter the name of your Query record in the **Additional Coupon Validation Queries** field.
    1. Multiple query records can be specified by entering a **comma separated** list of names!
6. Click **Save**.

!> Upon clicking save, the system will ensure that the specified queries exists and generate valid SOQL. 
   If there are any errors that occur at run time while attempting to execute the queries during coupon validation, 
   they will be caught, logged, and then the system will proceed to any remaining queries that have been specified. 
   Therefore, a single broken query will not prevent the others from being executed.

## Injecting Custom Validators

At this time there are two injection points that allow developers to implement custom coupon validation logic.

### System Wide Injection Point

At the highest level, we can override the **`CouponValidator`** class so that we can query additional information beyond the base set of Coupon Code records.

#### **Building a Custom Coupon Validator**

The default coupon validator will consider an account using the same coupon code more than once as invalid. But what if our organization wants users to come back with the same coupon 2, 3 or 100 times? Well step one would be to create a custom `MaxUses__c` field on the `CouponRule__c` object. Then we just have to make sure our new field is queried. We have a few options for how we select the new field.

#### **Write your own selector class...**

The first is to create your own Coupon Code selector class then extend the NU.CouponValidator class. Extending the NU.CouponValidator class will allow you to override the getValidationData() method which queries the records that will be used for validating coupons. Lets see what this might look like:

```apex
/**
 * @description Queries the records required for multi-use coupon validation and calls the default CouponValidator's
 *              validation method.
 */
public class MultiUseCouponValidator extends NU.CouponValidator {
    /**
     * @description Grabs the validation data for coupons based on the provided request.
     *              Queries for the MaxUses__c field when selecting coupon codes.
     * @param request The CouponValidator.Request object that contains details 
     *                on which CouponCode__c records to query for.
     * @return The CouponValidator.Data object representing all the components of the 
     *         coupon needed for validation.
     */
    public override NU.CouponValidator.Data getValidationData(NU.CouponValidator.Request request) {
        // Get potential coupon codes and related coupons for the specified account and code.
        // Note: The selector class below is not global. You may need to create your own class for querying the records.
        // We have provided additional global methods and configuration options to help you avoid writing your own Selector classes.
        List<NU__CouponCode__c> codes = CouponCodeSelector.newInstance()
                .selectCouponCodesByCodeAndAccountIdWithMaxUses(request.Code, request.AccountId);
 
        return new NU.CouponValidator.Data(codes);
    }
}
```

Note that we could also override the overall validation method in this class but we only need to select a new field for the individual coupon validation (continued below in Building a Custom Coupon Rule Validator).

Extending the NU.CouponValidator class **and** writing your own selector class just to query one new field is a little extreme. Therefore, it is recommended that in this scenario you take advantage of the **Coupon Validation Query Override** setting mentioned above in the OverridingDefaultQuery section.

#### **Base class to the rescue!**

What if you really do need to override the NU.CouponValidator class? Are you always forced to implement your own selector class? The short answer is no! While there may be some cases where implementing your own selector might be necessary, we have provided additional global methods to help you out.

The **queryCouponCodes()** and **getAdditionalQueryResults()** methods on the NU.CouponValidator class allow you to query Coupon Code records and even additional data while still supporting the Query records that were covered in the UsingQueryRecords section. A custom CouponValidator class that takes advantage of this might look like:

```apex
/**
 * @description Queries the records required for multi-use coupon validation and calls the default CouponValidator's
 *              validation method.
 */
public class MultiUseCouponValidator extends NU.CouponValidator {
    /**
     * @description Grabs the validation data for coupons based on the provided request.
     *              Queries for the MaxUses__c field when selecting coupon codes.
     * @param request The CouponValidator.Request object that contains details
     *                on which CouponCode__c records to query for.
     * @return The CouponValidator.Data object representing all the components of the
     *         coupon needed for validation.
     */
    public override NU.CouponValidator.Data getValidationData(NU.CouponValidator.Request request) {
        // Get potential coupon codes and related coupons for the specified account and code using a global method provided to you.
        // The queryCouponCodes() method is meant to be used internally by custom CouponValidators.
        // Any exceptions caused by a Query record override will be registered with the NU.Logger, and this method
        // will fall back on the default query.
        List<NU__CouponCode__c> codes = queryCouponCodes(request);
         
        // Create validation data from queried coupon codes.
        NU.CouponValidator.Data validationData = new NU.CouponValidator.Data(codes);
  
        // Lets take advantage of any additional Query records that may have been specified on the Nimble AMS configure page.
        // If no additional data is specified, getAdditionalQueryResults() will return an empty map.
        Map<String, Object> additionalData = getAdditionalQueryResults(request);
        validationData.Context.putAll(additionalData);
 
        // Publish any messages that have been logged while retrieving the validation data so the errors can be viewed.
        NU.Logger.flush();
        return validationData;
    }
}
```

#### **Configuring Nimble AMS to Use Your Custom Coupon Validator**

1. Log in to **Staff View**.
2. Go to **Setup | Installed Packages**.
3. Click **Configure** next to the **Nimble AMS** package.
4. Scroll down to the **Coupon Validation Settings** heading.
5. Enter the name of your **custom Coupon Validator class** into the input labeled **Coupon Validator Class** (e.g. **MultiUseCouponValidator**.)
6. Click **Save**

The class you specify **must** extend **NU.CouponValidator** in order to save successfully.

### Coupon Rule Injection Point

We can also specify custom logic **per coupon rule record**. By extending the **`CouponRuleValidator`** class, we can implement custom logic that should be used to validate a **single coupon code**.

#### **Building a Custom Coupon Rule Validator**

Back to our multi-use coupon selection, we now need to implement validation for individual records. Normally we would call our `CouponRuleValidator.Request`'s `codeHasCoupons` method to check if the coupon had already been used by our current user, but in this case we want to allow up to the coupon code's MaxUses__c field worth of uses, so we've implemented a helper function called `codeHasUsesRemaining` to use in its stead:

```apex
/**
 * @description Defines validation logic for coupons that can be used more than once by a single account.
 **/
public with sharing class MultiUseCouponRuleValidator extends CouponRuleValidator {
    @testVisible private static final String REQUEST_PARAM = 'requestArg';
 
    /**
     * @description Validates an individual coupon code, taking into account the maximum number of times an
     *              account can apply a given coupon.
     * @param request The CouponRuleValidator.Request object to base this validation operation on.
     * @return A CouponValidator.ValidationResult object containing the result of this operation and any error messages.
     */
    public override CouponValidator.ValidationResult validate(NU.CouponRuleValidator.Request request) {
        if (request.isCodeExpired()) {
            // You should create your own CustomLabels to use as error messages.
            return new NU.CouponValidator.ValidationResult(Label.CouponCodeExpired);
        }
  
        if (codeHasUsesRemaining(request.Code) && request.isCodeActive()) {
            return new NU.CouponValidator.ValidationResult(request.Code);
        }
         
        // You should create your own CustomLabels to use as error messages.
        return new NU.CouponValidator.ValidationResult(Label.CouponCodeNotValid);
    }
 
    private Boolean codeHasUsesRemaining(NU__CouponCode__c code) {
        Decimal maxUses = code.NU__CouponRule__r.MaxUses__c;
        // No max uses set or max uses 0? No uses remain.
        if (maxUses == null || maxUses < 1) {
            return false;
        }
 
        // No existing uses? Uses remain.
        if (!NU.CollectionUtil.listHasElements(code.NU__Coupons__r)) {
            return true;
        }
 
        return code.NU__Coupons__r.size() < maxUses;
    }
}
```

And that's it for code! Custom coupon behavior in three short methods.

#### **Configuring Nimble AMS to Use Your Custom Coupon Rule Validator**

1. Log in to **Staff View**.
2. Go to **Setup | Create | Objects**.
3. Click on the **Coupon Rule** object.
4. Click on the **Validator Class** field.
5. In the **Picklist** values section click **New**.
6. Specify the **Name** of your **Apex Class** which Extends **NU.CouponRuleValidator**.
7. Click **Save**.
8. Create a new **Coupon Rule** record.
9. Give it a **Name** and select the **Coupon Product** this coupon rule will look up to.
10. In the dropdown labeled **Validator Class** choose your custom coupon rule validator which you set up in steps 2-7.
11. **Save** the record.

## Summary

It's simple to create custom coupon validators and custom coupon rule validators to override the stock functionality in Nimble AMS. By following the procedures outlined in this document, you'll be able to fulfill any number of custom coupon validation requirements.
