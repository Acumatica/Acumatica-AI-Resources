# Authorization Code Flow: Obtaining of an Authorization Code {#_a8fbe87f-647a-48dd-b713-de6c123a4de4 .concept}

To obtain an authorization code, the client application connects to the authorization endpoint of Acumatica ERP with the `GET` HTTP method and specifies the parameters of the request in the URL. For details on the request and the response, see the following sections.

## HTTP Method and URL { .section}

The client application connects to the authorization endpoint of Acumatica ERP with the `GET` method. The client application can use one of the following options for the URL:

-   If the client application supports OpenID Connect Discovery, the client application can use the discovery endpoint address, as shown in the following code.

    ```
    https://<Acumatica ERP instance URL>/identity/.well-known/openid-configuration
    ```

    **Tip:** We recommend that the client application use the discovery endpoint address to obtain the token endpoint address. The use of the discovery endpoint eliminates the need to change the application if the address of the token endpoint changes.

    **Attention:** A request to the discovery endpoint does not provide the access token; it provides the address of the token endpoint from which you can receive the access token.

-   The client application can directly use the authorization endpoint address, which is shown in the following code.

    ```
    https://<Acumatica ERP instance URL>/identity/connect/authorize
    ```


## Parameters { .section}

The client application should specify the following URL parameters.

|Parameter|Description|
|---------|-----------|
|response\_type|The type of the flow, which must be set to `code` for the Authorization Code flow.|
|client\_id|The client ID that was assigned to the client application during the registration of the application in Acumatica ERP. The client ID must have the format in which the ID was generated during the registration of the application. That is, the client ID must include an auto-generated string and the ID of the tenant, such as *88358B02-A48D-A50E-F710-39C1636C30F6@MyTenant*. The client application will have access to the data of the tenant specified in the client ID.|
|redirect\_uri|The URI in the client application to which the response to the request should be sent. The URI must exactly match one of the values specified for the application in the **Redirect URI** column on the **Redirect URIs** tab of the [Connected Applications](../Shared/../UserGuide/SM_30_30_10.md#) \(SM303010\) form.|
|scope|The access scope that is requested by the client application. The scope can be a combination of the following values, delimited by spaces:

 -   openid: Requests access to the personal information of the user. If this scope is granted, the OpenID Connect authorization mechanism is used. Without this scope, OAuth 2.0 is used.
-   email: Requests disclosure of the user's email address.
-   profile: Requests disclosure of the user's profile information.
-   phone: Requests disclosure of the user's phone number.
-   api: Requests access to the REST API, screen-based SOAP API, and OData interface.

If this scope is granted and the api:concurrent\_access scope is not granted, Acumatica ERP manages the sessions of the application through tokens. Acumatica ERP issues the first access token along with the session ID. If the client application requests a new access token by presenting a refresh token, Acumatica ERP reuses the session ID that was issued for the first access token issued with the refresh token. That is, the system uses a single session for each access granted to the client application. For details about the license limitations related to the number of sessions for client applications, see [License Restrictions for API Users](IS__con_License_Restrictions_API_Users.md).

-   offline\_access: Requests that a refresh token be granted. If a user grants this scope to the application, Acumatica ERP issues to the client application a refresh token along with the access token. When the access token has expired, the client application can request a new access token by sending a request to the token endpoint and providing the refresh token. By default, the whole chain for the refresh token expires 30 days after the initial authentication process. However, you can change these settings in the **Refresh Tokens** section of the Summary area of the [Connected Applications](../Shared/../UserGuide/SM_30_30_10.md) \(SM303010\) form. For details, see [Registration of an OAuth 2.0 or OIDC Application: Sliding Expiration of Refresh Tokens](../Shared/../IntegrationDevelopmentGuide/OAuthOIDC_Registration_SlidingExpiration.md).
-   api:concurrent\_access: Requests permission for the concurrent use of multiple types of web service APIs. If a user grants this scope to the application, the client application can access data in Acumatica ERP in concurrent mode. In this case, Acumatica ERP can maintain multiple sessions for the client application, managing session IDs through cookies. We recommend that the client application request this scope only if concurrent access is required for the client application. For details about the license limitations related to the number of sessions for client applications, see [License Restrictions for API Users](../Shared/../IntegrationDevelopmentGuide/IS__con_License_Restrictions_API_Users.md).

|
|code\_challenge\_method|For a client application that uses the proof key for code exchange \(PKCE\), the code challenge method, which must be set to `S256`.|
|code\_challenge|For a client application that uses PKCE, the code challenge. The code challenge is the base64url-encoded SHA-256 hash of the code verifier. The code verifier is a cryptographically random string that is used to correlate the authorization request to the token request. For details about the code verifier and the code challenge, see [https://www.rfc-editor.org/rfc/rfc7636](https://www.rfc-editor.org/rfc/rfc7636).|

## Response { .section}

Once the user grants access to the requested scopes, Acumatica ERP redirects the client application to the redirect\_uri address that was specified in the request, and adds the authorization code in the code URL parameter.

## Example { .section}

An example of a request to the authorization endpoint is shown below. \(Line breaks are for display purposes only.\)

```
GET https://localhost/AcumaticaDB/identity/connect/authorize?
response_type=code
&client_id=58FCCFBD-0CF3-C047-B720-A631C976A8DD@U100
&redirect_uri=http%3A%2F%2Flocalhost%2Fclientapp%2F
&scope=api%20offline_access
```

Once the user grants access to the requested scopes, Acumatica ERP redirects the client application to the following URL: *https://localhost/clientapp/?code=rOBVT0nmPhaXlHeBpE81iJBrfIt5r7ud5\_2czGYIr14&amp;scope=api%20offline\_access*.

**Parent topic:**[Implementing the Authorization Code Flow](../IntegrationDevelopmentGuide/OAuthOIDC_AuthorizationCode_Mapref.md)

