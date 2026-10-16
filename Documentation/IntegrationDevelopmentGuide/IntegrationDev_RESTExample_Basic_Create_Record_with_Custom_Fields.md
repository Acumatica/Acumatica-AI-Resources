# Create a Record with Custom Fields

In a customization project, you can add custom fields to Acumatica ERP forms. You can also add user-defined fields to Acumatica ERP forms and include them in a customization project. \(For details about user-defined fields, see [User-Defined Fields](../UserGuide/CS__con_User_Defined_Fields.md#).\)

To create a record with custom fields by using the contract-based REST API, you access the needed URL with the PUT HTTP method. For more information on the creation of records, see [Create a Record](IntegrationDev_RESTExample_Basic_Create_Record.md).

## HTTP Method and URL

To create a record in Acumatica ERP, you use the `PUT` HTTP method and the following URL.

```
PUT http://<Base endpoint URL>/<Top-level entity>
```

The URL has the following components:

-   *&lt;Base endpoint URL&gt;* is the URL of the contract-based endpoint through which you are going to work with Acumatica ERP. This URL has the following format: *http://&lt;Acumatica ERP instance URL&gt;/entity/&lt;Endpoint name&gt;/&lt;Endpoint version&gt;/*.
-   *&lt;Top-level entity&gt;* is the name of the entity for which you are going to create a record.

For example, suppose that you want to create a stock item record in a local Acumatica ERP instance with the name *AcumaticaDB* by using the system endpoint with the name *Default* and Version 26.200.001. You should use the following URL to create a record: *http://localhost/AcumaticaDB/entity/Default/26.200.001/StockItem*.

## Parameters

To create a record with custom fields, you use the *$custom* parameter. For more information on the use of the *$custom* parameter, see [$custom Parameter \(Contract Version 4\)](IntegrationDev_RESTExample_Parameter_custom.md).

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

Content-Type

</td><td>

Specifies the format of the request body, which should be application/json.

</td></tr><tr><td>

Cookie

</td><td>

Specifies the cookies that you’ve received during the sign-in to Acumatica ERP with the login method. For details on this method, see [Sign In to the Service](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic_Login.md).

 You must use the Cookie header if:

 -   You’ve used the login method to sign in to Acumatica ERP.
-   You’re using the OAuth 2.0 or OpenID Connect \(OIDC\) authorization with the api:concurrent\_access scope and need to manage session IDs through cookies.

</td></tr><tr><td>

If-None-Match

</td><td>

Changes the behavior of the `PUT` request, which normally either creates a new record or updates an existing one. If you only want to create a new record, use the optional If-None-Match header with the `*` \(asterisk\) value.

</td></tr></tbody>
</table>

## Request Body

To create a record with custom fields, you compose the request body as described in the [Custom Fields](IS__con_REST_Entity_Representation_in_JSON.md#_336108cb-34f8-4c42-ab5d-b5ec36c30a30) section of [Representation of a Record in JSON Format](IS__con_REST_Entity_Representation_in_JSON.md).

## Response Status Codes

The following table lists the HTTP status codes that the system returns for a request that creates a record.

<table id="_de5aba0d-08ea-4e7e-aa2b-1c4e8e0adb19"><thead><tr><th>

Code

</th><th>

Description

</th></tr></thead><tbody><tr><td>

*200*

</td><td>

The request has been completed successfully. The response of a successful method call contains the created record in JSON format in the response body. The response includes only the values of the fields of the created record that were specified during the creation of the record or that were specified to be returned by using the parameters of the request.

</td></tr><tr><td>

*400*

</td><td>

The data specified in the request is invalid.

</td></tr><tr><td>

*401*

</td><td>

The user is not signed in to the system.

</td></tr><tr><td>

*403*

</td><td>

The user has insufficient rights to access the Acumatica ERP form that corresponds to the API entity.

</td></tr><tr><td>

*412*

</td><td>

You have used the If-None-Match header with the `*` value, and the record already exists.

</td></tr><tr><td>

*422*

</td><td>

The data specified in the request is invalid, and the validation errors are returned in the error fields of the response body, as shown in the following example.

```
"CustomerID": {
 "value": "ABARTENDE1",
 "error": "'Customer' cannot be found in the system."
}
```

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

Suppose that you have added to the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form the `PRODUCT` user-defined field. The following request shows an example of creation of a sales order that contains the `PRODUCT` field.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/26.200.001/SalesOrder?
    $select=*,Document.AttributePRODUCT HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "CustomerID": {
        "value": "GOODFOOD"
    },
    "Hold": {
        "value": false
    },
    "LocationID": {
        "value": "MAIN"
    },
    "OrderType": {
        "value": "SO"
    },
    "PaymentMethod": {
        "value": "CHECK"
    },
    "custom": {
        "Document": {
            "AttributePRODUCT": {
                "type": "CustomStringField",
                "value": "Apple jam 8 oz."
            }
        }
    }
}
```

## Usage Notes

You can also add custom fields to a custom endpoint or endpoint extension and work with them by using the same approach as was described in [Create a Record](IntegrationDev_RESTExample_Basic_Create_Record.md) for the fields of the system endpoint. User-defined fields cannot be added to custom endpoints and endpoint extensions. For details about custom endpoints and endpoint extensions, see [Custom Endpoints and Endpoint Extensions](IS__con_CB_Endpoint_Extensions.md#).

**Parent topic:**[Basic Requests](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic.md)

