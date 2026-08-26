# Resource Owner Password Credentials Flow: Obtaining of an Access Token {#_822ddb44-b14f-481a-90c7-f15521e61702 .concept}

To obtain an access token, a client application that implements the Resource Owner Password Credentials flow connects to the token endpoint of Acumatica ERP with the `POST` method. For details on the request and the response, see the following sections.

## HTTP Method and URL { .section}

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
|grant\_type|The type of the OAuth 2.0 flow, which must be set to `password` for the resource owner password credentials flow.|
|client\_id|The client ID that was assigned to the client application during the registration of the application in Acumatica ERP. The client ID must have the format in which the ID was generated during the registration of the application. That is, the client ID must include an auto-generated string and the ID of the tenant, such as *88358B02-A48D-A50E-F710-39C1636C30F6@MyTenant*. The client application will have access to the data of the tenant specified in the client ID.|
|client\_secret|For a client application that uses a shared secret, the value of the secret that was created for the client application during the registration of the application in Acumatica ERP.|
|client\_assertion\_type|For a client application that uses JSON Web Token \(JWT\) bearer tokens, the client assertion type, which must be set to *urn:ietf:params:oauth:client-assertion-type:jwt-bearer*.|
|client\_assertion|For a client application that uses JSON Web Token \(JWT\) bearer tokens, a single JWT.|
|username|The username of an Acumatica ERP user.|
|password|The password for the specified username.|
|scope|The access scope that is requested by the client application. The scope can be a combination of the following values, delimited by spaces:

 -   api: Requests access to the REST API, screen-based SOAP API, and OData interface.

If this scope is granted and the api:concurrent\_access scope is not granted, Acumatica ERP manages the sessions of the application through tokens. Acumatica ERP issues the first access token along with the session ID. If the client application requests a new access token by presenting a refresh token, Acumatica ERP reuses the session ID that was issued for the first access token issued with the refresh token. That is, the system uses a single session for each access granted to the client application. For details about the license limitations related to the number of sessions for client applications, see [License Restrictions for API Users](IS__con_License_Restrictions_API_Users.md).

-   offline\_access: Requests that a refresh token be granted. If a user grants this scope to the application, Acumatica ERP issues to the client application a refresh token along with the access token. When the access token has expired, the client application can request a new access token by sending a request to the token endpoint and providing the refresh token. By default, the whole chain for the refresh token expires 30 days after the initial authentication process. However, you can change these settings in the **Refresh Tokens** section of the Summary area of the [Connected Applications](../Shared/../UserGuide/SM_30_30_10.md) \(SM303010\) form. For details, see [Registration of an OAuth 2.0 or OIDC Application: Sliding Expiration of Refresh Tokens](../Shared/../IntegrationDevelopmentGuide/OAuthOIDC_Registration_SlidingExpiration.md).
-   api:concurrent\_access: Requests permission for the concurrent use of multiple types of web service APIs. If a user grants this scope to the application, the client application can access data in Acumatica ERP in concurrent mode. In this case, Acumatica ERP can maintain multiple sessions for the client application, managing session IDs through cookies. We recommend that the client application request this scope only if concurrent access is required for the client application. For details about the license limitations related to the number of sessions for client applications, see [License Restrictions for API Users](../Shared/../IntegrationDevelopmentGuide/IS__con_License_Restrictions_API_Users.md).

|

## Response { .section}

Acumatica ERP verifies the provided application credentials and issues the access token, which the client application should provide with each data request to Acumatica ERP.

A successful response includes the following parameters in the response body.

|Parameter|Description|
|---------|-----------|
|token\_type|The type of the access token, which is *Bearer*. The parameter is returned only if the api scope was granted.|
|access\_token|The access token. The parameter is returned only if the api scope was granted.|
|expires\_in|The period of time \(in seconds\) during which the access token is valid. The parameter is returned only if the api scope was granted.|
|scope|The scope for which the access token is valid.|
|refresh\_token|The refresh token. The parameter is returned only if the offline\_access scope was granted.|

## Example { .section}

An example of a request is shown below. \(Line breaks are for display purposes only.\)

```
POST /identity/connect/token HTTP/1.1
Host: https://localhost/AcumaticaDB
Content-Type: application/x-www-form-urlencoded

grant_type=password
&client_id=8E0761D9-F4EC-2D4B-A60F-BCE2708C6FDD%40U100
&client_secret=O19LLT5Z0SzFbCIKLXLqQQ
&username=admin
&password=123
&scope=api%20offline_access
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

**Parent topic:**[Implementing the Resource Owner Password Credentials Flow](../IntegrationDevelopmentGuide/OAuthOIDC_ResourceOwner_Mapref.md)

