# Customization Web API: import {#_eb79f77e-f49c-4dc3-b230-84cb41558b94 .concept}

You can import a customization package \(that is, a ZIP archive\) to an Acumatica ERP instance.

During the import, the platform uploads the customization package, creates the corresponding customization project, and saves the project in the database. As a result, the new customization project appears in the list on the [Customization Projects](../Shared/../UserGuide/SM_20_45_05.md) \(SM204505\) form. After the import is completed, you can access the project data and manage the project.

## HTTP Method and URL { .section}

To import a customization package to an Acumatica ERP instance, you use the `POST` HTTP method and the following URL.

```
POST http()://<Acumatica ERP Instance URL>/CustomizationApi/import
```

You replace *&lt;Acumatica ERP instance URL&gt;* with the URL of your Acumatica ERP instance.

## Request Body { .section}

In the request body in JSON format, you can use the fields listed in the following table.

|Field|Description|
|-----|-----------|
|`projectLevel`|The level of the customization project that is used to resolve conflicts that can arise if multiple modifications of the same items of the website are merged.|
|`isReplaceIfExists`|A Boolean value that indicates \(if it is set to *true*\) that if a project with the same name exists, it should be removed.|
|`projectName`|Required. The name of the customization project.|
|`projectDescription`|The description of the customization project.|
|`projectContentBase64`|The contents of the customization package in Base64 format. If you do not specify the value of this field, the system will try to remove the specified customization project.|

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

The following request shows an example of the importing of the *PhoneRepairShop* customization project.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
POST /<Acumatica ERP Instance URL>/CustomizationApi/import HTTP/1.1
Host: localhost
Content-Type: application/json
{
    "projectLevel": 1,
    "isReplaceIfExists": true,
    "projectName": "PhoneRepairShop",
    "projectDescription": "Customization project for the Smart Fix company",
    "projectContentBase64": "UEsDBBQAAAAIAEymBlVg2QXNohEAANxoA..."
}
```

If the response is *200 OK*, it contains the body, which is shown in the following example.

```
{
    "log": [
        {
            "timestamp": "2022-08-06T17:59:55.6658507Z",
            "logType": "information",
            "message": "Create new project: PhoneRepairShop"
        }
    ]
}
```

**Parent topic:**[Managing Customization Projects by Using the Web API](../CustomizationPlatform/CustomizationProjects_WebAPI_Mapref.md)

