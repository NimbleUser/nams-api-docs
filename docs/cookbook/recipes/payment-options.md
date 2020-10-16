# Payment Options

## Background

In Community Hub's checkout page we offer users different ways to pay besides paying with a credit card.

![Payment%20Options%20d4b90fd43f214a3384feb7512d16ac08/Untitled.png](Payment%20Options%20d4b90fd43f214a3384feb7512d16ac08/Untitled.png)

When there is more than one payment option available to the user the Payment Options card (pictured above) will appear and let the user select the way they want to pay. By default this card calls the PaymentOptionsService.Instance.getSelectedPaymentOption to determine which payment option will be selected when it loads.

## Implementing a New Way To Pay

For this example we will implement the Check payment option. If this payment option is selected we want the user to upload an image of the check they are paying with. The Check payment option will only be presented to users that have the Trusted__c checkbox checked on their account. We also want the Payment Options card with the Check payment option selected by default if the user's cart has an attachment, since we assume that is the image of the check.

#### **1. Implement the Payment Option**

The first thing we need to do is implement our custom payment option. For this we need to implement an NU.PaymentOptions.IOption:

We are using the following custom labels in the example below:

**PayWithCheck**: Pay With Check

**UserCannotPay**: The user cannot pay with a check.

```apex
global without sharing class CheckPaymentOption implements NU.PaymentOptions.IOption {
    Boolean trusted = false;
     
    global String getName() {
        return Label.PayWithCheck;
    }
     
    global Boolean getIsAvailable() {
        return trusted;
    }
     
    global String getMessage() {
        if (!getIsAvailable()) {
            return Label.UserCannotPay;
        }
         
        return '';
    }
 
    /**
     * @description Global constructor.
     * @param request NU.PaymentOptionsService.Request.
     */
    global CheckPaymentOption(NU.PaymentOptionsService.Request request) {
        Account userAccount = new AccountSelector().selectById(new Set<Id> { request.AccountId });
        this.trusted = userAccount.NU__Trusted__c;
    }
}
```

#### **2. Implement a Custom Payment Options**

Now now have to implement a new PaymentOptions (NU) that will be used by the PaymentOptionsService (NU).

```apex
global without sharing class CustomPaymentOptions extends PaymentOptions {
    global override List<IOption> getPaymentOptions(NU.PaymentOptionsService.Request request) {
        List<IOption> paymentOptions = super.getPaymentOptions(request);
 
        IOption checkPaymentOption = new CheckPaymentOption(request);
        if (checkPaymentOption.getIsAvailable()) {
            paymentOptions.add(checkPaymentOption);
        }
 
        return paymentOptions;
    }
  
    global override IOption getSelectedPaymentOption(NU.PaymentOptionsService.Request request) {
        Id currentCartId = NC.CartService.getCurrentId();
        List<Attachment> attachmentsInCart = NC.AttachmentSelector.selectByParentIds(new Set<Id> { currentCartId });
        if (!attachmentsInCart.isEmpty()) {
            return new CheckPaymentOption(request);
        }
  
        return super.getSelectedPaymentOption(request);
    }
}
```

#### **3. Setting our Custom Payment Options**

For the PaymentOptionsService to know that it needs to use our custom payment options implementation we have to edit the NU Configure page and set our new class.

![Payment%20Options%20d4b90fd43f214a3384feb7512d16ac08/Untitled%201.png](Payment%20Options%20d4b90fd43f214a3384feb7512d16ac08/Untitled%201.png)

At this point the Payment Options card in the Checkout page should be displaying our new payment option:

![Payment%20Options%20d4b90fd43f214a3384feb7512d16ac08/Untitled%202.png](Payment%20Options%20d4b90fd43f214a3384feb7512d16ac08/Untitled%202.png)

## Listening to the Right Message

By default the Payment Options card will send a PaymentOptionSelected message when out payment option is selected by the user. The message will contain a string parameter with our payment option's name, as defined in CheckPaymentOption.getName().

Finally, we require an image to be attached whenever the user tries to use our Check payment. To achieve let's first [implement a File Attachment card](https://help.nimbleams.com/file-attachment-card-type-6178048.html) and add it to the Checkout page. By default our file attachment card should be hidden and it should render when it receives the correct message from the Payment Options card:

```apex
...
private Boolean shouldRender = false;
  
global override Boolean getShouldRender() {
    return shouldRender;
}
 
global protected override void initialize() {
    // First let's make our card subscribe to the correct message.
    Messages.subscribe(PaymentOptionSelectedMessage.class, this);
}
 
 
global protected override void doHandleMessage(Message message) {
    if (message.getType() == PaymentOptionSelectedMessage.class) {
        shouldRender = (String)message.Parameter == CheckPaymentOption.getName();
    }
}
...
```
