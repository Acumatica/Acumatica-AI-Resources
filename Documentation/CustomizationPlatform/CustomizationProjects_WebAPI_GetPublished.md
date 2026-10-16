# Customization Web API: getPublished

You can obtain the list of customization projects that are currently published in an Acumatica ERP instance and the list of customization items in these projects.

## HTTP Method and URL

To obtain the list of customization projects that are currently published in an Acumatica ERP instance, you use the `POST` HTTP method and the following URL.

```
POST http(s)://<Acumatica ERP Instance URL>/CustomizationApi/getPublished
```

You replace *&lt;Acumatica ERP instance URL&gt;* with the URL of your Acumatica ERP instance.

## Request Body

You do not need to pass any data in the request body.

## Response Body

The following table lists the fields that the system returns in the body of the response.

<table id="_e6d1b0ab-812e-411c-8440-4a0bb60f8edb"><thead><tr><th>

Field

</th><th>

Description

</th></tr></thead><tbody><tr><td>

`projects`

</td><td>

The names of the customization projects that are published in the system.

</td></tr><tr><td>

`items`

</td><td>

The information about the customization items from all published projects, which contains the following fields:-   `key`: The identifier of the customization item
-   `screenId`: The screen ID for generic inquiries and items that customize Acumatica ERP forms
-   `type`: The type of the customization item

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

The following request shows an example of the retrieval of the list of currently published customization projects.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
POST /<Acumatica ERP Instance URL>/CustomizationApi/getPublished HTTP/1.1
Host: localhost
Authorization: Bearer <access token>
Accept: application/json
Content-Type: application/json
```

If the response is *200 OK*, it contains the body, which is shown in the following example.

```
{
    "projects": [
        {
            "name": "VisualWorkflow"
        },
        {
            "name": "PhoneRepairShop"
        }
    ],
    "items": [
        {
            "key": "~/pages/po/po302000.aspx",
            "screenId": "PO302000",
            "type": "Page"
        },
        {
            "key": "~/pages/rs/rs201000.aspx",
            "screenId": "RS201000",
            "type": "Page"
        },
        ...
    ],
    "log": []
}
```

**Parent topic:**[Managing Customization Projects by Using the Web API](../CustomizationPlatform/CustomizationProjects_WebAPI_Mapref.md)

