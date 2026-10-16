# Sign Out from the Service

Each time your application finishes working with the Acumatica ERP contract-based REST service, you have to sign out from Acumatica ERP. To sign out from Acumatica ERP, you access the needed URL address with the `POST` HTTP method. See the following sections for details on the request and the response.

## HTTP Method and URL

When you need to sign out from Acumatica ERP, you use the `POST` HTTP method and the following URL.

```
POST http://<Acumatica ERP instance URL>/entity/auth/logout
```

You replace *&lt;Acumatica ERP instance URL&gt;* with the URL of your Acumatica ERP instance.

For example, suppose that you want to sign out from a local Acumatica ERP instance with the name *AcumaticaDB*. You should use the following URL: *http://localhost/AcumaticaDB/entity/auth/logout*.

## Parameters

You do not need to use parameters when you sign out from Acumatica ERP.

## Request Headers

<table id="_40bf8194-174d-41e1-9ba1-dce56cf597b4"><thead><tr><th>

Header

</th><th>

Description

</th></tr></thead><tbody><tr><td>

Cookie

</td><td>

Specifies the cookies that you’ve received during the sign-in to Acumatica ERP with the login method. For details on this method, see [Sign In to the Service](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic_Login.md).

 You must use the Cookie header if:

 -   You’ve used the login method to sign in to Acumatica ERP.
-   You’re using the OAuth 2.0 or OpenID Connect \(OIDC\) authorization with the api:concurrent\_access scope and need to manage session IDs through cookies.

</td></tr><tr><td>

Authorization

</td><td>

Contains the access token that the application has received during the authorization with OAuth 2.0 or OIDC.

 You must pass the Authorization header only if you are using the OAuth 2.0 or OIDC authorization.

</td></tr></tbody>
</table>

## Response Status Codes

The following table lists the HTTP status codes that the system returns for a sign-out request.

<table id="_970da984-282e-41b1-b56c-841acaa6b024"><thead><tr><th>

Code

</th><th>

Description

</th></tr></thead><tbody><tr><td>

*204*

</td><td>

The request has been completed successfully.

</td></tr><tr><td>

*400*

</td><td>

The data specified in the request is invalid.

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

The following request shows an example of a sign-out from Acumatica ERP through the REST API.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
POST /entity/auth/logout HTTP/1.1
Host: [<Acumatica ERP host>]
```

## Usage Notes

For each attempt to sign in to Acumatica ERP, you must implement the signing out from the service after you finish your work with Acumatica ERP to close the session. If the session is not closed, you may have issues with subsequent sign-ins to Acumatica ERP through the REST API.

If your applications failed to sign out from Acumatica ERP and the maximum number of concurrent sessions allowed by the license is reached, there is no way to forcibly terminate all sessions of the API users. Instead, a session is automatically closed after a 10-minute timeout.

**Parent topic:**[Basic Requests](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic.md)

