# Sign Out from the Service {#_f6701ec1-2296-4155-8242-03d29006bf6e .concept}

Each time your application finishes working with the Acumatica ERP contract-based REST service, you have to sign out from Acumatica ERP. To sign out from Acumatica ERP, you access the needed URL address with the `POST` HTTP method. See the following sections for details on the request and the response.

## HTTP Method and URL { .section}

When you need to sign out from Acumatica ERP, you use the `POST` HTTP method and the following URL.

```
POST http://<Acumatica ERP instance URL>/entity/auth/logout
```

You replace *&lt;Acumatica ERP instance URL&gt;* with the URL of your Acumatica ERP instance.

For example, suppose that you want to sign out from a local Acumatica ERP instance with the name *AcumaticaDB*. You should use the following URL: *http://localhost/AcumaticaDB/entity/auth/logout*.

## Parameters { .section}

You do not need to use parameters when you sign out from Acumatica ERP.

## Request Headers { .section}

|Header|Description|
|------|-----------|
|Cookie|Specifies the cookies that you have received during the sing-in to Acumatica ERP with the login method. For details on this method, see [Sign In to the Service](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic_Login.md).

 You must use the Cookie header in any of the following cases:

 -   You have used the login method to sign in to Acumatica ERP.
-   You are using the OAuth 2.0 or OpenID Connect \(OIDC\) authorization with the api:concurrent\_access scope and need to manage session IDs through cookies.

|
|Authorization|Contains the access token that the application has received during the authorization with OAuth 2.0 or OIDC.

 You must pass the Authorization header only if you are using the OAuth 2.0 or OIDC authorization.

|

## Response Status Codes { .section}

The following table lists the HTTP status codes that the system returns for a sign-out request.

|Code|Description|
|----|-----------|
|*204*|The request has been completed successfully.|
|*400*|The data specified in the request is invalid.|
|*429*|The number of requests has exceeded the limit imposed by the license \(see [License Restrictions for API Users](../Shared/../IntegrationDevelopmentGuide/IS__con_License_Restrictions_API_Users.md)\).|
|*500*|An internal server error has occurred.|

## Example { .section}

The following request shows an example of a sign-out from Acumatica ERP through the REST API.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
POST /entity/auth/logout HTTP/1.1
Host: [<Acumatica ERP host>]
```

## Usage Notes { .section}

For each attempt to sign in to Acumatica ERP, you must implement the signing out from the service after you finish your work with Acumatica ERP to close the session. If the session is not closed, you may have issues with subsequent sign-ins to Acumatica ERP through the REST API.

If your applications failed to sign out from Acumatica ERP and the maximum number of concurrent sessions allowed by the license is reached, there is no way to forcibly terminate all sessions of the API users. Instead, a session is automatically closed after a 10-minute timeout.

**Parent topic:**[Basic Requests](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic.md)

