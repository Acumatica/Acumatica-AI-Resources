# OAuth 2.0 and OIDC: Refreshing of an Access Token {#_2a5781c6-b661-409c-82f3-8adafd6a332d .concept}

An access token is valid for a specific period of time, which is specified in the response that returns the access token. When the access token expires, the client application can request a new access token by providing the refresh token to the token endpoint. To request a new access token, the client application should use the `POST` method. The following sections provide details on the request and the response.

## HTTP Method and URL { .section}

To request a new access token, the client application should use the `POST` HTTP method. The client application can use one of the following approaches for the URL:

-   If the client application supports OpenID Connect Discovery, the client application can use the discovery endpoint address, as shown in the following code.

    ```
    https://<Acumatica ERP instance URL>/identity/.well-known/openid-configuration
    ```

    **Tip:** We recommend that the client application use the discovery endpoint address to obtain the token endpoint address. The use of the discovery endpoint eliminates the need to change the application if the address of the token endpoint changes.

    **Attention:** A request to the discovery endpoint does not provide the access token; it provides the address of the token endpoint from which you can receive the access token.

-   The client application can directly use the token endpoint address, as shown in the following code.

    ```
    https://<Acumatica ERP instance URL>/identity/connect/token
    ```


## HTTP Header { .section}

To refresh an access token, you use the following HTTP header.

|Key|Value|
|---|-----|
|`Content-Type`|`application/x-www-form-urlencoded`|

## Request Body { .section}

To refresh an access token, you specify the following parameters in the request body.

|Parameter|Description|
|---------|-----------|
|grant\_type|The type of the request, which must be set to `refresh_token` for the request of the refresh token.|
|client\_id|The client ID that was assigned to the client application during the registration of the application in Acumatica ERP. The client ID must have the format in which the ID was generated during the registration of the application. That is, the client ID must include an auto-generated string and the ID of the tenant, such as *88358B02-A48D-A50E-F710-39C1636C30F6@MyTenant*. The client application will have access to the data of the tenant specified in the client ID.|
|client\_secret|For a client application that uses a shared secret, the value of the secret that was created for the client application during the registration of the application in Acumatica ERP.|
|client\_assertion\_type|For a client application that uses JSON Web Token \(JWT\) bearer tokens, the client assertion type, which must be set to *urn:ietf:params:oauth:client-assertion-type:jwt-bearer*.|
|client\_assertion|For a client application that uses JSON Web Token \(JWT\) bearer tokens, a single JWT.|
|refresh\_token|The refresh token that the client application received from the token endpoint along with the access token if a user granted the offline\_access scope to the client application.|

## Response Body {#_c3ae6faf-4898-4097-a3f3-2e74200d4939 .section}

Acumatica ERP verifies the provided application credentials and issues the new access token and the new refresh token. To request the access token once again, the client application should use the latest issued refresh token. That is, if the client application has received a new refresh token, the client application should discard the previous refresh token and use the new one.

A successful response includes the following parameters in the response body.

|Parameter|Description|
|---------|-----------|
|token\_type|The type of the access token, which is *Bearer*.|
|access\_token|The new access token.|
|expires\_in|The period of time \(in seconds\) during which the access token is valid.|
|scope|The scope for which the access token and ID token are provided. The returning of this parameter is optional.|
|refresh\_token|The new refresh token.|
|id\_token|The ID token associated with the authenticated session. The ID token contains three parts, which are separated by periods. The parts are Base64 encoded. The second part contains the claims to which the user granted access. For details on the ID token structure, see [https://openid.net/specs/openid-connect-core-1\_0.html\#IDToken](https://openid.net/specs/openid-connect-core-1_0.html#IDToken) and [https://www.rfc-editor.org/rfc/rfc7519.html](https://www.rfc-editor.org/rfc/rfc7519.html). We recommend that you use the existing standard libraries for parsing the tokens. The parameter is returned only if the openid scope was granted.|

**Parent topic:**[Getting Started with OAuth 2.0 and OpenID Connect Authorization](../IntegrationDevelopmentGuide/OAuthOIDC_GettingStarted_Mapref.md)

