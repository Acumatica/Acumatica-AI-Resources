# Retrieve a File Attached to a Record

To retrieve a file that is attached to a record from Acumatica ERP by using the REST API, you access the URL address of the file with the `GET` HTTP method. See the following sections for details on the request and the response.

## HTTP Method and URL

If you need to obtain a file attached to a record, you use the `GET` HTTP method and the following URL.

```
GET http://<Base endpoint URL>/files/<File identifier>
```

The URL has the following components:

-   *&lt;Base endpoint URL&gt;* is the URL of the contract-based endpoint through which you are going to work with Acumatica ERP. This URL has the following format: *http://&lt;Acumatica ERP instance URL&gt;/entity/&lt;Endpoint name&gt;/&lt;Endpoint version&gt;/*.
-   *&lt;File identifier&gt;* is the internal identifier of the file in the system.

To get this URL for a particular file attached to a record, you should obtain the record from Acumatica ERP and, in the returned JSON representation of the record, find the value of the href property of the needed file in the files array. For information on how to retrieve a record from Acumatica ERP, see [Retrieve a Record by Key Fields](IntegrationDev_RESTExample_Basic_Get_Record_by_Key.md) and [Retrieve a Record by ID](IntegrationDev_RESTExample_Basic_Get_Record_by_ID.md).

For example, suppose that you retrieved the stock item record that contains the following files array from a local Acumatica ERP instance with the name *AcumaticaDB*.

```
{
  ...,
  "files":[
    {
      "id":"9be45eb7-f97d-400b-96a5-1c4cf82faa96",
      "filename":"Stock Items (AAMACHINE1)\\T2MCRO.jpg",
      "href":
"/AcumaticaDB/entity/Default/26.200.001/files/9be45eb7-f97d-400b-96a5-1c4cf82faa96"
    }
  ]
}
```

You should use the following URL to retrieve the `T2MCRO.jpg` file attached to the stock item record: *http://localhost/AcumaticaDB/entity/Default/26.200.001/files/9be45eb7-f97d-400b-96a5-1c4cf82faa96*.

## Parameters

You use no parameters when you retrieve a file attached to a record.

## Request Headers

<table id="_40bf8194-174d-41e1-9ba1-dce56cf597b4"><thead><tr><th>

Header

</th><th>

Description

</th></tr></thead><tbody><tr><td>

Accept

</td><td>

Specifies the format of the response body, which should be application/json.

</td></tr><tr><td>

Cookie

</td><td>

Specifies the cookies that you’ve received during the sign-in to Acumatica ERP with the login method. For details on this method, see [Sign In to the Service](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic_Login.md).

 You must use the Cookie header if:

 -   You’ve used the login method to sign in to Acumatica ERP.
-   You’re using the OAuth 2.0 or OpenID Connect \(OIDC\) authorization with the api:concurrent\_access scope and need to manage session IDs through cookies.

</td></tr></tbody>
</table>

## Response Status Codes

The following table lists the HTTP status codes that the system returns for a request that retrieves a file attached to a record.

<table id="_970da984-282e-41b1-b56c-841acaa6b024"><thead><tr><th>

Code

</th><th>

Description

</th></tr></thead><tbody><tr><td>

*200*

</td><td>

The request has been completed successfully. The response contains the requested file.

</td></tr><tr><td>

*401*

</td><td>

The user is not signed in to the system.

</td></tr><tr><td>

*403*

</td><td>

The user has insufficient rights to access the Acumatica ERP form that corresponds to the API entity.

</td></tr><tr><td>

*429*

</td><td>

The number of requests has exceeded the limit imposed by the license \(see [License Restrictions for API Sessions and Requests](../Shared/../IntegrationDevelopmentGuide/IS__con_License_Restrictions_API_Users.md)\).

</td></tr><tr><td>

*500*

</td><td>

An internal server error has occurred.

</td></tr></tbody>
</table>

## Example

**Tip:** In the request examples below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

The following request shows an example of the retrieval of the list of files attached to the *JUICER20C* stock item.

```
GET /entity/Default/26.200.001/StockItem/JUICER20C?
    $select=InventoryID,files&$expand=files HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json
```

Suppose that the request above returns the following response body.

```
{
    "id": "a0f8594a-7de2-e811-b816-00155d408001",
    "rowNumber": 1,
    "note": {
        "value": ""
    },
    "InventoryID": {
        "value": "EJECTOR03"
    },
    "custom": {},
    "files": [
        {
            "id": "0a8ac74e-53d3-4f13-ba02-dbbf419da119",
            "filename": "Stock Items (EJECTOR03   )\\T2MCRO.jpg",
            "href": "[/<Acumatica ERP instance name>]/entity/Default/26.200.001/
                 files/dbcf82e7-660a-4d56-9b64-1cb654660ddb"
        }
    ]
}
{
    "id": "eb01ae69-7ee2-e811-b816-00155d408001",
    "rowNumber": 1,
    "note": {
        "value": ""
    },
    "InventoryID": {
        "value": "JUICER20C"
    },
    "custom": {},
    "_links": {
        "self": "/<Acumatica ERP instance name>/entity/Default/26.200.001/
StockItem/eb01ae69-7ee2-e811-b816-00155d408001",
        "files:put": "/<Acumatica ERP instance name>/entity/Default/26.200.001/
files/PX.Objects.IN.InventoryItemMaint/Item/eb01ae69-7ee2-e811-b816-00155d408001/{filename}"
    },
    "files": [
        {
            "id": "e77c0c80-2296-4ef9-9588-877692933f31",
            "filename": "Stock Items (JUICER20C   )\\commercial_citrus_juicer.jpg",
            "href": "/<Acumatica ERP instance name>/entity/Default/26.200.001/
files/e77c0c80-2296-4ef9-9588-877692933f31"
        }
    ]
}
```

The following request retrieves the `commercial_citrus_juicer.jpg` file attached to the *JUICER20C* stock item by the ID of the file.

```
GET /entity/Default/26.200.001/files
    /e77c0c80-2296-4ef9-9588-877692933f31 HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/octet-stream
Content-Type: application/json
```

**Parent topic:**[Basic Requests](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic.md)

