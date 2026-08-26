# Update a Record {#_af48c02a-afbc-4fdb-b1e5-635ac7ebbaf1 .concept}

When you need to update an existing record by using the REST API, you access the needed URL with the `PUT` HTTP method and pass the record representation in JSON format in the request body. See the following sections for details on the request and the response.

## HTTP Method and URL { .section}

When you update a record in Acumatica ERP, you use the `PUT` HTTP method and the following URL.

```
PUT http://<Base endpoint URL>/<Top-level entity>
```

The URL has the following components:

-   *&lt;Base endpoint URL&gt;* is the URL of the contract-based endpoint through which you are going to work with Acumatica ERP. This URL has the following format: *http://&lt;Acumatica ERP instance URL&gt;/entity/&lt;Endpoint name&gt;/&lt;Endpoint version&gt;/*.
-   *&lt;Top-level entity&gt;* is the name of the entity for which you are going to create or update a record.

For example, suppose that you want to update a stock item record in a local Acumatica ERP instance with the name *AcumaticaDB* by using a system endpoint with the name *Default* and Version 25.200.001. You would use the following URL to update a record: *http://localhost/AcumaticaDB/entity/Default/25.200.001/StockItem*.

## Parameters {#_0aabf54c-3ee5-4703-9d80-711dbdd90909 .section}

You can use the following parameters when you are updating a record in Acumatica ERP:

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
|If-Match|Changes the behavior of the `PUT` request, which normally either creates a new record or updates an existing one. If you only want to update a record, use the optional If-Match header with the `*` value.|

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
|*412*|You have used the If-Match header with the `*` value, and the record does not exist.|
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

The following request shows an example of the update of an existing customer record that has the *demo@gmail.com* email address.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/25.200.001/Customer
    ?$filter=MainContact/Email%20eq%20'demo@gmail.com'&
    $select=CustomerID,CustomerClass,MainContact/Email&$expand=MainContact 
    HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
  "CustomerClass" : {"value" : "ECCUSTOMER"}
}
```

## Usage Notes: PUT and PATCH Methods {#_b8367ba4-7a04-420a-bafe-96f758e3402f .section}

The `PUT` method updates the fields as follows:

1.  To find the fields to update, the system compares the values specified in the request body with the field values for the record in the system.
2.  The system skips the values in the request body that are the same as the field values in the system.
3.  The system updates only the fields for which the value specified in the request body differs from the value stored in the system.

    However, during this update, other fields of the record may be changed because of the logic implemented in the respective graph. Meanwhile, the request body may include values specified for the fields that have been updated because of the graph logic. In this case, the system does not save the values specified in the request body.


If the system does not save particular values specified in the request body when the `PUT` method is used for update, consider using the `PATCH` method, as described in [Update Particular Fields of a Record](IntegrationDev_RESTExample_Basic_Update_Particular_Fields.md).

## Usage Notes: Values for a Drop-Down List { .section}

You can specify a value for a drop-down list \(or a multiselect drop-down list\) only if that value has been defined for the control. If the value you attempt to set is not present in the control, an error message is returned in the `error` field of the response. For a multiselect drop-down list, only internal \(that is, not external or displayed\) values can be specified.

## Usage Notes: Records with a Large Number of Detail Lines { .section}

If you need to create or update records with a large number of detail lines by using the contract-based REST API, note that the following approaches may have performance implications:

-   You make a single request that contains all the information you need to pass. In this case, the operation could time out.
-   You make many requests, each of which contains a single detail line you need to add or alter. In this case, the whole task takes a lot of time.

A more balanced approach is a compromise between these two: You make multiple requests, each of which contains a part of the detail lines you need to add or alter. You select the number of detail lines in a single request to optimize the performance of the whole task. For example, if you need to send a sales order containing 10,000 detail lines to the server, you can make requests, each of which contains 500 detail lines.

**Parent topic:**[Basic Requests](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic.md)

