# Customization Web API: General Information

By using the web API to work with customization projects, you can automate the processes that are performed on the [Customization Projects](../UserGuide/SM_20_45_05.md) \(SM204505\) form, such as importing a customization project, publishing customization projects, or unpublishing customization projects.

## Learning Objectives

In this chapter, you will learn how to do the following by using the web API:

-   Import a customization project
-   Delete a customization project
-   Publish specified customization projects
-   Check whether the publication of customization projects has completed
-   Unpublish all customization projects
-   Retrieve the list of published customization projects
-   Obtain the contents of a customization project

## Applicable Scenarios

You use the web API if you need to automate operations with customization projects.

## Authorization

Before you can use the web API, you need to authorize requests to the Acumatica ERP instance. You can authorize requests by using an OAuth 2.0 access token or a sign-in session.

To use OAuth 2.0 authorization, register a connected application on the [Connected Applications](../UserGuide/SM_30_30_10.md) \(SM303010\) form and obtain an access token with the `api` scope. For details, see [Authorizing Client Applications to Work with Acumatica ERP](../IntegrationDevelopmentGuide/IS__mng_Authorizing_with_OAuth2.md). To use a sign-in session, see [Sign In to the Service](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic_Login.md).

**Attention:**

-   The user account associated with the access token or sign-in session should be assigned the *Customizer* role in the instance of Acumatica ERP, as described in [To Assign the Customizer Role to a User Account](CG_GL_Stages_Role.md).
-   The direct sign-in to Acumatica ERP with a username and password is going to be discontinued in a future version. We recommend that applications use OAuth 2.0 authorization.

## Base URL

To manage the publication of customization projects, you use the following base URL.

```
http(s)://<Acumatica ERP Instance URL>/CustomizationApi/
```

You replace *&lt;Acumatica ERP instance URL&gt;* with the URL of your Acumatica ERP instance. For example, *http://localhost/AcumaticaDB/CustomizationApi/* is the base URL for a local Acumatica ERP instance with the name *AcumaticaDB*.

**Tip:** You can use the web API to publish a customization project to Acumatica ERP or to the Self-Service Portal.

## Available Methods

To manage customization projects by using the web API, you can use the methods described in the following topics:

-   [Customization Web API: delete](CustomizationProjects_WebAPI_Delete.md)
-   [Customization Web API: getPublished](CustomizationProjects_WebAPI_GetPublished.md)
-   [Customization Web API: getProject](CustomizationProjects_WebAPI_GetProject.md)
-   [Customization Web API: import](CustomizationProjects_WebAPI_Import.md)
-   [Customization Web API: publishBegin](CustomizationProjects_WebAPI_PublishBegin.md)
-   [Customization Web API: publishEnd](CustomizationProjects_WebAPI_PublishEnd.md)
-   [Customization Web API: unpublishAll](CustomizationProjects_WebAPI_UnpublishAll.md)

## Request Headers

You do not need to specify any headers to provide parameters to the methods of the API. However, you need to specify the following standard headers in the request.

<table id="_40bf8194-174d-41e1-9ba1-dce56cf597b4"><thead><tr><th>

Header

</th><th>

Description

</th></tr></thead><tbody><tr><td>

Accept

</td><td>

Specifies the format of the response body, which can be one of the following:-   application/json
-   text/json

</td></tr><tr><td>

Content-Type

</td><td>

Specifies the format of the request body, which can be one of the following:-   application/json
-   text/json

</td></tr><tr><td>

Authorization

</td><td>

Required if the request is authorized with OAuth 2.0. Specifies the access token in the `Bearer <access token>` format.

</td></tr></tbody>
</table>

## Response Status Codes

The following table lists the HTTP status codes that the system returns in a response.

<table id="_f15ce002-291b-4495-b71b-adfe913ddf46"><thead><tr><th>

Code

</th><th>

Description

</th></tr></thead><tbody><tr><td>

*200*

</td><td>

The request has been completed successfully.

</td></tr><tr><td>

*400*

</td><td>

The processing of the request has failed.

</td></tr><tr><td>

*401*

</td><td>

The user is not signed in to the system.

</td></tr><tr><td>

*403*

</td><td>

The user has insufficient rights to access the [Customization Projects](../Shared/../UserGuide/SM_20_45_05.md) \(SM204505\) form.

</td></tr><tr><td>

*500*

</td><td>

An internal server error has occurred.

</td></tr></tbody>
</table>

**Parent topic:**[Managing Customization Projects by Using the Web API](../CustomizationPlatform/CustomizationProjects_WebAPI_Mapref.md)

