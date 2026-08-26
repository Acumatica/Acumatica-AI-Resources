# Customization Web API: delete {#_9209661b-07a0-4529-b7bd-9c67ae3499a6 .concept}

If a customization project is not currently published, you can delete the project in an Acumatica ERP instance through the web API.

When a customization project is deleted, the platform deletes from the database the project data and the data of the project items. The platform does not delete the files and the objects that were added to the projects from the database, such as site map nodes, reports, user access rights, and integration scenarios.

## HTTP Method and URL { .section}

To delete a customization project in an Acumatica ERP instance, you use the `POST` HTTP method and the following URL.

```
POST http(s)://<Acumatica ERP Instance URL>/CustomizationApi/delete
```

You replace *&lt;Acumatica ERP instance URL&gt;* with the URL of your Acumatica ERP instance.

## Request Body { .section}

In the request body in JSON format, you can use the field described in the following table.

|Field|Description|
|-----|-----------|
|`projectName`|Required. The name of the customization project to be removed.|

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

The following request shows an example of removal of the *PhoneRepairShop* customization project.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
POST /<Acumatica ERP Instance URL>/CustomizationApi/delete HTTP/1.1
Host: localhost
Accept: application/json
Content-Type: application/json
Content-Length: 42
{
    "projectName": "PhoneRepairShop"
}
```

If the response is *200 OK*, it contains the body, which is shown in the following example.

```
{
    "log": [
        {
            "timestamp": "2022-08-06T19:55:01.0832449Z",
            "logType": "information",
            "message": "Delete project: PhoneRepairShop"
        }
    ]
}
```

**Parent topic:**[Managing Customization Projects by Using the Web API](../CustomizationPlatform/CustomizationProjects_WebAPI_Mapref.md)

