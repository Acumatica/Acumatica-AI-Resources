# Execute an Action That Is Present in an Endpoint

To perform an action that is present in an endpoint by using the contract-based REST API, you access the needed URL with the `POST` HTTP method; you then pass the record representation in JSON format and the parameters of the action in the request body.

See the following sections for details on the request and the response.

## HTTP Method and URL

If you need to perform an action on an Acumatica ERP form, you use the `POST` HTTP method and the following URL.

```
http://<Base endpoint URL>/<Top-level entity>/<Action name>
```

The URL has the following components:

-   *&lt;Base endpoint URL&gt;* is the URL of the contract-based endpoint through which you are going to work with Acumatica ERP. This URL has the following format: *http://&lt;Acumatica ERP instance URL&gt;/entity/&lt;Endpoint name&gt;/&lt;Endpoint version&gt;/*.
-   *&lt;Top-level entity&gt;* is the name of the entity for which you are going to perform an action.
-   *&lt;Action name&gt;* is the name of the action that you are going to perform.

For example, suppose that you want to confirm a shipment in a local Acumatica ERP instance with the name *AcumaticaDB* by using the system endpoint with the name *Default* and Version 26.200.001. You would use the following URL to confirm a shipment: *http://localhost/AcumaticaDB/entity/Default/26.200.001/Shipment/ConfirmShipment*.

## Parameters

You use no parameters of the request when you execute an action by using the REST API.

## Request Headers

You can specify the following headers in the request.

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

</td></tr></tbody>
</table>

## Request Body

You pass the record to which the action should be applied and the parameters of the action in the request body in JSON format as follows.

```
{
  "entity" : <record in JSON format>,
  "parameters" : <parameters in JSON format>
  }
```

You can find details on how to represent a record in JSON format in [Representation of a Record in JSON Format](IS__con_REST_Entity_Representation_in_JSON.md#).

## Response Status Codes

The following table lists the HTTP status codes that the system returns for a request that performs an action.

<table id="_970da984-282e-41b1-b56c-841acaa6b024"><thead><tr><th>

Code

</th><th>

Description

</th></tr></thead><tbody><tr><td>

*202*

</td><td>

The operation is in progress. The `Location` header of the response contains the URL that you can use to check the status of the operation by using the `GET` HTTP method. When the `GET` HTTP method with this URL returns *204 No Content*, the operation is completed.

</td></tr><tr><td>

*204*

</td><td>

The operation that has been initiated by the action has completed or was not created.

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

*404*

</td><td>

An action with this name does not exist.

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

## Examples

**Tip:** In the request examples below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

The following request shows an example of a *Completed* sales order being reopened through the REST API.

```
POST /entity/Default/26.200.001/SalesOrder/ReopenSalesOrder HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{ 
 "entity" :
 {
  "OrderType" : {"value" : "SO"}, 
  "OrderNbr" : {"value" : "000001"} 
 },
 "parameters" : 
 {}
}
```

The following request shows an example of the ID of the *CANDYY* business account being changed to *CANDYYY* through the REST API.

```
POST /entity/Default/26.200.001/BusinessAccount/ChangeBusinessAccountID 
     HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
  "entity" : {
    "BusinessAccountID": { "value": "CANDYY" }
  },
  "parameters" : {
    "BusinessAccountID": { "value": "CANDYYY" }
  }
}
```

## Usage Notes

Note the following about execution of an action:

-   You can execute actions that are not present in the endpoint. These actions can be defined in the forms' graphs or in customization projects.

    For details about execution of custom actions, see [Execute a Custom Action](IntegrationDev_RESTExample_Basic_Action_Execution_Custom.md).

-   A processing form contains a Selection area with selection criteria and a table with the records that meet the selection criteria. It also has a form toolbar with two main buttons, which are usually named **Process** and **Process All**. You execute the action associated with either button by using the contract-based REST API in two stages:

    1.  You run a request to retrieve the records for processing that meet the desired selection criteria. \(For details about this action, see [Narrow the List of Records on a Processing Form](IntegrationDev_RESTExample_Basic_Processing_Form_SetFilter.md).\)
    2.  In the body of the second request, you use the response that you received in the first stage to process the records that you have specified \(see [Execute a Processing Action for Selected Records](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic_Processing_Form_Execute_Process.md)\) or process all filtered records \(see [Execute a Processing Action for All Filtered Records](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic_Processing_Form_Execute_ProcessAll.md)\).
-   For an Acumatica ERP form on which a long-running operation is executed in the current session, only a REST API request that retrieves the status of this long-running operation can be executed successfully. Other requests in this session will fail until the long-running operation completes.


**Parent topic:**[Basic Requests](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic.md)

