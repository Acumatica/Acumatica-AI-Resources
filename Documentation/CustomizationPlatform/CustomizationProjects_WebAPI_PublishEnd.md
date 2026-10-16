# Customization Web API: publishEnd

You can check whether the publishing of customization projects has been completed in an Acumatica ERP instance.

## HTTP Method and URL

To check whether the publishing of customization projects has been completed in an Acumatica ERP instance, you use the `POST` HTTP method and the following URL.

```
POST http(s)://<Acumatica ERP Instance URL>/CustomizationApi/publishEnd
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

`isCompleted`

</td><td>

A Boolean value that indicates \(if it is set to *true*\) that the publishing has been completed.

</td></tr><tr><td>

`isFailed`

</td><td>

A Boolean value that indicates \(if it is set to *true*\) that the publishing has been completed with at least one error.

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

The following request shows an example of a check for the result of the publication of customization projects.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
POST /<Acumatica ERP Instance URL>/CustomizationApi/PublishEnd HTTP/1.1
Host: localhost
Authorization: Bearer <access token>
Content-Type: application/json
```

If the response is *200 OK*, it contains the body, which is shown in the following example. In this example, the publishing has completed \(as the isCompleted field indicates\) and it has completed successfully \(as the isFailed field indicates\).

```
{
    "isCompleted": true,
    "isFailed": false,
    "log": [
        {
            "timestamp": "2023-01-04T14:21:31.827",
            "logType": "information",
            "message": "Copying the website C:\\AcumaticaERP\\Customization\\PhoneRepairShop\\PhoneRepairShopValidation\\PhoneRepairShopWebsite"
        },
        {
            "timestamp": "2023-01-04T14:21:31.83",
            "logType": "information",
            "message": "Patching the file C:\\AcumaticaERP\\Customization\\PhoneRepairShop\\PhoneRepairShopValidation\\PhoneRepairShopWebsite\\CstPublished\\Pages_RS\\RS201000.aspx"
        },
        ...
    ]
}
```

## Usage Notes

The publication of a customization project through the web API is implemented asynchronously. You should publish a customization project as follows:

1.  You start publication by calling the PublishBegin method.

    Once the publication has started, a logical lock occurs in the database that prevents multiple publications from running simultaneously on the same database.

2.  As soon as you get a successful response, you start calling the PublishEnd method until it returns `"isCompleted": true`.

    To check whether the publishing has been completed successfully, you can check for `"isFailed": false` in the response to the PublishEnd method.


The calling of the PublishEnd method initiates the execution of customization plug-ins. Therefore, without a call to the PublishEnd method, the publication cannot be completed.

**Parent topic:**[Managing Customization Projects by Using the Web API](../CustomizationPlatform/CustomizationProjects_WebAPI_Mapref.md)

