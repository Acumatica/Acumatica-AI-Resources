# OAuth 2.0 and OIDC: Obtaining of the User Data {#_065d2515-3e48-4ac6-8c62-56ae546f92eb .concept}

To obtain the user data, the client application can connect to the user information endpoint of Acumatica ERP with the `GET` HTTP method. See details on the request and the response in the following sections.

**Attention:** The way of obtaining user data that is described in this topic is optional. The recommended way is to parse the validated ID token, which contains the same claims as the ones that are obtained through the request described in this topic. The recommended way does not require an additional call to Acumatica ERP.

## HTTP Method and URL { .section}

The client application connects to the user information endpoint of Acumatica ERP with the `GET` HTTP method. The client application can use one of the following options for the URL:

-   If the client application supports OpenID Connect Discovery, the client application can use the discovery endpoint address, as shown in the following code.

    ```
    https://<Acumatica ERP instance URL>/identity/.well-known/openid-configuration
    ```

    **Tip:** We recommend that the client application use the discovery endpoint address to obtain the token endpoint address. The use of the discovery endpoint eliminates the need to change the application if the address of the token endpoint changes.

    **Attention:** A request to the discovery endpoint does not provide the access token; it provides the address of the token endpoint from which you can receive the access token.

-   The client application can directly use the address of the user information endpoint, which is shown below.

    ```
    https://<Acumatica ERP instance URL>/identity/connect/userinfo
    ```


## HTTP Header { .section}

To obtain the user data, you use the following HTTP header.

|Key|Value|
|---|-----|
|`Authorization`|The token type, which is *Bearer*, and the access token that the client application has received from the authorization or token endpoint. The client application should include the access token in the `Authorization` header of each request to Acumatica ERP. **Note:** For the application to obtain the user data, the access token must include the openid scope.

|

## Response Body { .section}

The response body includes the claims to which the user has provided access in JSON format.

## Example { .section}

An example of a request to the user information endpoint is shown below.

```
GET /AcumaticaDB/identity/connect/userinfo HTTP/1.1
Host: localhost
Authorization: Bearer cde78a99a2dc6388eb8c7242a90cf9bc
```

Acumatica ERP verifies the provided access token and returns the following data in the response body.

```
{
    "name": "Kimberly Gibbs",
    "given_name": "Kimberly",
    "family_name": "Gibbs",
    "preferred_username": "gibbs",
    "email": "gibbs@sweetlife.com",
    "zoneinfo": "",
    "updated_at": "1/1/1900 12:00:00 AM",
    "sub": "gibbs@U100"
}
```

**Parent topic:**[Getting Started with OAuth 2.0 and OpenID Connect Authorization](../IntegrationDevelopmentGuide/OAuthOIDC_GettingStarted_Mapref.md)

