# Custom Community Hub Template / Theme

## Background

During the development of Community Hub, we've established a core template capable of rendering custom stylesheets, components, favicons, logos, etc. This template covers many basic theming needs of Community Hub. However, it does not cover scenarios where more advanced theming is needed. Theming such as pulling in the header / footer of a larger website and making advanced changes to the overall markup structure of every page in Community Hub. This document covers the process of creating and setting a custom template for use in Community Hub as well as tons of additional resources to continue your learning.

## Creating a Template From Scratch

### Custom Template Structure

#### **Markup Layout**

At the most basic level, every Community Hub page is wrapped in a standard HTML doctype and page declaration structure. So, when creating a new template, process would look something like this depending on your requirements.

1. Create a new **Visualforce Page** to hold the overall structure of your template which utilizes **`NC.CoreTemplateController`** as a controller, and **removes** all Salesforce standard stylesheets and headers. This page will be able to make use of **globalcomponents** and **global properties** which are made use of in the shipped CoreTemplate.page. For an explanation of these, see the sections further down in this documentation.
2. Ensure that your template makes use of all **`<apex:insert />`** components to inject the relevant template regions needed to render Community Hub pages. For a full explanation of these, see the section below.
3. Ensure that your template makes use of as many, or as few **`<apex:dynamicComponent />`** components to inject the stock template components if you desire them. You may not need these if you want your template to be highly customized.
4. Ensure that your template makes use of as many, or as few **Community Hub components** as is necessary to maintain the design integrity of your site while ensuring consistent Community Hub functionality.

Example Basic Template

```html
<apex:page showHeader="false" standardStylesheets="false" docType="html-5.0" applyBodyTag="false" applyHtmlTag="false" controller="NC.CoreTemplateController">
<html>
    <head>
        <title>{!FormattedTitle}</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <apex:outputPanel layout="none" rendered="{!FaviconUrl != null && FaviconUrl != ''}">
            <link rel="shortcut icon" href="{!FaviconUrl}" />
        </apex:outputPanel>
        <NC:BaseStylesScripts />
        <NC:ThemeOutput />
        <apex:outputPanel layout="none" rendered="{!HasCustomStylesheet}">
            <apex:stylesheet value="{!CustomStylesheetResourceUrl}" />
        </apex:outputPanel>
        <apex:dynamicComponent componentValue="{!HeadComponent}" rendered="{!HeadComponent != null}" />
    </head>
    <body>
        <div class="l-off-canvas l-off-canvas-left">
            <div class="m-off-canvas-nav">
                <NC:ListGroupNavigation menuName="Global" />
                <apex:insert name="tertiaryNavigation" />
            </div>
            <apex:insert name="offCanvasLeft" />
        </div>
        <div class="l-canvas">
            <apex:dynamicComponent componentValue="{!HeaderComponent}" />
            <apex:insert name="main" />
            <apex:dynamicComponent componentValue="{!FooterComponent}" />
        </div>
        <NC:GoogleAnalyticsTracking />
    </body>
</html>
</apex:page>
```

### Relevant Components

- **BaseStylesScripts** - Provides you with an always up-to-date injection of all required stylesheets and Javascript files needed to render the base Community Hub layout.
- **ThemeOutput** - Outputs the stock **`ThemeSettings__c`** custom settings record to the page if point and click theming is desired.
- **ListGroupNavigation** - Renders a set of **`NavigationMenuItem__c`** records based upon the value of the **name** parameter.

### Relevant Global Properties from CoreTemplateController

- **FormattedTitle** - A composite output of the base page title format from a **`CustomizationSettings__c`** custom setting record and each **`Page__c`** custom settings record per-page.
- **FaviconUrl** - The URL for a **static resource** containing a **favicon** set in a **`CustomizationSettings__c`** record.
- **HasCustomStylesheet** - Boolean determining if this Community Hub has a custom stylesheet configured in a **`CustomizationSettings__c`** record.
- **CustomStylesheetResourceUrl** - The URL for a **static resource** containing a **stylesheet** set in a **`CustomizationSettings__c`** record.
- **HeadComponent** - A **Custom Component** intended to be used in the **`<head>`** section of each page set in a **`CustomizationSettings__c`** record.
- **HeaderComponent** - A **Custom Component** intended to be used in the top of the **`<body>`** section of each page set in a **`CustomizationSettings__c`** record.
- **FooterComponent** - A **Custom Component** intended to be used in the bottom of the **`<body>`** section of each page set in a **`CustomizationSettings__c`** record.
- **GoogleAnalyticsTracking** - A component which outputs one or more Google Analytics tracking Ids as configured in a **`CustomizationSettings__c`** record.
- **SsoCookie** - A component which adds a cookie indicating that the currently logged in user is signed into CommunityHub. Configured through a **`Cookie__c`** record.

### Relevant <apex: insert /> Region Names

- **tertiaryNavigation** - The main navigation area intended to be displayed off canvas in mobile viewports.
- **offCanvasLeft** - An additional area for pages to inject unique content per-page intended to be displayed off canvas in mobile viewports.
- **main** - The main area where all unique content will be injected per-page.

### Setting a Custom Template

- Go to **Setup**
- **Expand Customize > Communities**
- Click **All Communities**
- Click **Manage** next to the name of the community you'd like to replace the stock template for.
- Click **Administration** on the left menu.
- Click **Pages** on the left menu.
- Click **Go to Force.com**
- Click **Edit** on the record you are presented.
- Choose the **Visualforce page** you created with the intention to use as a custom template in the **pick list** named **Site Template**.
- **Save** the record.

## Additional Resources

Your learning need not stop here! There's a plethora of other Community Hub related theming / styling information available to help you enrich your skills and continue your frontend education.

### Salesforce1 Bootstrap Theme

[https://github.com/SalesforceFoundation/bootstrap-sf1](https://github.com/SalesforceFoundation/bootstrap-sf1)

Community Hub was built with this Bootstrap theme created by the Salesforce Foundation as a base. We've added additional UI controls which are documented in the built-in style guide in Community Hub, but that is the base of where we started and is an excellent reference for the markup base for Community Hub pages.

### Bootstrap Documentation

[http://getbootstrap.com/css/](http://getbootstrap.com/css/)

Last but not least, at its core, Community Hub is based upon Bootstrap 3, so anything you see in their documentation is relevant and applicable to what we have available in our package. This should be your first stop when you're looking for new UI patterns to make use of.
