# Customization Web API: getProject

You can retrieve the contents of a customization project from the database of an Acumatica ERP instance. These capabilities may be useful if you need to automate the retrieval of a customization package from one site and its deployment on another site, such as if you need to obtain the package from the development environment and test it in the testing environment.

## HTTP Method and URL

To retrieve the content of a customization project from the database of an Acumatica ERP instance, you use the `POST` HTTP method and the following URL.

```
POST http(s)://<Acumatica ERP Instance URL>/CustomizationApi/getProject
```

You replace *&lt;Acumatica ERP instance URL&gt;* with the URL of your Acumatica ERP instance.

## Request Body

In the request body in JSON format, you can use the fields listed in the following table.

|Field|Description|
|-----|-----------|
|`IsAutoResolveConflicts`|A Boolean value that indicates \(if it is set to *true*\) that the system should automatically update the customization project in the database with the changes from the file system if any files of the customization project have been modified in the file system. The updated package is returned in the response as a ZIP file in Base64 encoding. If the value is *false*, the system does not update the customization project with any changes in the file system and returns the customization project content as it is in the database in the moment of the request.|
|`projectName`|Required. The name of the customization project whose contents you need to obtain.|

## Response Body

The following table lists the fields that the system returns in the body of the response.

<table id="_e6d1b0ab-812e-411c-8440-4a0bb60f8edb"><thead><tr><th>

Field

</th><th>

Description

</th></tr></thead><tbody><tr><td>

`ProjectContentBase64`

</td><td>

The customization package in Base64 format.

</td></tr><tr><td>

`HasConflicts`

</td><td>

A Boolean value that indicates \(if it is set to *true*\) that the files of the customization project were modified in the file system before the customization package was obtained. The system returned the contents of the customization project with the changes from the file system or without them, depending on the value of the `IsAutoResolveConflicts` field.

</td></tr><tr><td>

`log`

</td><td>

An array of log records. Each element of the array has the following fields:

-   `timestamp`: The date and time when the information about the performed operation was added to the log
-   `logType`: The type of the log message, which can be one of the following:
    -   *trace*
    -   *information*
    -   *warning*
    -   *error*
-   `message`: The log message

</td></tr></tbody>
</table>

## Example

The following request shows an example of the retrieval of the contents of the *PhoneRepairShop* customization project with all the changes that are available in the file system.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
POST /<Acumatica ERP Instance URL>/CustomizationApi/GetProject HTTP/1.1
Host: localhost
Authorization: Bearer <access token>
Accept: application/json
Content-Type: application/json
Content-Length: 79

{
    "IsAutoResolveConflicts": true,
    "projectName": "PhoneRepairShop"
}
```

If the response is *200 OK*, it contains the body, which is shown in the following example.

```
{
    "projectContentBase64": "UEsDBBQAAAAIAApRnlWbF8u...",
    "hasConflicts": false,
    "log": []
}
```

**Parent topic:**[Managing Customization Projects by Using the Web API](../CustomizationPlatform/CustomizationProjects_WebAPI_Mapref.md)

