# Execute a Processing Action for All Filtered Records {#_fd52633e-df34-4696-9df3-7d94c8c1b96a .concept}

A processing form contains selection criteria, a table with the filtered records \(the records that meet the selection criteria\), and two main buttons that are usually named **Process** and **Process All**. You execute the **Process All** command by using the contract-based REST API in two stages:

1.  You run a request to retrieve the records for processing that meet the desired selection criteria \(see [Narrow the List of Records on a Processing Form](IntegrationDev_RESTExample_Basic_Processing_Form_SetFilter.md)\).
2.  In the body of the second request, you use the `id` value from the response that you received in the first stage to execute the **Process All** command, which affects all filtered records. \(This topic provides information on the corresponding action.\)

**Important:** You must run both requests during the same session.

## HTTP Method and URL {#c94c111c-5dfd-4563-acd0-861f05914783 .section}

You click **Process All** on the form toolbar of a processing form to process all records contained in the table of this form. To process all listed records by using the contract-based REST API, you use the `POST` HTTP method and the following URL.

```
http://<Base endpoint URL>/<Top-level entity>/<Process All action name>
```

The URL has the following components:

-   *&lt;Base endpoint URL&gt;* is the URL of the contract-based endpoint through which you are going to work with Acumatica ERP. This URL has the following format: *http://&lt;Acumatica ERP instance URL&gt;/entity/&lt;Endpoint name&gt;/&lt;Endpoint version&gt;/*.
-   *&lt;Top-level entity&gt;* is the name of the top-level entity that corresponds to the processing form.
-   *&lt;Process All action name&gt;* is the name of the action to which the **Process All** command is mapped in the endpoint.

For example, suppose that you want to execute the **Process All** command of the [Emails Pending Processing](../UserGuide/SM_50_70_00.md) \(SM507000\) form in a local Acumatica ERP instance with the name *AcumaticaDB* by using the system endpoint with the name *Default* and Version 25.200.001. You should use the following URL to execute the **Process** command: *http://localhost/AcumaticaDB/entity/Default/25.200.001/EmailProcessing/ProcessAllEmailProcessing*.

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

## Request Body { .section}

As a request body, you create a JSON object with the only *Entity* key; as the value, you use the key-value pair with the *id* key that is taken from the response body received when the selection criteria were applied \(see [Narrow the List of Records on a Processing Form](IntegrationDev_RESTExample_Basic_Processing_Form_SetFilter.md)\).

## Response Status Codes { .section}

The following table lists the HTTP status codes that the system returns for a request that performs an action.

|Code|Description|
|----|-----------|
|*202*|The operation is in progress. The `Location` header of the response contains the URL that you can use to check the status of the operation by using the `GET` HTTP method. When the `GET` HTTP method with this URL returns *204 No Content*, the operation is completed.|
|*204*|The operation that has been initiated by the action has completed or was not created.|
|*400*|The data specified in the request is invalid.|
|*401*|The user is not signed in to the system.|
|*403*|The user has insufficient rights to access the Acumatica ERP form that corresponds to the API entity.|
|*404*|An action with this name does not exist.|
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

For example, suppose that you want to process all incoming and outgoing pending emails assigned to the current user in an Acumatica ERP instance. On the UI, the [Emails Pending Processing](../UserGuide/SM_50_70_00.md) \(SM507000\) form can be used for this purpose. This form is mapped to the `EmailProcessing` entity, which has the `ProcessAllEmailProcessing` action; this action corresponds to the **Process All** button.

Following is an example of a request that processes all the pending emails that are retrieved in the example provided in [Narrow the List of Records on a Processing Form](IntegrationDev_RESTExample_Basic_Processing_Form_SetFilter.md).

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
POST /entity/Default/25.200.001/EmailProcessing/ProcessAllEmailProcessing HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "Entity": {"id": "e269bafb-a6c0-4463-a3ad-e8b3eab203d4"}
}
```

## Usage Notes { .section}

For an Acumatica ERP form on which a long-running operation is executed in the current session, only a REST API request that retrieves the status of this long-running operation can be executed successfully. Other requests in this session will fail until the long-running operation completes.

**Parent topic:**[Basic Requests](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic.md)

