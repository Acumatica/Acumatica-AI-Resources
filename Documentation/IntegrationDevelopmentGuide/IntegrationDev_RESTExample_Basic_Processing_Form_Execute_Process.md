# Execute a Processing Action for Selected Records

A processing form contains selection criteria, a table with the filtered records \(the records that meet the selection criteria\), and two main buttons that are usually named **Process** and **Process All**. You execute the **Process** command by using the contract-based REST API in two stages:

1.  You run a request to retrieve the records for processing that meet the desired selection criteria \(see [Narrow the List of Records on a Processing Form](IntegrationDev_RESTExample_Basic_Processing_Form_SetFilter.md)\).
2.  In the body of the second request, you use the response that you received in the first stage to execute the **Process** command for the records that you have retrieved. \(This topic provides information on the corresponding action.\)

**Important:** You must run both requests during the same session.

## HTTP Method and URL

In the table of a processing form, you select the check boxes in the untitled column for the records you want to process; you then click **Process** on the form toolbar of the form. To process selected records by using the contract-based REST API, you use the `POST` HTTP method and the following URL.

```
POST http://<Base endpoint URL>/<Top-level entity>/<Process action name>
```

The URL has the following components:

-   *&lt;Base endpoint URL&gt;* is the URL of the contract-based endpoint through which you are going to work with Acumatica ERP. This URL has the following format: *http://&lt;Acumatica ERP instance URL&gt;/entity/&lt;Endpoint name&gt;/&lt;Endpoint version&gt;/*.
-   *&lt;Top-level entity&gt;* is the name of the top-level entity that corresponds to the processing form.
-   *&lt;Process action name&gt;* is the name of the action to which the **Process** command is mapped in the endpoint.

For example, suppose that you want to execute the **Process** command of the [Emails Pending Processing](../UserGuide/SM_50_70_00.md) \(SM507000\) form in a local Acumatica ERP instance with the name *AcumaticaDB* by using the system endpoint with the name *Default* and Version 26.200.001. You should use the following URL to execute the **Process** command: *http://localhost/AcumaticaDB/entity/Default/26.200.001/EmailProcessing/ProcessEmailProcessing*.

## Parameters

You use no parameters when you execute an action.

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

As a request body, you create a JSON object with the only *Entity* key; as the value, you use the response body received when selection criteria were applied to filter records \(see [Narrow the List of Records on a Processing Form](IntegrationDev_RESTExample_Basic_Processing_Form_SetFilter.md)\). Further, you change the request body as follows: for each record, in the `Selected` field, you specify either *true* \(if the record must be processed\) or *false* \(if the record must not be processed\).

## Request Headers

You can specify the following headers in the request.

<table id="d16011e16"><thead><tr><th>

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

## Example

For example, suppose that you want to process some pending emails in an Acumatica ERP instance. In the UI, you select the desired emails on the [Emails Pending Processing](../UserGuide/SM_50_70_00.md) \(SM507000\) form and click **Process** for this purpose. This form is mapped to the `EmailProcessing` entity, which has the `ProcessEmailProcessing` action; this action corresponds to the **Process** button.

Following is an example of a request that processes the first email from the list that is retrieved in the example provided in [Narrow the List of Records on a Processing Form](IntegrationDev_RESTExample_Basic_Processing_Form_SetFilter.md). The `Selected` field of the first record contains *true* and the rest ones contain *false*.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
POST /entity/Default/26.200.001/EmailProcessing/ProcessEmailProcessing HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "Entity": {
        "id": "5cfd60d5-c5d6-4ac9-aa03-06ac083ce329",
        "rowNumber": 1,
        "note": null,
        "Account": {},
        "AccountEmailAccountID": {},
        "AssignedToMe": { "value": true },
        "AssignedToOwner": {},
        "IncludeFailed": { "value": false },
        "Result": [
            {
                "id": "8f5174a5-b312-ea11-b826-00155d408001",
                "rowNumber": 1,
                "note": { "value": "" },
                "EmailAccount": { "value": "System" },
                "From": { "value": "\"System\" <system@sweetlife.con>" },
                "MailStatus": { "value": { "id": "PP" } },
                "Owner": {},
                "Selected": { "value": true },
                "StartDate": { "value": "2023-12-03T14:59:30.693+03:00" },
                "Subject": { "value": "Welcome to the Company2 system" },
                "To": { "value": "angelo@sweetlife.com" },
                "custom": {},
                "_links": {
                    "files:put": ...
                }
            },
            {
                "id": "4d57b6f3-b312-ea11-b826-00155d408001",
                "rowNumber": 2,
                "note": { "value": "" },
                "EmailAccount": { "value": "System" },
                "From": { "value": "\"System\" <system@sweetlife.con>" },
                "MailStatus": { "value": { "id": "PP" } },
                "Owner": {},
                "Selected": { "value": false },
                "StartDate": { "value": "2023-12-03T14:59:36.15+03:00" },
                "Subject": { "value": "Welcome to the Company2 system" },
                "To": { "value": "perkins@sweetlife.com" },
                "custom": {},
                "_links": {
                    "files:put": ...
                }
            },
            ...
        ],
        "Type": { "value": "All" },
        "custom": {}
    }
}
```

## Usage Notes

For an Acumatica ERP form on which a long-running operation is executed in the current session, only a REST API request that retrieves the status of this long-running operation can be executed successfully. Other requests in this session will fail until the long-running operation completes.

**Parent topic:**[Basic Requests](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic.md)

