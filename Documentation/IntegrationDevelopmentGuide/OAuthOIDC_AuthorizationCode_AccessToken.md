# Authorization Code Flow: Obtaining of an Access Token and ID Token {#_81fe7518-a332-4629-bc63-e3459a116703 .concept}

To obtain an access token, an ID token, or both, a client application that implements the Authorization Code flow connects to the token endpoint of Acumatica ERP with the `POST` method. For details on the request and the response, see the following sections.

## HTTP Method and URL {#_76d8934a-3c19-4ee8-b537-005719690be4 .section}

The client application connects to the token endpoint of Acumatica ERP with the `POST` method. The client application can use one of the following options for the URL:

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

You use the following HTTP header.

|Key|Value|
|---|-----|
|`Content-Type`|`application/x-www-form-urlencoded`|

## Request Body { .section}

You specify the following parameters in the request body.

|Parameter|Description|
|---------|-----------|
|grant\_type|The type of the OAuth 2.0 flow, which must be set to *authorization\_code* for the Authorization Code flow.|
|client\_id|The client ID that was assigned to the client application during the registration of the application in Acumatica ERP. The client ID must have the format in which the ID was generated during the registration of the application. That is, the client ID must include an auto-generated string and the ID of the tenant, such as *88358B02-A48D-A50E-F710-39C1636C30F6@MyTenant*. The client application will have access to the data of the tenant specified in the client ID.|
|code|The authorization code that the client application has received from the authorization endpoint.|
|client\_secret|For a client application that uses a shared secret, the value of the secret that was created for the client application during the registration of the application in Acumatica ERP.|
|client\_assertion\_type|For a client application that uses JSON Web Token \(JWT\) bearer tokens, the client assertion type, which must be set to *urn:ietf:params:oauth:client-assertion-type:jwt-bearer*.|
|client\_assertion|For a client application that uses JSON Web Token \(JWT\) bearer tokens, a single JWT.|
|code\_verifier|For a client application that uses the proof key for code exchange \(PKCE\), the code verifier for which the client application sent the code challenge during the request for the authorization code. For details about the code verifier and the code challenge, see [https://www.rfc-editor.org/rfc/rfc7636](https://www.rfc-editor.org/rfc/rfc7636).|
|redirect\_uri|The URI in the client application to which the response to the request should be sent. The URI must exactly match one of the values specified for the application in the **Redirect URI** column on the **Redirect URIs** tab of the [Connected Applications](../Shared/../UserGuide/SM_30_30_10.md#) \(SM303010\) form.|

## Response { .section}

Acumatica ERP verifies the provided application credentials and issues an access token, an ID token, and a refresh token if they have been requested by the application. The client application should provide the access token with each data request to Acumatica ERP.

A successful response includes the following parameters in the response body.

|Parameter|Description|
|---------|-----------|
|token\_type|The type of the access token, which is *Bearer*. The parameter is returned only if the api scope was granted.|
|access\_token|The access token. The parameter is returned only if the api scope was granted.|
|expires\_in|The period of time \(in seconds\) during which the access token is valid. The parameter is returned only if the api scope was granted.|
|scope|The scope for which the access token and ID token are provided. The returning of this parameter is optional.|
|refresh\_token|The refresh token. The parameter is returned only if the offline\_access scope was granted.|
|id\_token|The ID token associated with the authenticated session. The ID token contains three parts, which are separated by periods. The parts are Base64 encoded. The second part contains the claims to which the user granted access. For details on the ID token structure, see [https://openid.net/specs/openid-connect-core-1\_0.html\#IDToken](https://openid.net/specs/openid-connect-core-1_0.html#IDToken) and [https://www.rfc-editor.org/rfc/rfc7519.html](https://www.rfc-editor.org/rfc/rfc7519.html). We recommend that you use the existing standard libraries for parsing the tokens. The parameter is returned only if the openid scope was granted.|

## Example { .section}

The following example shows a request for an access token with a shared secret provided with the request. \(Line breaks are for display purposes only.\)

```
POST /identity/connect/token HTTP/1.1
Host: https://localhost/AcumaticaDB
Content-Type: application/x-www-form-urlencoded

grant_type=authorization_code
&code=rOBVT0nmPhaXlHeBpE81iJBrfIt5r7ud5_2czGYIr14
&client_id=58FCCFBD-0CF3-C047-B720-A631C976A8DD@U100
&client_secret=cTUa8QxZnloGoxpT_u3ZBA
&redirect_uri=https%3A%2F%2Flocalhost
```

A successful response has the body shown in the following example.

```
{
    "access_token": "u39uoZj9A4fj2T80Zx0Qirznr0oqNb1qK92c48ZdxUg",
    "expires_in": 3600,
    "token_type": "Bearer",
    "scope": "api offline_access"
}
```

**Parent topic:**[Implementing the Authorization Code Flow](../IntegrationDevelopmentGuide/OAuthOIDC_AuthorizationCode_Mapref.md)

