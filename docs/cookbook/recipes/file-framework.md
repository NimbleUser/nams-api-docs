# File Framework

## Background

By the end, you will be able to utilize the Files API and framework pieces directly, or build a custom service implementation to upload files to **anywhere**, for **any purpose**.

## A Word About "Files"

In the context of Salesforce, "files" are a specific term. They refer to an object which replaces the legacy Document and Attachment objects. Behind the scenes they work similarly with a few minor differences. While this guide will not go into detail on those, I would recommend you take the time to browse through the [Salesforce documentation on the subject](https://help.salesforce.com/articleView?id=collab_files_differences.htm&type=0), so that you are aware as to what files are and how they are represented on the Force.com platform.

Outside of this particular section, we refer to "files" in this document, but mean simply, an uploaded file. Not the Salesforce-specific file construct.

### Packaged Functionality

The **packaged implementation** of profile photo / logo functionality shipped with Community Hub operates like this:

1. An end user locates the photo to upload on their machine and begins the upload process.
2. The binary data located in this photo is uploaded to Salesforce.
    1. A **ContentDocument** record is inserted into your org with a name of "**Community Profile Photo**". This is a specific key used by Community Hub to identify the specific ContentDocument record which represents the account's photo / logo.
    2. A **ContentVersion** record is inserted into your org containing the **binary data** which was uploaded, as a single "version" of that ContentDocument.
        1. The **ContentVersion** record has a **lookup to the ContentDocument record** from step 2a.
    3. A **ContentDocumentLink** record is inserted into your org which **links the ContentDocument** record to the **Account** or **PersonAccount** record which it relates to e.g. The organization or individual for whom it was uploaded for.
    4. The **`NU__ProfileImageRevisionId__c`** field on the specified **Account** is set to be the **Id** of the **ContentVersion** record which was uploaded.
        1. This allows the **`NU__ProfileImage__c`** formula field on the **Account** to be used to easily display the latest revision on any page in Community Hub.
3. **If and only if** the photo which was uploaded is for an **individual person account**, the **ConnectApi.UserProfiles.setPhoto** API method is used to assign the **ContentDocument** record to the **User** the individual account logs into Community Hub on.
    1. This particular step bridges the gap between "core Force.com functionality" and "Salesforce Communities functionality", associating the photo with the user they log in as. This does not apply to organization accounts as they have no associated user.

!> **Would you like to know more?** Continue reading through this page, you'll see that the entire process outlined above, and in the diagram below can be swapped out seamlessly, with something custom.

**A Nifty Flow Chart**

If you hate words, then this section is for you. Here's a visual outline of all the madness I just typed out above, along with some teasers about interfaces and classes we'll discuss next.

![File%20Framework%203cdadfb9096e48609bccf25c63f66630/Untitled.png](File%20Framework%203cdadfb9096e48609bccf25c63f66630/Untitled.png)

## Storage Extension Points

We built this entire thing framework first. What does that mean to you? It means we built an API and the first use of that API was to implement it ourselves for the affiliations work.

### Example Business Use Case

Let's imagine that our customer has a longstanding relationship with Dropbox. They use their secure upload functionality to store abstracts, certification documents, everything. This allows their staff to have quick access to constituent documents in the cloud, wherever they are.

As such, our customer would like to store all of the profile photos in Dropbox, but link them to each account in Nimble AMS. Seems hard, but with the built in extension points, it's a breeze!

#### **The NC.IFileUploadService Interface**

The **`NC.IFileUploadService`** interface describes one method, whose purpose is to take a request, and perform an upload. Then, it returns a response indicating the success or failure of the operation.

```apex
/**
 * @description Describes implementations for uploading files to a storage mechanism.
 **/
global interface IFileUploadService {
    /**
     * @description Uploads a file for the specified FileUploadRequest.
     * @param request The FileUploadRequest containing relevant information required to upload a version of a file.
     * @return A FileUploadResponse containing the success or failure of the operation.
     * @throws ArgumentNullException if request is null.
     */
    FileUploadResponse uploadVersion(FileUploadRequest request);
}
```

#### **Building a Custom Service**

For the sake of demonstration purposes, we're going to abstract away the more complicated part of all of this. We're going to **assume** you have an existing service named **`DropboxStorageService`** which handles the actual Dropbox uploading part.

It takes in our upload request and returns back a String Id representing the internal Dropbox Id of the file we uploaded. So, based upon that, we can build our custom **`DropboxFileUploadService`**.

```apex
/**
 * @description An implementation of NC.IFileUploadService which supports the uploading of files to Dropbox.
 **/
public virtual without sharing class DropboxFileUploadService implements NC.IFileUploadService {
    @testVisible private static final String REQUEST_PARAM = 'request';
 
    /**
     * @description A default constructor for DropboxFileUploadService, this is required due to dynamic instantiation.
     */
    public DropboxFileUploadService() { }
 
    /**
     * @description Uploads the file specified on the request to Dropbox, then links to the account on the request.
     * @param request The FileUploadRequest containing relevant information required to upload.
     * @return A FileUploadResponse containing the success or failure of the operation.
     * @throws NC.ArgumentNullException if request is null.
     */
    public virtual FileUploadResponse uploadVersion(FileUploadRequest request) {
        NC.ArgumentNullException.throwIfNull(request, REQUEST_PARAM);
 
        NC.OperationResult result = NC.OperationResult.newInstance();
        String dropboxFileId;
 
        try {
            NC.OperationResult dropboxUploadResult = DropboxStorageService.Instance.upload(request);
 
            // Upload to Dropbox failed? Return the unsuccessful result immediately.
            if (dropboxUploadResult.isNotSuccessful()) {
                return dropboxUploadResult;
            }
 
            dropboxFileId = dropboxUploadResult.FileId;
 
            // Upload to Dropbox succeeded, so let's link the file Id to the Account Id specified
            // in the request.
            Id accountId = request.SObjectRecordId;
             
            Account accountToLinkTo = new Account(
                    Id = accountId,
                    NU__ProfileImageRevisionId__c = dropboxFileId
            );
 
            NC.UnitOfWork updateWork = new NC.UnitOfWork();
            updateWork.registerDirty(accountToLinkTo);
            updateWork.commitWork();
        } catch(Exception ex) {
            NU.Logger.log(ex);
 
            result.addErrorMessage(ex.getMessage());
            return new NC.FileUploadResponse(result);
        } finally {
            NU.Logger.flush();
        }
 
        return new NC.FileUploadResponse(dropboxFileId, dropboxFileId, result);
    }
}
```

#### **The NC.IDragAndDrop Interface**

Community Hub uses a jQuery plugin to handle the heavy lifting of uploading, we just need to extend on the packaged controller to hook it to our custom service.

To do this, we'll take a look at another interface, this time, the **`NC.IDragAndDrop`** interface. This interface describes the bridge between the UI and your implementation of **`NC.IFileUploadService`**.

```apex
/**
 * @description Describes methods to be used for drag and drop file upload functionality.
 **/
global interface IDragAndDrop {
    /**
     * @description Describes a method for asynchronously receiving data to upload.
     * @param sObjectId The SObject Id to tie the uploaded file to.
     * @param fileName The file name of the file being uploaded.
     * @param base64Data A Base64 encoded String containing the data being uploaded.
     * @return An OperationResult indicating the success or failure of the operation.
     */
    OperationResult upload(Id sObjectId, String fileName, String base64Data);
}
```

#### **Can't Get Enough Services**

Now that we've seen the **`NC.IDragAndDrop`** interface, let's implement it to call our **`DropboxFileUploadService`**. We're going to make a class named **`DropboxDragAndDropService`**.

```apex
/**
 * @description Facilitates drag and drop upload functionality for account profile photos,
 *              uploading them to Dropbox.
 **/
global virtual without sharing class DropboxDragAndDropService implements NC.IDragAndDrop {
    @testVisible private static final String ACCOUNT_ID_PARAM = 'accountId';
    @testVisible private static final String FILE_NAME_PARAM = 'fileName';
    @testVisible private static final String BASE_64_DATA_PARAM = 'base64Data';
    @testVisible private static final String PROFILE_PHOTO_FILE_TITLE = 'Community Profile Photo';
    private static final String JAVASCRIPT_BASE64_DELIMETER = ',';
 
    /**
     * @description A default constructor for creating an instance of DropboxDragAndDropService.
     *              We don't use a singleton or a newInstance as this needs to be dynamically instantiated by name.
     */
    global DropboxDragAndDropService() { }
 
    /**
     * @description Uploads the specified base64 encoded image file for the specified Account Id.
     *              Intended to be called from a Javascript remote action.
     * @param accountId The Id of the account to set the profile photo for.
     * @param fileName The file name of the file being uploaded.
     * @param base64Data A Base64 encoded String containing the image being uploaded.
     * @throws ArgumentNullException if any parameter is null.
     * @return An NC.OperationResult indicating the success or failure of the operation.
     */
    global virtual OperationResult upload(Id accountId, String fileName, String base64Data) {
        NC.ArgumentNullException.throwIfNull(accountId, ACCOUNT_ID_PARAM);
        NC.ArgumentNullException.throwIfNull(fileName, FILE_NAME_PARAM);
        NC.ArgumentNullException.throwIfNull(base64Data, BASE_64_DATA_PARAM);
 
        String cleanedBase64 = base64Data;
        Integer indexOfDelimeter = cleanedBase64.indexOf(JAVASCRIPT_BASE64_DELIMETER);
 
        if (indexOfDelimeter > -1) {
            // Javascript sends over some descriptive stuff prior to the base64, so we strip that out.
            cleanedBase64 = cleanedBase64.substring(indexOfDelimeter + 1);
        }
 
        // Build an upload request, passing in the implementation of IFileUploadService for Dropbox.
        NC.FileUploadRequest request =
                new NC.FileUploadRequest(PROFILE_PHOTO_FILE_TITLE, new DropBoxFileUploadService());
        request.SObjectRecordId = Id.valueOf(accountId);
        request.BinaryFile = EncodingUtil.base64Decode(cleanedBase64);
        request.ActualFileName = fileName;
 
        // Upload the file, receive a response.
        NC.FileUploadResponse response = NC.FileUploadService.Instance.uploadVersion(request);
 
        // Return the result from the file upload response if it is successful.
        if (response.Result.isSuccessful()) {
            return response.Result;
        }
 
        // Log any error, return it.
        String errorMessage = response.Result.getErrorsAsString();
        NU.Logger.log(errorMessage, 'upload', DropboxDragAndDropService.class.toString(),
                NU.Logger.Level.ERROR);
        NU.Logger.flush();
 
        return response.Result;
    }
}
```

#### **Hooking Everything Together**

Wow, now we've got a custom service to handle the uploading, a custom service to facilitate the drag and drop, how can we utilize the packaged card with all our custom services and wire it all up?

Behind the scenes, Community Hub utilizes the **`NC.UploadPhotoComponentController`** to control the Visualforce component facilitating the uploads. So, we simply need to extend this class and override a method to tell the Card which drag and drop implementation to use.

We will be creating a class called **`DropboxUploadPhotoComponentController`**. Then, through point and click you'd only need to adjust the controller for your card to utilize **`DropboxUploadPhotoComponentController`**

```apex
/**
 * @description Controls UploadPhoto.component, allowing photos to be uploaded to Dropbox.
 **/
global virtual without sharing class DropboxUploadPhotoComponentController extends NC.UploadPhotoComponentController {
    /**
     * @description Gets the class name of the service to facilitate drag and drop Javascript functionality.
     * @return The String representation of DropboxDragAndDropService.
     */
    global virtual override String getDragAndDropImplementationClassName() {
        return DropboxDragAndDropService.class.toString();
    }
}
```

## Upload Extension Points

Uploading with a traditional "click here to choose your file" UI is pretty boring, right? That's why we brought in **full, component-based drag and drop support**.

As you saw in the previous section, we've already got our custom service hooked up to the drag and drop functionality, but how can we use the drag and drop functionality in standalone in something **completely separate** from profile photo / logo functionality?

### The Javascript

We built a jQuery plugin for utilizing drag and drop functionality in concert with an implementation of **`NC.IDragAndDrop.`** If you have a need to use this functionality at the lowest level, you could do so, right on a Visualforce page like this:

```html
<apex:includeScript value="{!URLFOR($Resource.NC__Resources, 'DragAndDropFileUpload.js')}" />
 
<script>
    function reloadOnStopEvent() {
        console.log('hey we are done saving!');
    }
</script>
<apex:inputFile id="fileUploadHiddenInput" styleClass="m-hidden-input" value="{!DummyFile}" />
<apex:actionRegion>
    <apex:actionStatus id="fileUploadStatus" onstop="reloadOnStopEvent();" />
    <apex:actionFunction name="uploadFile" action="{!uploadFile}" rerender="fileUploadDropZone"
        status="fileUploadStatus">
        <apex:param name="serviceImplementation" value="" assignTo="{!ServiceImplementation}" />
        <apex:param name="accountId" value="" assignTo="{!AccountId}" />
        <apex:param name="fileName" value="" assignTo="{!FileName}" />
        <apex:param name="base64Data" value="" assignTo="{!Base64Data}" />
    </apex:actionFunction>
    <apex:outputPanel id="fileUploadDropZone" layout="block" styleClass="m-drag-and-drop-zone">
        Drag and drop your file here to upload!
    </apex:outputPanel>
</apex:actionRegion>
 
<script>
$(function() {
    $('[id="{!$Component.fileUploadDropZone}"]').nuDragAndDropFileUpload({
        uploadServiceImplementation: 'DropboxDragAndDropService',
        sObjectId: '{!AccountId}',
        acceptableMimeTypes: '["image/jpeg", "image/gif"]',
        limit: '20',
        fileInputId: '{!$Component.fileUploadHiddenInput}',
        loadingText: 'Hang on, we are uploading your file.',
        friendlyErrorMessage: 'Looks like we had a bit of trouble uploading your file, try again later.',
        fileSizeErrorMessage: 'Hmm the file you tried to upload is too big, the limit is 20mb.',
        fileTypeErrorMessage: 'You are only allowed to upload .jpg or .gif files.',
        uploadFunctionName: 'uploadFile'
    });
});
</script>
```

### The Visualforce Component

Maybe that's a little too low level for your needs. Let's take it up another layer and you can utilize your same NC.IDragAndDrop service with our packaged **`NC:DragAndDropFileUpload`** Visualforce component!

```html
<NC:DragAndDropFileUpload
    uploadServiceImplementation="DropboxDragAndDropService"
    dropZoneDescriptionText="Drop your files here!"
    sObjectId="{!Account}"
    fileSizeLimit="20"
    savingMessage="Hang on, we are uploading your file."
    friendlyErrorMessage="Looks like we had a bit of trouble uploading your file, try again later."
    fileSizeErrorMessage="Hmm the file you tried to upload is too big, the limit is 20mb."
    fileTypeErrorMessage=You are only allowed to upload .jpg or .gif files.
    acceptableMimeTypes="['image/jpeg', 'image/gif']" />
```

## Executive Summary

Well you've made it this far, but here's a recap of everything we covered:

We built a framework first-approach to uploading profile photo photos / logos. So much so that it can be used to upload any kind of file to anywhere, as long as you create the technical pieces needed to connect it all together.

There are many extension points that you can use in your customizations including full drag and drop support for Community Hub file uploads.
