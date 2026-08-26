# Narrow the List of Records on a Processing Form {#_2a697d48-0adf-4fa6-b5e5-af1f9459ec59 .concept}

A processing form contains a Selection area with selection criteria and a table with the records that meet the selection criteria. It also has a form toolbar with two main buttons, which are usually named **Process** and **Process All**. You execute the action associated with either button by using the contract-based REST API in two stages:

1.  You run a request to retrieve the records for processing that meet the desired selection criteria. \(This topic provides information on this action.\)
2.  In the body of the second request, you use the response that you received in the first stage to process the records that you have specified \(see [Execute a Processing Action for Selected Records](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic_Processing_Form_Execute_Process.md)\) or process all filtered records \(see [Execute a Processing Action for All Filtered Records](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic_Processing_Form_Execute_ProcessAll.md)\).

**Important:** You must run both requests during the same session.

## HTTP Method and URL {#517a4cf5-b136-41c6-b50f-c893ef862028 .section}

You narrow the list of records to process on a processing form by specifying selection criteria in the Selection area. To specify a filter by using the contract-based REST API, you use the `PUT` HTTP method and the following URL.

```
PUT http://<Base endpoint URL>/<Top-level entity>
```

The URL has the following components:

-   *&lt;Base endpoint URL&gt;* is the URL of the contract-based endpoint through which you are going to work with Acumatica ERP. This URL has the following format: *http://&lt;Acumatica ERP instance URL&gt;/entity/&lt;Endpoint name&gt;/&lt;Endpoint version&gt;/*.
-   *&lt;Top-level entity&gt;* is the name of the top-level entity that corresponds to the processing form.

For example, suppose that you want to filter records by applying selection criteria for the [Emails Pending Processing](../UserGuide/SM_50_70_00.md) \(SM507000\) form in a local Acumatica ERP instance with the name *AcumaticaDB* by using the system endpoint with the name *Default* and Version 25.200.001. You should use the following URL to specify the selection criteria: *http://localhost/AcumaticaDB/entity/Default/25.200.001/EmailProcessing*.

## Parameters { .section}

You use the *$expand* parameter to retrieve the records to process. As its value, you specify the name of the only nested entity that is defined for the top-level entity. For example, for the `EmailProcessing` entity, you use the following parameter string: *$expand=Result*.

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

For information on the request body, see [Create a Record](IntegrationDev_RESTExample_Basic_Create_Record.md).

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

## Response Body { .section}

After the request succeeds, the response body contains the same filter settings as the request body does, along with the nested entity filled with the records that can be processed. Each record that can be processed contains the `Selected` field, which is used when executing the **Process** command \(see [Execute a Processing Action for Selected Records](IntegrationDev_RESTExample_Basic_Processing_Form_Execute_Process.md)\).

## Example { .section}

For example, suppose that you want to filter out both incoming and outgoing pending emails assigned to the current user in an Acumatica ERP instance. On the UI, you use the [Emails Pending Processing](../UserGuide/SM_50_70_00.md) \(SM507000\) form for this purpose. This form is mapped to the `EmailProcessing` entity, which has the `Result` nested entity. Following is an example of a request that applies the selection criteria to the contents of the form.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/25.200.001/EmailProcessing?$expand=Result HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "AssignedToMe": {"value": true},
    "Type": {"value": "All"}
}
```

The following code shows an example of the response.

```
{
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
            "MailStatus": { "value": "Pending Processing" },
            "Owner": {},
            "Selected": {},
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
            "MailStatus": { "value": "Pending Processing" },
            "Owner": {},
            "Selected": {},
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
```

**Parent topic:**[Basic Requests](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic.md)

