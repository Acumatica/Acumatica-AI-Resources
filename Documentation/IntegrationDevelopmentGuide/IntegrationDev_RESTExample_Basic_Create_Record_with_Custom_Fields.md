# Create a Record with Custom Fields {#_6397c034-d191-4302-8f9d-0a0aec5b5ba8 .concept}

In a customization project, you can add custom fields to Acumatica ERP forms. You can also add user-defined fields to Acumatica ERP forms and include them in a customization project. \(For details about user-defined fields, see [User-Defined Fields](../UserGuide/CS__con_User_Defined_Fields.md#).\)

To create a record with custom fields by using the contract-based REST API, you access the needed URL with the PUT HTTP method. For more information on the creation of records, see [Create a Record](IntegrationDev_RESTExample_Basic_Create_Record.md).

## HTTP Method and URL { .section}

To create a record in Acumatica ERP, you use the `PUT` HTTP method and the following URL.

```
PUT http://<Base endpoint URL>/<Top-level entity>
```

The URL has the following components:

-   *&lt;Base endpoint URL&gt;* is the URL of the contract-based endpoint through which you are going to work with Acumatica ERP. This URL has the following format: *http://&lt;Acumatica ERP instance URL&gt;/entity/&lt;Endpoint name&gt;/&lt;Endpoint version&gt;/*.
-   *&lt;Top-level entity&gt;* is the name of the entity for which you are going to create a record.

For example, suppose that you want to create a stock item record in a local Acumatica ERP instance with the name *AcumaticaDB* by using the system endpoint with the name *Default* and Version 25.200.001. You should use the following URL to create a record: *http://localhost/AcumaticaDB/entity/Default/25.200.001/StockItem*.

## Parameters { .section}

To create a record with custom fields, you use the *$custom* parameter. For more information on the use of the *$custom* parameter, see [$custom Parameter](IntegrationDev_RESTExample_Parameter_custom.md).

## Request Headers { .section}

|Header|Description|
|------|-----------|
|Accept|Specifies the format of the response body, which should be application/json.|
|Content-Type|Specifies the format of the request body, which should be application/json.|
|Cookie|Specifies the cookies that you have received during the sing-in to Acumatica ERP with the login method. For details on this method, see [Sign In to the Service](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic_Login.md).

 You must use the Cookie header in any of the following cases:

 -   You have used the login method to sign in to Acumatica ERP.
-   You are using the OAuth 2.0 or OpenID Connect \(OIDC\) authorization with the api:concurrent\_access scope and need to manage session IDs through cookies.

|
|If-None-Match|Changes the behavior of the `PUT` request, which normally either creates a new record or updates an existing one. If you only want to create a new record, use the optional If-None-Match header with the `*` \(asterisk\) value.|

## Request Body { .section}

To create a record with custom fields, you compose the request body as described in the [Custom Fields](IS__con_REST_Entity_Representation_in_JSON.md#_336108cb-34f8-4c42-ab5d-b5ec36c30a30) section of [Representation of a Record in JSON Format](IS__con_REST_Entity_Representation_in_JSON.md).

## Response Status Codes { .section}

The following table lists the HTTP status codes that the system returns for a request that creates a record.

|Code|Description|
|----|-----------|
|*200*|The request has been completed successfully. The response of a successful method call contains the created record in JSON format in the response body. The response includes only the values of the fields of the created record that were specified during the creation of the record or that were specified to be returned by using the parameters of the request.|
|*400*|The data specified in the request is invalid.|
|*401*|The user is not signed in to the system.|
|*403*|The user has insufficient rights to access the Acumatica ERP form that corresponds to the API entity.|
|*412*|You have used the If-None-Match header with the `*` value, and the record already exists.|
|*422*|The data specified in the request is invalid, and the validation errors are returned in the error fields of the response body, as shown in the following example.

```
"CustomerID": {
 "value": "ABARTENDE1",
 "error": "'Customer' cannot be found in the system."
}
```

|
|*429*|The number of requests has exceeded the limit imposed by the license \(see [License Restrictions for API Users](../Shared/../IntegrationDevelopmentGuide/IS__con_License_Restrictions_API_Users.md)\).|
|*500*|An internal server error has occurred.|

## Example { .section}

Suppose that you have added to the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form the `PRODUCT` user-defined field. The following request shows an example of creation of a sales order that contains the `PRODUCT` field.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/25.200.001/SalesOrder?
    $custom=Document.AttributePRODUCT HTTP/1.1
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

## Usage Notes { .section}

You can also add custom fields to a custom endpoint or endpoint extension and work with them by using the same approach as was described in [Create a Record](IntegrationDev_RESTExample_Basic_Create_Record.md) for the fields of the system endpoint. User-defined fields cannot be added to custom endpoints and endpoint extensions. For details about custom endpoints and endpoint extensions, see [Custom Endpoints and Endpoint Extensions](IS__con_CB_Endpoint_Extensions.md#).

**Parent topic:**[Basic Requests](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic.md)

