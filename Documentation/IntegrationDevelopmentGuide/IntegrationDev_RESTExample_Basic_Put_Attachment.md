# Attach a File to a Record {#_591def3d-5fe5-42c1-bb35-cfe5b4c77f6f .concept}

When you need to attach a file to a record by using the contract-based REST API, you access the needed URL with the `PUT` HTTP method and pass the file in the request body. See the following sections for details on the request and the response.

## HTTP Method and URL { .section}

If you need to attach a file to a top-level record or a detail record of any nesting level in Acumatica ERP, you use the `PUT` HTTP method.

To get the URL for attaching a file to a particular record, you should obtain the record from Acumatica ERP; in the returned JSON representation of the record, you find the value of the `_links/files:put` field. For information on how to retrieve a record from Acumatica ERP, see [Retrieve a Record by Key Fields](IntegrationDev_RESTExample_Basic_Get_Record_by_Key.md) and [Retrieve a Record by ID](IntegrationDev_RESTExample_Basic_Get_Record_by_ID.md). The value of the `_links/files:put` field for the desired record is a part of the URL template that must be used in a request for attaching a file.

For example, suppose that you have retrieved the stock item record from a local Acumatica ERP instance with the name *AcumaticaDB*. This record contains the following `_links/files:put` field value: */AcumaticaDB/entity/Default/25.200.001/files/PX.Objects.IN.InventoryItemMaint/Item/cae53ce0-1614-e511-9b82-c86000dddf0b/\{filename\}*. If you want to attach the `file.dat` file to this record, you use the following HTTP method and URL.

```
PUT http://AcumaticaDB/entity/Default/25.200.001/files/PX.Objects.IN.InventoryItemMaint/Item/cae53ce0-1614-e511-9b82-c86000dddf0b/file.dat
```

**Tip:** For backward compatibility, Acumatica ERP also maintains an old way to attach a file to a top-level record. This way involves using the `PUT` HTTP method and the following URL: `http://<Base endpoint URL>/<Top-level entity>/<Key value 1>/<Key value 2>/files/<File name>`. You address the record to which you are going to attach the *&lt;File name&gt;* file by using the *&lt;Key value 1&gt;* and *&lt;Key value 2&gt;* values of its key fields.

## Request Headers { .section}

You can specify the following headers in the request.

|Header|Description|
|------|-----------|
|Accept|Specifies the format of the response body, which should be application/json.|
|Content-Type|Specifies the format of the request body, which should be application/octet-stream.|
|Cookie|Specifies the cookies that you have received during the sing-in to Acumatica ERP with the login method. For details on this method, see [Sign In to the Service](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic_Login.md).

 You must use the Cookie header in any of the following cases:

 -   You have used the login method to sign in to Acumatica ERP.
-   You are using the OAuth 2.0 or OpenID Connect \(OIDC\) authorization with the api:concurrent\_access scope and need to manage session IDs through cookies.

|
|PX-CbFileComment|Specifies a comment for the attached file. A user can see this comment in the **Comment** column of the **Files** dialog box. **Tip:**

The dialog box opens in any of the following situations:

-   The user clicks **Files** in the title bar of an Acumatica ERP form that is open to view a record with at least one attached file.
-   The user clicks Files \(![](Images/button_Files.png)\) at the beginning of a detail row in the table.

|

## Request Body { .section}

In the request body, you pass the file to be attached in binary format.

## Response Status Codes { .section}

The following table lists the HTTP status codes that the system returns for a request that attaches a file to a record.

|Code|Description|
|----|-----------|
|*204*|The request has been completed successfully. The file is attached. The `Location` header of the response contains the URL that you can use to retrieve the file from the system.|
|*401*|The user is not signed in to the system.|
|*403*|The user has insufficient rights to access the Acumatica ERP form that corresponds to the API entity.|
|*429*|The number of requests has exceeded the limit imposed by the license \(see [License Restrictions for API Users](../Shared/../IntegrationDevelopmentGuide/IS__con_License_Restrictions_API_Users.md)\).|
|*500*|An internal server error has occurred.|

## Example { .section}

**Tip:** In the request examples below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

The following request shows an example of the retrieval of the *EJECTOR03* stock item.

```
GET /entity/Default/25.200.001/StockItem/EJECTOR03?
    $select=InventoryID HTTP/1.1
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
    "_links": {
        "self": "/<Acumatica ERP instance name>/entity/Default/25.200.001/
StockItem/a0f8594a-7de2-e811-b816-00155d408001",
        "files:put": "/<Acumatica ERP instance name>/entity/Default/25.200.001/
files/PX.Objects.IN.InventoryItemMaint/Item/a0f8594a-7de2-e811-b816-00155d408001/{filename}"
    }
}
```

The following request attaches the `T2MCRO.jpg` file to the *EJECTOR03* stock item and specifies *Test comment* as the comment for the file.

```
PUT /entity/Default/25.200.001/files
    /PX.Objects.IN.InventoryItemMaint/Item
    /a0f8594a-7de2-e811-b816-00155d408001/T2MCRO.jpg HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/octet-stream
PX-CbFileComment: Test comment

"<file contents here>"
```

## Usage Notes { .section}

The following usage details apply to comments that you add to a file as described in this topic:

-   If a new version of the file is added without a comment, the **Comment** column in the **Files** dialog box becomes empty for the file.
-   If multiple PX-CbFileComment headers are specified in the request, the **Comment** column contains the comments from all headers. The comments are separated with a comma.
-   A comment for the file cannot exceed 500 characters.

**Parent topic:**[Basic Requests](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic.md)

