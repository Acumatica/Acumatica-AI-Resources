# Update Particular Fields of a Record {#_d99911e1-f14e-4e40-89c4-a387738fb9b6 .concept}

When you need to update particular fields of an existing record by using the contract-based REST API, you access the needed URL with the `PATCH` HTTP method and pass the fields that should be updated in JSON format in the request body. See the following sections for details on the request and the response.

## HTTP Method and URL { .section}

When you update particular fields of an existing record in Acumatica ERP, you use the `PATCH` HTTP method and the following URL.

```
PATCH http://<Base endpoint URL>/<Top-level entity>
```

The URL has the following components:

-   *&lt;Base endpoint URL&gt;* is the URL of the contract-based endpoint through which you are going to work with Acumatica ERP. This URL has the following format: *http://&lt;Acumatica ERP instance URL&gt;/entity/&lt;Endpoint name&gt;/&lt;Endpoint version&gt;/*.
-   *&lt;Top-level entity&gt;* is the name of the entity for which you are going to update a record.

For example, suppose that you want to update particular fields of a stock item record in a local Acumatica ERP instance with the name *AcumaticaDB* by using a system endpoint with the name *Default* and Version 25.200.001. You would use the following URL to update a record: *http://localhost/AcumaticaDB/entity/Default/25.200.001/StockItem*.

## Parameters {#_0aabf54c-3ee5-4703-9d80-711dbdd90909 .section}

You can use the following parameters when you are updating particular fields of a record in Acumatica ERP:

-   *$filter*: To specify the filtering conditions that identify the record to be updated. For details, see [$filter Parameter](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Parameter_filter.md).
-   *$expand*: To specify the linked and detail entities to be expanded. For more information, see [$expand Parameter](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Parameter_expand.md).

    **Attention:** You must list in the *$expand* parameter every detail and related entity that you are going to have in the response body.

-   *$select*: To specify the fields of the entity to be returned. For more information, see [$select Parameter](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Parameter_select.md).
-   *$custom*: To specify the fields that are not defined in the contract to be returned. For details, see [$custom Parameter](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Parameter_custom.md).

## HTTP Headers { .section}

|Header|Description|
|------|-----------|
|Accept|Specifies the format of the response body, which should be application/json.|
|Content-Type|Specifies the format of the request body, which should be application/json.|
|Cookie|Specifies the cookies that you have received during the sing-in to Acumatica ERP with the login method. For details on this method, see [Sign In to the Service](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic_Login.md).

 You must use the Cookie header in any of the following cases:

 -   You have used the login method to sign in to Acumatica ERP.
-   You are using the OAuth 2.0 or OpenID Connect \(OIDC\) authorization with the api:concurrent\_access scope and need to manage session IDs through cookies.

|

## HTTP Body { .section}

You pass a record in JSON format in the request body. You can find details on how to represent a record in JSON format in [Representation of a Record in JSON Format](../Shared/../IntegrationDevelopmentGuide/IS__con_REST_Entity_Representation_in_JSON.md#).

To make it possible for the record to be found by Acumatica ERP, you can specify any of the following:

-   The values of the key fields in the record representation in JSON format.
-   The value of the ID property in the record representation in JSON format.
-   The filtering conditions that identify the record in the *$filter* parameter of the method. For details on the parameter, see the [Parameters](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic_Update_Record.md#_0aabf54c-3ee5-4703-9d80-711dbdd90909) section in this topic.

If you want to delete a detail line during the update, you should specify `true` as the value of the delete property of the corresponding detail entity: `"delete" : true`. To identify the detail line to be deleted, you can specify one of the following:

-   The value of the ID property of the detail line
-   The values of the key fields of the detail line

## Response Status Codes { .section}

The following table lists the HTTP status codes that the system returns for a request that updates a record.

|Code|Description|
|----|-----------|
|*200*|The request has been completed successfully. The response body contains the updated record in JSON format.|
|*400*|The data specified in the request is invalid.|
|*401*|The user is not signed in to the system.|
|*403*|The user has insufficient rights to access the Acumatica ERP form that corresponds to the API entity.|
|*404*|The specified record cannot be found in the system.|
|*412*|You have used the If-None-Match header with the `*` value, which specifies that the record has to be inserted, but the `PATCH` method cannot be used for the insertion of a record.|
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

Suppose that you need to update the order quantity and discount amount in a detail line of the *000029* sales order. You can use the following request.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PATCH /entity/Default/25.200.001/SalesOrder?
      $expand=Details&
      $select=Details/DiscountAmount,Details/OrderQty,OrderNbr,OrderType 
      HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "OrderType": {"value": "SO"},
    "OrderNbr": { "value": "000029" },
    "Details": [
        {
             "id": "a1d07920-a402-e911-b818-00155d408001",
              "OrderQty": { "value": 2 },
              "DiscountAmount": { "value": 5 }  
        }
    ]
}
```

## Usage Notes: PATCH and PUT Methods {#_7f99f52d-6575-42a1-a662-149989a02026 .section}

The `PATCH` method updates exactly the fields specified in the request body, regardless of the values for these fields that are stored in the system. However, the `PATCH` method does not override the graph logic. For example, if because of the graph logic, the value cannot be changed as the request body specifies, this value will not be changed.

You may consider using the `PATCH` method during the synchronization of records from an external system when you know exactly which fields have been changed in the external system. You may also use this method in situations when particular fields of a record cannot be updated with a `PUT` request. For details about updating records with the `PUT` method, see [Update a Record](IntegrationDev_RESTExample_Basic_Update_Record.md).

## Usage Notes: Values for a Drop-Down List { .section}

You can specify a value for a drop-down list \(or a multiselect drop-down list\) only if that value has been defined for the control. If the value you attempt to set is not present in the control, an error message is returned in the `error` field of the response. For a multiselect drop-down list, only internal \(that is, not external or displayed\) values can be specified.

**Parent topic:**[Basic Requests](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic.md)

