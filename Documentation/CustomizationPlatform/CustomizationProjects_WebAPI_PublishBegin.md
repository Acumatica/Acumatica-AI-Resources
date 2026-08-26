# Customization Web API: publishBegin {#_ead25ada-37bd-45a6-9523-4c1bb597edf6 .concept}

You can initiate the publication of any number of customization projects in an Acumatica ERP instance.

When you publish a customization project, the system applies the changes in the project to the website. After the customization project has been published, users see Acumatica ERP with the modifications of the project. The changes apply to the website of Acumatica ERP and therefore affect all tenants in the system \(see [Publication of Customization Projects in a Multitenant Site](../Shared/../CustomizationPlatform/CG_Platform_Project_MultiCompany.md) for details\).

For details about the publishing of customization projects, see [Publishing Customization Projects](CG_GL_Projects_Publishing.md).

## HTTP Method and URL { .section}

To initiate the publication of a customization project in an Acumatica ERP instance, you use the `POST` HTTP method and the following URL.

```
POST http(s)://<Acumatica ERP Instance URL>/CustomizationApi/publishBegin
```

You replace *&lt;Acumatica ERP instance URL&gt;* with the URL of your Acumatica ERP instance.

## Request Body { .section}

In the request body in JSON format, you can use the fields listed in the following table.

|Field|Description|
|-----|-----------|
|`isMergeWithExistingPackages`|A Boolean value that indicates \(if it is set to *true*\) that the currently published projects should be merged with the customization projects listed in the `projectNames` field and the result of the merge should be published. If the value is *false*, only the projects specified in the `projectNames` field will be the published projects.|
|`isOnlyValidation`|A Boolean value that indicates \(if it is set to *true*\) that only validation of the customization project should be performed.|
|`isOnlyDbUpdates`|A Boolean value that indicates \(if it is set to *true*\) that the changes should be applied only to the database. The field corresponds to the **Apply Changes Only to Database \(Skip Website Update\)** check box in the **Publish to Multiple Tenants** dialog box, which appears when you click **Publish to Multiple Tenants** on the form toolbar of the [Customization Projects](../UserGuide/SM_20_45_05.md) \(SM204505\) form.|
|`isReplayPreviouslyExecutedScripts`|A Boolean value that indicates \(if it is set to *true*\) that the database scripts that were previously applied should be executed again. The field corresponds to the **Execute All Database Scripts \(Including Previously Executed\)** check box in the **Publish to Multiple Tenants** dialog box, which appears when you click **Publish to Multiple Tenants** on the form toolbar of the [Customization Projects](../UserGuide/SM_20_45_05.md) \(SM204505\) form.|
|`projectNames`|Required. An array of the names of the customization projects that need to be published.|
|`tenantMode`|The tenant for which the projects should be published. The field can have one of the following values:-   *Current*: The customization projects should be published for the tenant to which the user is currently signed in.
-   *All*: The customization projects should be published for all tenants.
-   *List*: The customization projects should be published for the tenants specified in the `tenantLoginNames` field.

|
|`tenantLoginNames`|The list of tenants for which the customization projects should be published. This field is used only if the `tenantMode` field has the *List* value.|

## Response Body { .section}

The following table describes the field that the system returns in the body of the response.

|Field|Description|
|-----|-----------|
|`log`|An array of log records. Each element of the array has the following fields:

-   `timestamp`: The date and time when the information about the performed operation was added to the log
-   `logType`: The type of the log message, which can be one of the following:
    -   *trace*
    -   *information*
    -   *warning*
    -   *error*
-   `message`: The log message

|

## Example { .section}

The following request shows an example of the publishing of the *PhoneRepairShop* customization project in the current tenant.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
POST /<Acumatica ERP Instance URL>/CustomizationApi/PublishBegin HTTP/1.1
Host: localhost
Content-Type: application/json
Content-Length: 250

{
    "isMergeWithExistingPackages": false,
    "isOnlyValidation": false,
    "isOnlyDbUpdates": false,
    "isReplayPreviouslyExecutedScripts": false,
    "projectNames": [ "PhoneRepairShop" ],
    "tenantMode": "Current"
}
```

If the response is *200 OK*, it contains the body, which is shown in the following example.

```
{
    "log": [
        {
            "timestamp": "2022-08-09T13:58:12.7753165Z",
            "logType": "information",
            "message": "Publishing has started."
        }
    ]
}
```

## Usage Notes { .section}

The publication of a customization project through the web API is implemented asynchronously. You should publish a customization project as follows:

1.  You start publication by calling the PublishBegin method.

    Once the publication has started, a logical lock occurs in the database that prevents multiple publications from running simultaneously on the same database.

2.  As soon as you get a successful response, you start calling the PublishEnd method until it returns `"isCompleted": true`.

    To check whether the publishing has been completed successfully, you can check for `"isFailed": false` in the response to the PublishEnd method.


The calling of the PublishEnd method initiates the execution of customization plug-ins. Therefore, without a call to the PublishEnd method, the publication cannot be completed.

**Parent topic:**[Managing Customization Projects by Using the Web API](../CustomizationPlatform/CustomizationProjects_WebAPI_Mapref.md)

