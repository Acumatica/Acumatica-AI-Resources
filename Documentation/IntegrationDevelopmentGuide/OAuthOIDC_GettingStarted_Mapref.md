# Getting Started with OAuth 2.0 and OpenID Connect Authorization {#_a5a25d1d-e345-4154-a398-3bff4898836c .concept}

OAuth 2.0 and OpenID Connect \(OIDC\) are the protocols that can be used for authentication and authorization in Acumatica ERP.

OAuth 2.0 enables third-party applications to obtain limited access to Acumatica ERP web services on behalf of a resource owner. It can be used for enabling secure access to the web services without sharing user credentials. OAuth 2.0 uses access tokens to grant access to resources.

OIDC extends OAuth 2.0 by adding an identity layer on top of the authorization process. It allows client applications to verify the identity of users based on the authentication performed by an authorization server, as well as to obtain basic profile information about the authenticated user. OIDC introduces the concept of an ID token, which is a JSON Web Token \(JWT\) that contains identity information about the user.

In this chapter, you can find overview information about support of OAuth 2.0 and OIDC in Acumatica ERP and learn about general steps you need to perform to implement OAuth 2.0 or OIDC in your application. The chapter also contains details about the implementation of the common steps for each authorization flow.

-   **[OAuth 2.0 and OIDC: General Information](../IntegrationDevelopmentGuide/OAuthOIDC_GettingStarted_GeneralInfo.md)**  

-   **[OAuth 2.0 and OIDC: Comparison of the Flows](../IntegrationDevelopmentGuide/OAuthOIDC_GettingStarted_FlowComparison.md)**  

-   **[OAuth 2.0 and OIDC: Working with Data in Acumatica ERP](../IntegrationDevelopmentGuide/OAuthOIDC_GettingStarted_DataRetrieval.md)**  

-   **[OAuth 2.0 and OIDC: Refreshing of an Access Token](../IntegrationDevelopmentGuide/OAuthOIDC_GettingStarted_RefreshToken.md)**  

-   **[OAuth 2.0 and OIDC: Obtaining of the User Data](../IntegrationDevelopmentGuide/OAuthOIDC_GettingStarted_UserInfoEndpoint.md)**  

-   **[OAuth 2.0 and OIDC: Session Management](../IntegrationDevelopmentGuide/OAuthOIDC_GettingStarted_SignOut.md)**  


**Parent topic:**[Authorizing Client Applications to Work with Acumatica ERP](../IntegrationDevelopmentGuide/IS__mng_Authorizing_with_OAuth2.md)

