# Using the Access Control Setting Framework

## Background

One of the most popular enhancement requests since the start of Community Hub has been the ability to control access to all kinds of metadata through point and click. Including pages, cards, buttons, navigation menu items, etc. Previously, control of the access to these records was limited solely to technical consultants requiring the creation of complex Apex classes to govern access.

With the introduction of the **Access Control Setting Framework**, we've created the requisite framework pieces to empower Community Hub administrators to handle the majority of these access use cases fully through point and click. Our packaged control mechanisms involve Query Records, Permission Sets, and Account `SObject` formula fields. However, we knew from the very beginning that a time would come where someone has a very specific use case not covered by our packaged point and click options.

To solve these such use cases, rather then requiring technical consultants to build a hardcoded Apex class, we've allowed for the ability to extend the point and click Access Control Setting Framework through customization. You, the developer can deliver additional point and click functionality directly to our customers with a high quality user experience.

**Hold Up**

If you're interested in how this feature works from a point and click admin perspective, we cover some of that through our examples, but you'll want to refer to the end user documentation instead.

This guide is oriented at technical consultants and partners who desire to extend the point and click Access Control Setting Framework in the Community Hub Setup App.

### Example

Let's say we're working with ISEN and they're an organization with a lot of **committees**. During discovery, we found out that ISEN wants to restrict access to **dozens** of pages in Community Hub to only the current members of those committees.

Sure, we could teach the staff full SOQL and force them to build a Query record every time they want to configure access to a page, card, button, or nav item.

Alternatively, we could build a reusable, framework first customization which allows them to configure access without SOQL queries. All they would need to do is **select the name of the committee through point and click**.

## Building the Customization

To put it in terms of user stories, at the end of building the customization outlined in this guide, ISEN should be able to do the following:

- As an ISEN staff member, I should be able to **restrict access to cards, pages, buttons, navigation menu items in Community Hub to logged in accounts who are a current member of a given committee**.
- As an ISEN staff member, I should be able to **select the committee by name when creating my Access Control Setting records in the Community Hub Setup App**.

Good news, we can do all of that!

### The NC.IConditional Interface

At the core of this framework is quite possibly the most straightforward logical evaluation in the history of programming: a `Boolean`. Do we care about anything else besides whether the account is a current member of the committee? Nope. If they are a member: `true`, if they're not: `false`.

This is where the `NC.IConditional` Interface comes into play. The Community Hub Setup App page for Access Control Settings is programmed to **require** that you implement this interface as it allows all of the other framework pieces in Community Hub to evaluate access to a given metadata record. If your class does not implement this interface, an error will be displayed when you attempt to save an Access Control Setting record.

#### **What's in a Name?**

In order to make this simpler to use, the Community Hub Setup App searches for Apex Classes in the current org which end in '**Conditional**'. This allows us to narrow the list of all Apex Classes in a given org down to something manageable for a pick list. So, if there's one takeaway before we dive in further, **your custom Apex Class must be named such that it ends in the key word `Conditional`** e.g. **`CommitteeMemberConditional`**.

#### **Evaluating Committee Access**

The `evaluate` method in the `NC.IConditional` interface is pretty simple. It allows the caller to specify any `Object`. In the case of this particular framework, what we will be sending along is a `Map<String, NC.AdditionalSetting>` containing key / value pairs of additional settings. We are expecting that this map contains the chosen committee name. Without that, there's nothing to evaluate.

```apex
/**
 * @description Evaluates whether the current Community Hub account is a current member of the chosen committee.
 */
public without sharing class CommitteeConditional implements NC.IConditional {
    private static final String INVALID_PARAM_ERROR =
            'Expected subject param to be a map of additional setting by string.';
 
    // We'll need this later - this will be the map key where we store the committee chosen in the CH Setup App.
    private static final String ADDITIONAL_SETTING_KEY = 'CommitteeName';
 
    /**
     * @description Evaluates whether the current account is an current member of the specified committee.
     * @param subject A map of additional settings by key.
     * @return True if the current user is a current member of the committee, else false.
     * @throws NC.ArgumentException if subject is not a map of additional settings by key..
     */
    public virtual Boolean evaluate(Object subject) {
        if (!(subject instanceof Map<String, NC.AdditionalSetting>)) {
            throw new NC.ArgumentException(INVALID_PARAM_ERROR);
        }
 
        NC.AdditionalSetting keySetting = ((Map<String, NC.AdditionalSetting>)subject).get(ADDITIONAL_SETTING_KEY);
 
        if (keySetting == null) {
            // No NC__AdditionalSetting__mdt lookup to this NC__AccessControlSetting__mdt was found, we cannot evaluate further.
            return false;
        }
 
        // We are evaluating the current account being a current member of the committee specified in
        // an AdditionalSetting__mdt record.
        return isAccountCurrentCommitteeMember(NC.CommunityUser.getAccountId(), keySetting.Value);
    }
 
    private Boolean isAccountCurrentCommitteeMember(Id accountId, String committeeName) {
        if (String.isBlank(committeeName) || accountId == null) {
            // No committee name found, or they're not logged in? We can't evaluate any further.
            return false;
        }
 
        // In reality, we should not be doing this as inline SOQL for best long term support. I highly recommend a
        // selector class, but for purposes of this example, we will keep it inline.
        List<NU__CommitteeMembership__c> committeeMemberships =
                [SELECT Id FROM NU__CommitteeMembership__c
                    WHERE NU__Committee2__r.Name = :committeeName
                    AND NU__Account2__c = :accountId
                    AND NU__State__c = 'Current'];
 
        // If we found a committee membership, they're a member!
        return !committeeMemberships.isEmpty();
    }
}
```

### The IProvideSelectOptions Interface

Now that we have the ability to programmatically determine whether or not the current account is a current member of a committee, how do we let the admin specify which committee they want to restrict to, through point and click?

By implementing the `NC.IProvideSelectOptions` interface, we can also allow our `CommitteeConditional` class to specify a `List<SelectOption>` to let the administrator pick from in the Community Hub Setup App. The app is programmed to see your class if it is named with the required "Conditional" suffix and `implements NC.IConditional,` `NC.IProvideSelectOptions`. If it does, pulls in the list of select options to display.

On save, the Community Hub Setup App will store the chosen `SelectOption` as an `NC__AdditionalSetting__mdt` record which looks up to the `NC__AccessControlSetting__mdt` record which is being saved. The relevant lookup `NC__AdditionalSetting__mdt` record(s) then get passed along in a map by their key at runtime when `evaluate` is called, thus tying it all together!

#### **Providing Select Options**

```apex
/**
 * @description Evaluates whether the current Community Hub account is an active member of the chosen committee.
 */
public without sharing class CommitteeConditional implements NC.IConditional, NC.IProvideSelectOptions {
    private static final String INVALID_PARAM_ERROR =
            'Expected subject param to be a map of additional setting by string.';
 
    // This is the key where the committee name is stored in an NC__AdditionalSetting__mdt record. It is also displayed
    // in the Community Hub Setup App as a label for the select list of committee names.
    private static final String ADDITIONAL_SETTING_KEY = 'CommitteeName';
 
    /**
     * @description Evaluates whether the current user is an active member of the specified committee.
     * @param subject A list of additional options related to the conditional visibility record.
     * @return True if the current user is an active member of the committee, else false.
     * @throws NC.ArgumentException if subject is not a String.
     */
    public Boolean evaluate(Object subject) {
        if (!(subject instanceof Map<String, NC.AdditionalSetting>)) {
            throw new NC.ArgumentException(INVALID_PARAM_ERROR);
        }
 
        NC.AdditionalSetting keySetting = ((Map<String, NC.AdditionalSetting>)subject).get(ADDITIONAL_SETTING_KEY);
 
        if (keySetting == null) {
            // No NC__AdditionalSetting__mdt lookup to this NC__AccessControlSetting__mdt was found, we cannot evaluate further.
            return false;
        }
 
        // We are evaluating the current account being a current member of the committee specified in
        // an NC__AdditionalSetting__mdt record.
        return isAccountCurrentCommitteeMember(NC.CommunityUser.getAccountId(), keySetting.Value);
    }
 
    // Let's cache these for performance purposes in the event getSelectOptions is called more than once in the context
    // of a single execution cycle.
    private Map<String, List<SelectOption>> selectOptions;
 
    /**
     * @description Gets a list of all committee names.
     * @return A List<SelectOption> containing all committee names.
     */
    public Map<String, List<SelectOption>> getSelectOptions() {
        if (this.selectOptions != null) {
            return this.selectOptions;
        }
 
        List<SelectOption> committeeOptions = new List<SelectOption>();
 
        // In reality, we should not be doing this as inline SOQL for best long term support. I highly recommend a
        // selector class, but for purposes of this example, we will keep it inline.
        List<NU__Committee__c> committeeRecords = [SELECT Name FROM NU__Committee__c ORDER BY Name];
 
        for (NU__Committee__c committeeRecord : committeeRecords) {
            committeeOptions.add(new SelectOption(committeeRecord.Name, committeeRecord.Name));
        }
 
        // Add list to the map.
        this.selectOptions = new Map<String, List<SelectOption>> {
                ADDITIONAL_SETTING_KEY => committeeOptions
        };
 
        return this.selectOptions;
    }
 
    private Boolean isAccountCurrentCommitteeMember(Id accountId, String committeeName) {
        if (String.isBlank(committeeName) || accountId == null) {
            // No committee name found, or they're not logged in? We can't evaluate any further.
            return false;
        }
 
        // In reality, we should not be doing this as inline SOQL for best long term support. I highly recommend a
        // selector class, but for purposes of this example, we will keep it inline.
        List<NU__CommitteeMembership__c> committeeMemberships =
                [SELECT Id FROM NU__CommitteeMembership__c
                    WHERE NU__Committee2__r.Name = :committeeName
                    AND NU__Account2__c = :accountId
                    AND NU__State__c = 'Current'];
 
        // If we found a committee membership, they're a member!
        return !committeeMemberships.isEmpty();
    }
}
```

## Wrap Up

By implementing the `NC.IConditional`, `NC.IProvideSelectOptions`, you can easily build custom Access Control Settings functionality and empower Community Hub Setup app. The end result of following our example above will render like this for the admin user:

![Using%20the%20Access%20Control%20Setting%20Framework%201d0d445096ae49e597566b6a2a7d2832/Untitled.png](Using%20the%20Access%20Control%20Setting%20Framework%201d0d445096ae49e597566b6a2a7d2832/Untitled.png)
