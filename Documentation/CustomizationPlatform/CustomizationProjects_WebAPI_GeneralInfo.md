# Customization Web API: General Information {#_4c60d484-57c9-47a1-aeea-378b9ba98720 .concept}

By using the web API to work with customization projects, you can automate the processes that are performed on the [Customization Projects](../UserGuide/SM_20_45_05.md) \(SM204505\) form, such as importing a customization project, publishing customization projects, or unpublishing customization projects.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following by using the web API:

-   Import a customization project
-   Delete a customization project
-   Publish specified customization projects
-   Check whether the publication of customization projects has completed
-   Unpublish all customization projects
-   Retrieve the list of published customization projects
-   Obtain the contents of a customization project

## Applicable Scenarios { .section}

You use the web API if you need to automate operations with customization projects.

## Sign-In to the Service { .section}

Before you can use the web API for manipulation with customization projects, you need to sign in to the instance of Acumatica ERP, as described in [Sign In to the Service](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic_Login.md).

**Attention:**

-   The user account that you use to sign in to the service should be assigned the *Customizer* role in the instance of Acumatica ERP, as described in [To Assign the Customizer Role to a User Account](CG_GL_Stages_Role.md).
-   OAuth 2.0 authorization cannot be used with the web API for the management of customization projects.

## Base URL { .section}

To manage the publication of customization projects, you use the following base URL.

```
http(s)://<Acumatica ERP Instance URL>/CustomizationApi/
```

You replace *&lt;Acumatica ERP instance URL&gt;* with the URL of your Acumatica ERP instance. For example, *http://localhost/AcumaticaDB/CustomizationApi/* is the base URL for a local Acumatica ERP instance with the name *AcumaticaDB*.

**Tip:** You can use the web API to publish a customization project to Acumatica ERP or to the Self-Service Portal, depending on where the sign-in has been performed before the start of the publication.

## Available Methods {#section_vv2_1y4_y4b .section}

To manage customization projects by using the web API, you can use the methods described in the following topics:

-   [Customization Web API: delete](CustomizationProjects_WebAPI_Delete.md)
-   [Customization Web API: getPublished](CustomizationProjects_WebAPI_GetPublished.md)
-   [Customization Web API: getProject](CustomizationProjects_WebAPI_GetProject.md)
-   [Customization Web API: import](CustomizationProjects_WebAPI_Import.md)
-   [Customization Web API: publishBegin](CustomizationProjects_WebAPI_PublishBegin.md)
-   [Customization Web API: publishEnd](CustomizationProjects_WebAPI_PublishEnd.md)
-   [Customization Web API: unpublishAll](CustomizationProjects_WebAPI_UnpublishAll.md)

## Request Headers { .section}

You do not need to specify any headers to provide parameters to the methods of the API. However, you need to specify the following standard headers in the request.

|Header|Description|
|------|-----------|
|Accept|Specifies the format of the response body, which can be one of the following:-   application/json
-   text/json

|
|Content-Type|Specifies the format of the request body, which can be one of the following:-   application/json
-   text/json

|

## Response Status Codes { .section}

The following table lists the HTTP status codes that the system returns in a response.

|Code|Description|
|----|-----------|
|*200*|The request has been completed successfully.|
|*400*|The processing of the request has failed.|
|*401*|The user is not signed in to the system.|
|*403*|The user has insufficient rights to access the [Customization Projects](../Shared/../UserGuide/SM_20_45_05.md) \(SM204505\) form.|
|*500*|An internal server error has occurred.|

**Parent topic:**[Managing Customization Projects by Using the Web API](../CustomizationPlatform/CustomizationProjects_WebAPI_Mapref.md)

