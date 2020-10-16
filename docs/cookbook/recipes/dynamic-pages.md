# Dynamic Pages

## Background

So you want to use dynamic pages but would want to also have a controller where you do all kinds of crazy things with code. You've come to the right place *.

!> This only applies if you plan to use one of the existing Dynamic pages, like AccountDynamicPage or InteriorDynamicPage for example. If you are planning to create your own Visualforce Page then disregard, you already have the power of just extending DynamicPageController and doing whatever you want there.

## Read this before you start

First you'll want to know how to create a dynamic page. For that head to the [Create a Page documentation](http://help.nimbleams.com/create-a-page-6177956.html), since we don't want to repeat ourselves here.

## What you have available

To control what your page does you'll need one thing: an implementation of **`NC.IDynamicPageController`**.

**Here's what the `NC.IDynamicPageController` interface looks like:**

**Method**|**Description**
:-----:|:-----:
PageReference onLoad();|"Gets executed when the dynamic page loads. Returns the PageReference users will be redirected to
Boolean allowAccess();|Identifies if the user has access to the dynamic page.
PageReference getNoAccessPage();|"If the allowAccess() method returns false
PageReference getFallbackPage();|"Page where users will be redirected to if
Boolean getShouldRenderCards();|Determines if cards should be rendered on this page.

Additionally, you have the option to use an implementation of NC.IDynamicPageConstructor. The advantages of doing this are that your page controller will have access to the page's `NC.QueryService` (for datasource stuff) and the `NC.MessageService` (for message notifications and handling).

**Here's what the `NC.IDynamicPageConstructor` interface looks like:**

**Method**|**Description**
:-----:|:-----:
NC.IDynamicPageController construct(NC.CardData cardData)|"Constructs an NC.IDynamicPageController passing in a CardData instance

## Example

Let's say that we have a page called My Memberships. This page will display a list of memberships for the logged in user, that means you don't want logged out users to have access to it. Let's assume that you have already created the cards that will go on this page. Let's also assume for the sake of the example that the cards you have created are waiting for a "Page Loaded" message to do something once the page loads.

### 1. First create your implementation of NC.IDynamicPageController.

In here you'll have your logic related to how the page controls. Additionally, since we want to use the page's `NC.MessageService` to broadcast the "Page Loaded" message, we will also implement the `NC.IDynamicPageConstructor`.

```apex
/**
 * @description Custom implementation of NC.IDynamicPageController with a constructor.
 */
public without sharing class MyMembershipsCustomPageController implements NC.IDynamicPageController {
    private NC.QueryService querier;
    private NC.MessageService messages;
 
    /**
     * @description Since we'll be using a constructor, we want to create a constructor that receives what we are expecting.
     */
    public MyMembershipsCustomPageController(NC.CardData cardData) {
        this.querier = cardData.Querier;
        this.messages = cardData.Messages;
    }
 
    /**
     * @description As discussed, we want to notify that the page has loaded since we are expecting our cards to need this.
     */
    public PageReference onLoad() {
        this.messages.notify(new Message('Page Loaded'));
    }
 
    /**
     * @description As discussed, we only want to allow access to logged in users. Another option is to always allow access and return false, on the getShouldRenderCards method,
     *              that way you keep the user on this page but don't let them see anything (you could then add a page message to the page).
     */
    public Boolean allowAccess() {
        return NC.CommunityUser.IsLoggedIn;
    }
 
    /**
     * @description Let's redirect to the login page since they are not logged in.
     */
    public PageReference getNoAccessPage() {
 
        return Page.Login.
    }
 
    /**
     * @description Let's redirect to the login page here as well.
     */
    public PageReference getFallbackPage() {
        return Page.Login.
    }
 
    /**
     * @description Let's just render the cards if they have access.
     */
    public Boolean getShouldRenderCards() {
        return true;
    }
 
    /**
     * @description This is the constructor we need to be able to construct the dynamic page controller while passing the NC.QueryService and NC.MessageService.
     */
    public class Constructor implements NC.IDynamicPageConstructor {
        public MyMembershipsCustomPageController construct(NC.CardData cardData) {
            return new MyMembershipsCustomPageController(cardData);
        }
    }
}
```

### 2. Create the Page record.

Go to: [http://help.nimbleams.com/create-a-page-6177956.html](http://help.nimbleams.com/create-a-page-6177956.html) and follow the steps to actually create the page record. In the "Controller" field you should put: **`MyMembershipsCustomPageController$Constructor`.**

!> Remember that if you don't need to have access to the `NC.QueryService` and `NC.MessageService` you can also have a basic implementation of `NC.IDynamicPageController` (with a parameterless constructor) and just put that in your Page's Controller field.
