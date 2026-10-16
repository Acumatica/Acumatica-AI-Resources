# Customization Web API: unpublishAll

You can unpublish all customization projects that are currently published in an Acumatica ERP instance.

When you unpublish all customization projects, the system reverses the changes introduced by the customization projects, as described in [Project Unpublishing: General Information](CustomizationProjects_UnpublishingProjects_GeneralInfo.md).

## HTTP Method and URL

To unpublish projects that are currently published in an Acumatica ERP instance, you use the `POST` HTTP method and the following URL.

```
POST http(s)://<Acumatica ERP Instance URL>/CustomizationApi/unpublishAll
```

You replace *&lt;Acumatica ERP instance URL&gt;* with the URL of your Acumatica ERP instance.

## Request Body

In the request body in JSON format, you can use the fields listed in the following table.

<table id="_d1652ce3-f09a-4aae-a59b-fb8f661ea071"><thead><tr><th>

Field

</th><th>

Description

</th></tr></thead><tbody><tr><td>

`tenantMode`

</td><td>

Required. The tenant for which the projects should be unpublished. The field can have one of the following values:-   *Current*: The customization projects should be unpublished for the tenant where the user is currently signed in.
-   *All*: The customization projects should be unpublished for all tenants.
-   *List*: The customization projects should be unpublished for the tenants specified in the `tenantLoginNames` field.

</td></tr><tr><td>

`tenantLoginNames`

</td><td>

An array of tenants for which the customization projects should be unpublished. This field is used only if `tenantMode` is set to *List*.

</td></tr></tbody>
</table>

## Response Body

The following table describes the field that the system returns in the body of the response.

<table id="_e6d1b0ab-812e-411c-8440-4a0bb60f8edb"><thead><tr><th>

Field

</th><th>

Description

</th></tr></thead><tbody><tr><td>

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

The following request shows an example of the unpublishing of customization projects in all tenants.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
POST /<Acumatica ERP Instance URL>/CustomizationApi/unpublishAll HTTP/1.1
Host: localhost
Authorization: Bearer <access token>
Accept: application/json
Content-Type: application/json
Content-Length: 29
{
    "tenantMode": "All"
}
```

If the response is *200 OK*, it contains the body, which is shown in the following example.

```
{
    "log": [
        {
            "timestamp": "2023-01-04T14:35:55.1162425Z",
            "logType": "information",
            "message": "Unpublish MyTenant"
        },
        {
            "timestamp": "2023-01-04T14:35:55.1432004Z",
            "logType": "information",
            "message": "Cleaning up the database"
        }
    ]
}
```

**Parent topic:**[Managing Customization Projects by Using the Web API](../CustomizationPlatform/CustomizationProjects_WebAPI_Mapref.md)

