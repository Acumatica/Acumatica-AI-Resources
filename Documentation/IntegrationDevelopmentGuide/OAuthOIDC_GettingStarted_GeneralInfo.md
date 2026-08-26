# OAuth 2.0 and OIDC: General Information {#_c6294b6b-a460-491e-8130-ae55d063c15c .concept}

OAuth 2.0 and OpenID Connect \(OIDC\) are used in scenarios where secure authentication and authorization are required. The implementation of these mechanisms includes multiple steps that you need to do in the client application and in Acumatica ERP.

## Learning Objectives { .section}

In this chapter, you will learn the following:

-   Which steps you need to perform to implement OAuth 2.0 or OIDC
-   What the differences between the flows are
-   How to work with data in Acumatica ERP after successful authorization
-   How to refresh access to Acumatica ERP after access has expired

## Applicable Scenarios { .section}

You implement OAuth 2.0 or OIDC authorization of a client application in the following scenarios:

-   You need to provide secure access to Acumatica ERP through the REST API, SOAP API, or OData without sharing user credentials.
-   You need to implement single sign-on solutions where users can sign in once and access multiple applications without having to sign in separately to each one.
-   Only for OIDC: In the client application, you need to verify the identity of users and obtain basic profile information from Acumatica ERP.

## Authorization Implementation { .section}

To use OAuth 2.0 or OIDC, you need to perform the following general steps:

1.  You register the client application in Acumatica ERP.
2.  You implement the authorization flow in the client application.
3.  Optional: You implement the refreshing of the application access in the client application.
4.  You include the information about the connected application in the customization project.

**Attention:**

According to the OAuth 2.0 and OIDC specifications, a secure connection between a client application and the Acumatica ERP website with a Secure Sockets Layer \(SSL\) certificate is required. Therefore, you have to set up the Acumatica ERP website for HTTPS before the client application can work with data in Acumatica ERP. For more information, see [Preparation for the Acumatica ERP Installation: System Environment](../Shared/../UserGuide/INST_Preparing_Installation_System_Environment.md).

## Registration of the Application { .section}

Before an OAuth 2.0 or OIDC client application can work with Acumatica ERP, you must register this application in Acumatica ERP. For details about registration, see [Registration of an OAuth 2.0 or OIDC Application: General Information](OAuthOIDC_Registration_GeneralInfo.md).

## Implementation of the Authorization Flow in the Client Application { .section}

An authorization flow is a sequence of steps that the client application and Acumatica ERP follow during the authorization process. The client application that implements OAuth 2.0 or OIDC can use one of the authorization flows supported by Acumatica ERP, which are the following:

-   Authorization Code \(OAuth 2.0 and OIDC\), which is described further in [Authorization Code Flow: General Information](OAuthOIDC_AuthorizationCode_GeneralInfo.md)
-   Implicit \(OAuth 2.0 and OIDC\); for more information, see [Implicit Flow: General Information](OAuthOIDC_Implicit_GeneralInfo.md)
-   Resource Owner Password Credentials \(OAuth 2.0\), as described in [Resource Owner Password Credentials Flow: General Information](OAuthOIDC_ResourceOwner_GeneralInfo.md)
-   Hybrid \(OIDC\), which is explored more fully in [Hybrid Flow: General Information](OAuthOIDC_Hybrid_GeneralInfo.md)

Each authorization flow has its own use cases and security considerations, as you can see in [OAuth 2.0 and OIDC: Comparison of the Flows](OAuthOIDC_GettingStarted_FlowComparison.md). The choice of the flow depends on multiple factors, such as the type of client application, the level of trust between the client and the authorization server, and the security requirements of the application.

## Refreshing of the Application Access { .section}

The access token, which the client application obtains from Acumatica ERP during authorization of the application, is valid for a specific period of time, which is specified in the response that returns the access token. When the access token expires, the client application can request a new access token by providing the refresh token to the token endpoint. For details about refreshing the application access, see [OAuth 2.0 and OIDC: Refreshing of an Access Token](OAuthOIDC_GettingStarted_RefreshToken.md).

## Inclusion of a Connected Application in a Customization Project { .section}

If you need to use a client application that implements the OAuth 2.0 or OpenID Connect authorization mechanism with other Acumatica ERP instances, you need to include the information about this client application in a customization project and publish this customization project to these instances. To include the information about the registered client application in a customization project, you use the [Connected Applications](../Shared/../UserGuide/AU_21_00_30.md) page of the Customization Project Editor.

## Revocation of the Application Access {#_d0ae7bf3-ee6d-4dd5-9cf2-37cfedeceb9a .section}

To revoke the access of an OAuth 2.0 or OpenID Connect client application, you can use either of the following Acumatica ERP forms:

-   [Connected Applications](../UserGuide/SM_30_30_10.md) \(SM303010\): On this form, you can revoke the access of any application registered in the current company. You revoke all access granted to the application.
-   [User Profile](../UserGuide/SM_20_30_10.md) \(SM203010\): On this form, you can revoke the access of any application to which you \(that is, the user account to which you are signed in\) have granted access. Any access granted to this application by other users remains unchanged.

After you have revoked access, the related access tokens are removed from the Acumatica ERP database, and these tokens cannot be used to access data in Acumatica ERP. However, the client secrets remain valid until their expiration dates \(if applicable\), and the application can use these secrets to request a new access token.

**Parent topic:**[Getting Started with OAuth 2.0 and OpenID Connect Authorization](../IntegrationDevelopmentGuide/OAuthOIDC_GettingStarted_Mapref.md)

