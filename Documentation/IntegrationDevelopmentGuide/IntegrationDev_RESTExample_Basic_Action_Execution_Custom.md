# Execute a Custom Action {#_f01f3b8b-56c4-48ab-a043-dcbb10e3bfb3 .concept}

You can execute actions that are not present in the endpoint. These actions can be defined in the forms' graphs or in customization projects.

To perform an action by using the contract-based REST API, you access the needed URL with the `POST` HTTP method and pass the record representation in JSON format and the parameters of the action in the request body. See the following sections for details on the request and the response.

## HTTP Method and URL { .section}

If you need to perform an action on an Acumatica ERP form, you use the `POST` HTTP method and the following URL.

```
http://<Base endpoint URL>/<Top-level entity>/<Action name>
```

The URL has the following components:

-   *&lt;Base endpoint URL&gt;* is the URL of the contract-based endpoint through which you are going to work with Acumatica ERP. This URL has the following format: *http://&lt;Acumatica ERP instance URL&gt;/entity/&lt;Endpoint name&gt;/&lt;Endpoint version&gt;/*.
-   *&lt;Top-level entity&gt;* is the name of the entity for which you are going to perform an action.
-   *&lt;Action name&gt;* is the name of the action that you are going to perform. If an action is defined for a UI element, you can find out the action name as follows: on the title bar of the form, you click **Customization** &gt; **Inspect Element** and click the needed element on the form. In the **Element Properties** dialog box, which opens, you find the action name in the **Action Name** element. You can retrieve the names of workflow actions as described in [Retrieve the Schema of Custom Fields and Workflow Actions](IntegrationDev_RESTExample_Basic_Get_List_of_Custom_Fields.md).

For example, suppose that you want to invoke the Close action of some *Case* entity in a local Acumatica ERP instance with the name *AcumaticaDB* by using the system endpoint with the name *Default* and Version 25.200.001. You should use the following URL to invoke the action: *http://localhost/AcumaticaDB/entity/Default/25.200.001/Case/Close*.

## Parameters { .section}

You use no parameters when you execute an action.

## Request Headers { .section}

You can specify the following headers in the request.

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

For the invocation of a custom action, an HTTP body with the following pattern is used.

```
{
    "entity": {
        "id": "<entity id>"
    },
    "parameters": {
        "custom": {
            ...
        }
    }    
}
```

In this pattern, the following information is provided:

-   `<entity id>` is the identifier of the entity for which you need to invoke a custom action. For more information, see [Retrieve a Record by ID](IntegrationDev_RESTExample_Basic_Get_Record_by_ID.md). You can also use the key fields to define the entity.
-   The `custom` collection contains the parameters of the action that are normally entered in a dialog box that the system displays upon the execution of the action. You need to specify the parameters' names and the view in which the parameters are defined. You can find out this information as follows: Execute the action from the UI, press Ctrl+Alt, and click the parameter’s input box. In the **Element Properties** dialog box, which opens, you find the parameter name in the **Data Field** element and the view name in the **View Name** element. You can retrieve the parameters of workflow actions as described in [Retrieve the Schema of Custom Fields and Workflow Actions](IntegrationDev_RESTExample_Basic_Get_List_of_Custom_Fields.md).

You can find details on how to represent a record in JSON format in [Representation of a Record in JSON Format](IS__con_REST_Entity_Representation_in_JSON.md#).

## Response Status Codes { .section}

The following table lists the HTTP status codes that the system returns for a request that performs an action.

|Code|Description|
|----|-----------|
|*202*|The operation is in progress. The `Location` header of the response contains the URL that you can use to check the status of the operation by using the `GET` HTTP method. When the `GET` HTTP method with this URL returns *204 No Content*, the operation is completed.|
|*204*|The operation that has been initiated by the action has completed or was not created.|
|*400*|The data specified in the request is invalid.|
|*401*|The user is not signed in to the system.|
|*403*|The user has insufficient rights to access the Acumatica ERP form that corresponds to the API entity.|
|*404*|The action with this name does not exist.|
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

For example, suppose that you want to invoke the Close action of some *Case* entity by using the system endpoint with the name *Default* and Version 25.200.001. The Close action has the only *Reason* parameter, which is defined in the *FilterPreview* view. Following is an example of a request.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
POST /entity/Default/25.200.001/Case/Close HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "entity": {
        "id": "e3f46a39-1a14-e911-816f-bc920a5e0ac8"
    },
    "parameters": {
        "custom": {
            "FilterPreview": {
                "Reason": {
                    "type" : "CustomStringField", 
                    "value" : "Abandoned"
                }
            }
        }
    }    
}
```

**Parent topic:**[Basic Requests](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic.md)

