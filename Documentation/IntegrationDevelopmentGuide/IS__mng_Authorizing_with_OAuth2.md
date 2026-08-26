# Authorizing Client Applications to Work with Acumatica ERP {#_a8f71c44-9f5c-4af8-9d47-bc815c8a58e7 .concept}

Acumatica ERP supports the OAuth 2.0 mechanism of authorization and OpenID Connect \(OIDC\) authentication protocol for applications that are integrated with Acumatica ERP through web services application programming interfaces \(APIs\) or OData. When a client application of Acumatica ERP uses OAuth 2.0 or OIDC, the client application does not operate with the Acumatica ERP credentials to sign a user in to Acumatica ERP; instead, the application obtains an access token from Acumatica ERP and uses this token when it requests data from Acumatica ERP.

Depending on the flow that the client application implements, the client application either has no information on the credentials of an Acumatica ERP user or uses this information only once to obtain the access token. OAuth 2.0 or OIDC improves the security of the Acumatica ERP data accessed by the application and simplifies the management of access rights.

The client application that implements OAuth 2.0 or OIDC can use one of the authorization flows supported by Acumatica ERP, which are the following:

-   Authorization Code \(OAuth 2.0 and OIDC\)
-   Implicit \(OAuth 2.0 and OIDC\)
-   Resource Owner Password Credentials \(OAuth 2.0\)
-   Hybrid \(OIDC\)

In this part, you can find details on the authorization flows and information about how to register the OAuth 2.0 or OIDC client applications and revoke access of the applications.

-   **[Getting Started with OAuth 2.0 and OpenID Connect Authorization](../IntegrationDevelopmentGuide/OAuthOIDC_GettingStarted_Mapref.md)**  

-   **[Registering Client Applications That Support OAuth 2.0 or OIDC](../IntegrationDevelopmentGuide/OAuthOIDC_Registration_Mapref.md)**  

-   **[Implementing the Authorization Code Flow](../IntegrationDevelopmentGuide/OAuthOIDC_AuthorizationCode_Mapref.md)**  

-   **[Implementing the Implicit Flow](../IntegrationDevelopmentGuide/OAuthOIDC_Implicit_Mapref.md)**  

-   **[Implementing the Resource Owner Password Credentials Flow](../IntegrationDevelopmentGuide/OAuthOIDC_ResourceOwner_Mapref.md)**  

-   **[Implementing the Hybrid Flow](../IntegrationDevelopmentGuide/OAuthOIDC_Hybrid_Mapref.md)**  


