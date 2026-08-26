# Create a Record {#_9d966d50-a0a1-4456-a9ff-1cc2159d48d4 .concept}

When you need to create a record by using the REST API, you access the needed URL with the `PUT` HTTP method and pass the record representation in JSON format in the request body. See the following sections for details on the request and the response.

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

You can use the following parameters when you retrieve a record from Acumatica ERP:

-   *$expand*: To specify the linked and detail entities to be expanded. For more information, see [$expand Parameter](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Parameter_expand.md).

    **Attention:** You must list in the *$expand* parameter every detail and related entity that you are going to have in the response body.

-   *$select*: To specify the fields of the entity to be returned. For more information, see [$select Parameter](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Parameter_select.md).
-   *$custom*: To specify the fields that are not defined in the contract to be returned. For details, see [$custom Parameter](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Parameter_custom.md).

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

You pass a record in JSON format in the request body. You can find details on how to represent a record in JSON format in [Representation of a Record in JSON Format](IS__con_REST_Entity_Representation_in_JSON.md#). See below for an example of a customer record representation in JSON format.

```language-json
{
  "CustomerID" : {value : "JOHNGOOD"},
  "CustomerName" : {value : "John Good"},
  "CustomerClass" : {value : "DEFAULT"},
  "MainContact" : 
    {
      "Email" : {value : "demo@gmail.com"},
      "Address" : 
        {
          "AddressLine1" : {"value" : "4030 Lake Washington Blvd NE"},
          "AddressLine2" : {"value" : "Suite 100"},
          "City" : {"value" : "Kirkland"},
          "State" : {"value" : "WA" },
          "PostalCode" : {"value" : "98033"}
        }      
    }  
}
```

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

The following request shows an example of the creation of a Customer record in Acumatica ERP through the REST API.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/25.200.001/Customer HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
  "CustomerID" : {"value" : "JOHNGOOD"},
  "CustomerName" : {"value" : "John Good"},
  "CustomerClass" : {"value" : "DEFAULT"},
  "MainContact" : 
    {
      "Email" : {"value" : "demo@gmail.com"},
      "Address" : 
        {
          "AddressLine1" : {"value" : "4030 Lake Washington Blvd NE"},
          "AddressLine2" : {"value" : "Suite 100"},
          "City" : {"value" : "Kirkland"},
          "State" : {"value" : "WA" },
          "PostalCode" : {"value" : "98033"}
        }      
    }  
}
```

## Usage Notes: Multiple Detail Lines { .section}

You can create a record with multiple detail lines by using a single PUT request.

## Usage Notes: Records with a Large Number of Detail Lines { .section}

If you need to create or update records with a large number of detail lines by using the contract-based REST API, note that the following approaches may have performance implications:

-   You make a single request that contains all the information you need to pass. In this case, the operation could time out.
-   You make many requests, each of which contains a single detail line you need to add or alter. In this case, the whole task takes a lot of time.

A more balanced approach is a compromise between these two: You make multiple requests, each of which contains a part of the detail lines you need to add or alter. You select the number of detail lines in a single request to optimize the performance of the whole task. For example, if you need to send a sales order containing 10,000 detail lines to the server, you can make requests, each of which contains 500 detail lines.

## Usage Notes: Values for a Drop-Down List { .section}

You can specify a value for a drop-down list \(or a multiselect drop-down list\) only if that value has been defined for the control. If the value you attempt to set is not present in the control, an error message is returned in the `error` field of the response. For a multiselect drop-down list, only internal \(that is, not external or displayed\) values can be specified.

## Usage Notes: Custom and User-Defined Fields { .section}

In a customization project, you can add custom fields to Acumatica ERP forms. You can also add user-defined fields to Acumatica ERP forms and include them in a customization project. \(For details about user-defined fields, see [User-Defined Fields](../UserGuide/CS__con_User_Defined_Fields.md#).\)

To specify the values of custom and user-defined fields through the REST API, you specify the values of these fields in the body of the `PUT` request, as shown in [Create a Record with Custom Fields](IntegrationDev_RESTExample_Basic_Create_Record_with_Custom_Fields.md).

## Usage Notes: Values in Multiple Languages { .section}

For some text boxes on Acumatica ERP forms, users can type values in multiple languages if multiple locales have been configured in Acumatica ERP. For details about how to specify the values of multi-language fields in REST API requests, see [Specify Any Number of Localized Values of a Multilingual Field](IntegrationDev_RESTExample_Basic_SetSomeValues_Multilingual_Fields.md) and [Specify All Localized Values of a Multilingual Field](IntegrationDev_RESTExample_Basic_SetValue_Multi-Language_Fields.md).

**Parent topic:**[Basic Requests](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic.md)

