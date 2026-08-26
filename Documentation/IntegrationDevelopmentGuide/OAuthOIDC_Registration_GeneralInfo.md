# Registration of an OAuth 2.0 or OIDC Application: General Information {#_84e7f6c6-3b0f-4526-a1aa-343e39aeebfe .concept}

You use the [Connected Applications](../UserGuide/SM_30_30_10.md) \(SM303010\) form to register an OAuth 2.0 or OpenID Connect \(OIDC\) client application.

To register a client application in Acumatica ERP, you need to know the authorization flow that this application implements. For more information on the flows, see [Authorization Code Flow: General Information](OAuthOIDC_AuthorizationCode_GeneralInfo.md#), [Implicit Flow: General Information](OAuthOIDC_Implicit_GeneralInfo.md), [Resource Owner Password Credentials Flow: General Information](OAuthOIDC_ResourceOwner_GeneralInfo.md), and [Hybrid Flow: General Information](OAuthOIDC_Hybrid_GeneralInfo.md).

## Learning Objectives { .section}

In this chapter, you will learn how to register an OAuth 2.0 or OIDC client application in Acumatica ERP.

## Applicable Scenarios { .section}

You are a developer who is implementing an OAuth 2.0 or OIDC client application. Before this application can work with an Acumatica ERP instance, you need to register the application in this instance.

## Registration of a Client Application { .section}

You register an OAuth 2.0 or OIDC client application in the Acumatica ERP instance so that the application can work with the instance.

**Attention:**

-   According to the OAuth 2.0 and OIDC specifications, a secure connection between a client application and the Acumatica ERP website with a Secure Sockets Layer \(SSL\) certificate is required. Therefore, you have to set up the Acumatica ERP website for HTTPS before the client application can work with data in Acumatica ERP. For more information, see [Preparation for the Acumatica ERP Installation: System Environment](../Shared/../UserGuide/INST_Preparing_Installation_System_Environment.md).
-   When you are registering the client application, you have to be signed in to the tenant whose data the client application needs to access.

To register a client application, you perform the following general steps on the [Connected Applications](../UserGuide/SM_30_30_10.md) \(SM303010\) form:

1.  In the **Client Name** box of the Summary area, you type the name of the client application.

    **Tip:** You should leave the **Client ID** box blank. The system will fill it in when you save your settings on the form.

2.  In the **Flow** box, you select the authorization flow.
3.  Depending on the flow you have selected, you specify the relevant settings, which are listed in the following table. \(*+* indicates that the setting is available for the flow; *−* indicates that the setting is unavailable for the flow.\)

    |Settings|*Authorization Code* Flow|*Implicit* Flow|*Resource Owner Password Credentials* Flow|*Hybrid* Flow|
    |--------|-------------------------|---------------|------------------------------------------|-------------|
    |Mode of refresh token expiration \(in the **Mode** box of the **Refresh Tokens** section of the Summary area\). For details, see [Registration of an OAuth 2.0 or OIDC Application: Sliding Expiration of Refresh Tokens](OAuthOIDC_Registration_SlidingExpiration.md).|+|−|+|+|
    |Shared secret \(which you add by clicking **Add Shared Secret** on the toolbar of the **Secrets** tab\).|+|−|+|+|
    |JSON Web Key \(which you add by clicking **Add JSON Web Key** on the toolbar of the **Secrets** tab\). For more information, see [Registration of an OAuth 2.0 or OIDC Application: JWT Bearer Tokens](OAuthOIDC_Registration_JWTSupport.md).|+|−|+|+|
    |JSON Web Key Set URL \(which you add by clicking **Add JSON Web Key Set URL** on the toolbar of the **Secrets** tab\).|+|−|+|+|
    |The redirect URI \(on the **Redirect URIs** tab\).|+|+|−|+|
    |For an OIDC application, the claims that will be included in the ID token \(by selecting or clearing the **Active** check boxes on the **Claims** tab\). For details, see [Registration of an OAuth 2.0 or OIDC Application: Acumatica ERP as an Identity Provider via OIDC](OAuthOIDC_Registration_OIDC.md).|+|+|−|+|
    |For an OIDC application, the plug-in that contains custom claims \(in the **Plug-In** box of the Summary area\).|+|+|−|+|


After the registration, you have the client ID of the client application and, if you have selected a shared secret, the secret value.

**Parent topic:**[Registering Client Applications That Support OAuth 2.0 or OIDC](../IntegrationDevelopmentGuide/OAuthOIDC_Registration_Mapref.md)

