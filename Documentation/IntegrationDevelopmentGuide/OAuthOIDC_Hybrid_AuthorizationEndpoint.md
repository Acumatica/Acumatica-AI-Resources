# Hybrid Flow: Obtaining of an Authorization Code, Access Token, and ID Token from the Authorization Endpoint {#_9cd888ba-aa9a-4140-b5e9-4da297fade89 .concept}

To obtain an authorization code, ID token, and access token from the authorization endpoint, the client application connects to the authorization endpoint of Acumatica ERP with the `GET` HTTP method and specifies the parameters of the request in the URL. For details on the request and the response, see the following sections.

## HTTP Method and URL { .section}

The client application connects to the authorization endpoint of Acumatica ERP with the `GET` method. The client application can use one of the following approaches for the URL:

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
|response\_type|The type of the response, which can be one of the following:-   `code id_token`: Is used to retrieve an ID token and authorization code.
-   `code token`: Is used to retrieve an access token and authorization code. No ID token is returned.
-   `code id_token token`: Is used to retrieve an ID token, access token, and authorization code.

|
|client\_id|The client ID that was assigned to the client application during the registration of the application in Acumatica ERP. The client ID must have the format in which the ID was generated during the registration of the application. That is, the client ID must include an auto-generated string and the ID of the tenant, such as *88358B02-A48D-A50E-F710-39C1636C30F6@MyTenant*. The client application will have access to the data of the tenant specified in the client ID.|
|redirect\_uri|The URI in the client application to which the response to the request should be sent. The URI must exactly match one of the values specified for the application in the **Redirect URI** column on the **Redirect URIs** tab of the [Connected Applications](../Shared/../UserGuide/SM_30_30_10.md#) \(SM303010\) form.|
|response\_mode|The way the system sends the request to the redirect URI in response for the authorization request. The response mode can be one of the following: -   `form_post`: The system uses the `POST` HTTP method to send a request to the redirect\_uri address. The request body, which includes the response parameters, has `application/x-www-form-urlencoded` format.
-   `fragment`: The system redirects the client application to the redirect\_uri address and adds all response parameters to the fragment component of the redirect URI.

|
|scope|The access scope that is requested by the client application. The scope can be a combination of the following values, delimited by spaces:

 -   openid: Requests access to the personal information of the user. This scope is mandatory for the Hybrid flow.
-   email: Requests disclosure of the user's email address.
-   profile: Requests disclosure of the user's profile information.
-   phone: Requests disclosure of the user's phone number.
-   api: Requests access to the REST API, screen-based SOAP API, and OData interface.

If this scope is granted and the api:concurrent\_access scope is not granted, Acumatica ERP manages the sessions of the application through tokens. Acumatica ERP issues the first access token along with the session ID. If the client application requests a new access token by presenting a refresh token, Acumatica ERP reuses the session ID that was issued for the first access token issued with the refresh token. That is, the system uses a single session for each access granted to the client application. For details about the license limitations related to the number of sessions for client applications, see [License Restrictions for API Users](IS__con_License_Restrictions_API_Users.md).

-   offline\_access: Requests that a refresh token be granted. If a user grants this scope to the application, Acumatica ERP issues to the client application a refresh token along with the access token. When the access token has expired, the client application can request a new access token by sending a request to the token endpoint and providing the refresh token. By default, the whole chain for the refresh token expires 30 days after the initial authentication process. However, you can change these settings in the **Refresh Tokens** section of the Summary area of the [Connected Applications](../Shared/../UserGuide/SM_30_30_10.md) \(SM303010\) form. For details, see [Registration of an OAuth 2.0 or OIDC Application: Sliding Expiration of Refresh Tokens](../Shared/../IntegrationDevelopmentGuide/OAuthOIDC_Registration_SlidingExpiration.md).
-   api:concurrent\_access: Requests permission for the concurrent use of multiple types of web service APIs. If a user grants this scope to the application, the client application can access data in Acumatica ERP in concurrent mode. In this case, Acumatica ERP can maintain multiple sessions for the client application, managing session IDs through cookies. We recommend that the client application request this scope only if concurrent access is required for the client application. For details about the license limitations related to the number of sessions for client applications, see [License Restrictions for API Users](../Shared/../IntegrationDevelopmentGuide/IS__con_License_Restrictions_API_Users.md).

|
|nonce|A string value that is used to associate a client session with an ID token.|

## Response { .section}

If the user is successfully signed in to Acumatica ERP and has granted access, a response is sent to the redirect URI specified in the authorization request. The `response_mode` parameter of the authorization request defines the way the request is sent. The response includes the following parameters.

**Tip:** The refresh token is not returned from the authorization endpoint. To obtain the refresh token, you need to send a request to the token endpoint with the received authorization code, as described in [Hybrid Flow: Obtaining of an Access Token and ID Token from the Token Endpoint](OAuthOIDC_Hybrid_TokenEndpoint.md).

|Parameter|Description|
|---------|-----------|
|code|The authorization code.|
|id\_token|The ID token associated with the authenticated session. The ID token contains three parts, which are separated by periods. The parts are Base64 encoded. The second part contains the claims to which the user granted access. For details on the ID token structure, see [https://openid.net/specs/openid-connect-core-1\_0.html\#IDToken](https://openid.net/specs/openid-connect-core-1_0.html#IDToken) and [https://www.rfc-editor.org/rfc/rfc7519.html](https://www.rfc-editor.org/rfc/rfc7519.html). We recommend that you use the existing standard libraries for parsing the tokens. The parameter is returned only if the openid scope was granted.|
|scope|The scope for which the access token and ID token are provided. The returning of this parameter is optional.|
|access\_token|The access token. The parameter is returned only if the api scope was granted.|
|token\_type|The type of the access token, which is *Bearer*. The parameter is returned only if the api scope was granted.|
|expires\_in|The period of time \(in seconds\) during which the access token is valid. The parameter is returned only if the api scope was granted.|

## Example: openid and email Scopes { .section}

The following example requests the *openid* and *email* scopes. \(Line breaks are for display purposes only.\)

```
GET https://localhost/AcumaticaDB/identity/connect/authorize?
response_type=code id_token
&client_id=58FCCFBD-0CF3-C047-B720-A631C976A8DD@U100
&redirect_uri=https://localhost
&scope=openid email
&response_mode=fragment
&nonce=test
```

Once the user grants access to the requested scopes, Acumatica ERP redirects the client application to the following URL.

```
https://localhost/#
code=fXatQXiNwxDc3YSy7Agjz_fKAJBUVN2UmpqTMLtVidY
&id_token=eyJ...gzw
&scope=openid%20email
```

## Example: openid, email, profile, and api Scopes { .section}

The following example requests the *openid*, *email*, *profile*, and *api* scopes. \(Line breaks are for display purposes only.\)

```
GET https://localhost/AcumaticaDB/identity/connect/authorize?
response_type=code id_token token
&client_id=58FCCFBD-0CF3-C047-B720-A631C976A8DD@U100
&redirect_uri=https://localhost
&scope=openid email profile api
&response_mode=fragment
&nonce=test
```

Once the user grants access to the requested scopes, Acumatica ERP redirects the client application to the following URL.

```
https://localhost/#
code=Xa8dL8wAL23PmZEdoCBzTDJyj46_NPx_pplzlf-tFas
&id_token=eyJ...EMo
&token_type=Bearer
&expires_in=3600
&scope=openid%20email%20profile%20api
```

**Parent topic:**[Implementing the Hybrid Flow](../IntegrationDevelopmentGuide/OAuthOIDC_Hybrid_Mapref.md)

