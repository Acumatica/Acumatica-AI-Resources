# Implicit Flow: Obtaining of an Access Token and ID Token {#_c93ae0ae-73f4-4342-bb1f-fe20874d7ed8 .concept}

To obtain an access token, an ID token, or both, a client application that implements the Implicit flow connects to the authorization endpoint of Acumatica ERP with the `GET` method. For details on the request and the response, see the following sections.

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
|response\_type|The type of the flow. The type can be one of the following:

 -   *token*: Is used for OAuth 2.0 to retrieve an access token. You must include *api* in the scope parameter.
-   *id\_token*: Is used for OIDC to retrieve an ID token. No access token is returned. Do not include *api* in the scope parameter.
-   *id\_token token*: Is used for OIDC to retrieve an ID token and access token. You must include *api* in the scope parameter.

|
|client\_id|The client ID that was assigned to the client application during the registration of the application in Acumatica ERP. The client ID must have the format in which the ID was generated during the registration of the application. That is, the client ID must include an auto-generated string and the ID of the tenant, such as *88358B02-A48D-A50E-F710-39C1636C30F6@MyTenant*. The client application will have access to the data of the tenant specified in the client ID.|
|redirect\_uri|The URI in the client application to which the response to the request should be sent. The URI must exactly match one of the values specified for the application in the **Redirect URI** column on the **Redirect URIs** tab of the [Connected Applications](../Shared/../UserGuide/SM_30_30_10.md#) \(SM303010\) form.|
|scope|The access scope that is requested by the client application. The scope can be a combination of the following values, delimited by spaces:

 -   openid: Requests access to the personal information of the user. If this scope is granted, the OpenID Connect authorization mechanism is used. Without this scope, OAuth 2.0 is used.
-   email: Requests disclosure of the user's email address.
-   profile: Requests disclosure of the user's profile information.
-   phone: Requests disclosure of the user's phone number.
-   api: Requests access to the REST API, screen-based SOAP API, and OData interface.

**Important:** The api scope is required if the *token* or *id\_token token* response type is specified.

If this scope is granted and the api:concurrent\_access scope is not granted, Acumatica ERP manages the sessions of the application through tokens. The system uses a single session for each access granted to the client application.

-   api:concurrent\_access: Requests permission for the concurrent use of multiple types of web service APIs. If a user grants this scope to the application, the client application can access data in Acumatica ERP in concurrent mode. In this case, Acumatica ERP can maintain multiple sessions for the client application, managing session IDs through cookies. We recommend that the client application request this scope only if concurrent access is required for the client application. For details about the license limitations related to the number of sessions for client applications, see [License Restrictions for API Users](../Shared/../IntegrationDevelopmentGuide/IS__con_License_Restrictions_API_Users.md).

 **Note:** The offline\_access scope is not supported for the Implicit flow.

|
|nonce|A string value that is used to associate a client session with an ID token, and to mitigate replay attacks. This parameter is required if the *id\_token* or *id\_token token* response type is specified.|

## Response { .section}

Once the user grants access to the requested scopes, Acumatica ERP redirects the client application to the redirect\_uri address, which was specified in the request, and adds the requested data in the fragment section of the redirect URL. The redirect URL includes the following fragment parameters.

|Parameter|Description|
|---------|-----------|
|token\_type|The type of the access token, which is *Bearer*. The parameter is returned only if the api scope was granted.|
|access\_token|The access token. The parameter is returned only if the api scope was granted.|
|expires\_in|The period of time \(in seconds\) during which the access token is valid. The parameter is returned only if the api scope was granted.|
|scope|The scope for which the access token and ID token are provided. The returning of this parameter is optional.|
|id\_token|The ID token associated with the authenticated session. The ID token contains three parts, which are separated by periods. The parts are Base64 encoded. The second part contains the claims to which the user granted access. For details on the ID token structure, see [https://openid.net/specs/openid-connect-core-1\_0.html\#IDToken](https://openid.net/specs/openid-connect-core-1_0.html#IDToken) and [https://www.rfc-editor.org/rfc/rfc7519.html](https://www.rfc-editor.org/rfc/rfc7519.html). We recommend that you use the existing standard libraries for parsing the tokens. The parameter is returned only if the openid scope was granted.|

## Example: openid, email, and api Scopes { .section}

The following example requests the *openid*, *email*, and *api* scopes. \(Line breaks are for display purposes only.\)

```
GET https://localhost/AcumaticaDB/identity/connect/authorize?
response_type=id_token%20token
&client_id=2B0C8CF1-FFD4-A0DE-1673-F03084F16240@U100
&redirect_uri=https://localhost
&scope=openid%20email%20api
&nonce=test
```

Once the user grants access to the requested scopes, Acumatica ERP redirects the client application to the following URL.

```
https://localhost/#
id_token=ey...rvE
&access_token=BTGTm5nSGIZWoypYv_QOjD00ziczKaiMEDIVcNf6XpM
&token_type=Bearer
&expires_in=3600
&scope=openid%20email%20api
```

## Example: openid and email Scopes { .section}

The following example requests the *openid* and *email* scopes. \(Line breaks are for display purposes only.\)

```
GET https://localhost/AcumaticaDB/identity/connect/authorize?
response_type=id_token
&client_id=8F41DD85-CA55-8518-8464-4C983D64BBA4@U100
&redirect_uri=https://localhost
&scope=openid%20email
&nonce=test
```

Once a user grants access to the requested scope, Acumatica ERP redirects the client application to the following URL.

```
https://localhost/#
id_token=eyJh...3YNA
&scope=openid
```

## Example: api Scope { .section}

The following example requests the *api* scope. \(Line breaks are for display purposes only.\)

```
GET http://localhost/AcumaticaDB/identity/connect/authorize?
response_type=token
&client_id=8F41DD85-CA55-8518-8464-4C983D64BBA4@U100
&redirect_uri=https://localhost
&scope=api
```

Once the user grants access to the requested scope, Acumatica ERP redirects the client application to the following URL.

```
https://localhost/#
access_token=7qgkxo-tJTbouSs8OtU3gdNhW0YQZVA9n6ZQt364nks
&token_type=Bearer
&expires_in=3600
&scope=api
```

**Parent topic:**[Implementing the Implicit Flow](../IntegrationDevelopmentGuide/OAuthOIDC_Implicit_Mapref.md)

