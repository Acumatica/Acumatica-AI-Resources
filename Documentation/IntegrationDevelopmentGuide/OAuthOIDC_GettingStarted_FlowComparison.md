# OAuth 2.0 and OIDC: Comparison of the Flows {#_f7add280-bc3c-4e73-b242-580c94af10a2 .concept}

The table below summarizes the characteristics of the authorization flows supported by Acumatica ERP.

|Characteristic|Authorization Code flow|Implicit flow|Resource Owner Password Credentials flow|Hybrid flow|
|--------------|-----------------------|-------------|----------------------------------------|-----------|
|The OAuth 2.0 authorization mechanism is available.|Yes|Yes|Yes|No|
|OpenID Connect \(OIDC\) is available.|Yes|Yes|No|Yes|
|The access token is returned from the authorization endpoint.|No|Yes|No|Yes|
|The access token is returned from the token endpoint.|Yes|No|Yes|Yes|
|The refresh token can be issued.|Yes|No|Yes|Yes|
|The client application has access to Acumatica ERP credentials \(username and password\).|No|No|Yes|No|
|The user explicitly grants access to the requested scopes.|Yes|Yes|No|Yes|
|The client application is authenticated in Acumatica ERP \(that is, the client application provides the client ID and client secret or the client ID and JWT bearer token\).|Yes|No|Yes|Yes|

**Parent topic:**[Getting Started with OAuth 2.0 and OpenID Connect Authorization](../IntegrationDevelopmentGuide/OAuthOIDC_GettingStarted_Mapref.md)

