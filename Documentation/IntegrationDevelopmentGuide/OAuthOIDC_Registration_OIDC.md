# Registration of an OAuth 2.0 or OIDC Application: Acumatica ERP as an Identity Provider via OIDC {#_e3b36e51-ee22-4b7a-a5d6-2d135a8926e6 .concept}

Acumatica ERP can be used as an identity provider via the OpenID Connect \(OIDC\) protocol. An OIDC client application uses the Acumatica ERP sign-in page for authentication. During the first sign-in, the client application requests access to the user attributes; for the application to be signed in, a user must confirm the granting of access to these attributes.

## Registration of the Application { .section}

On the [Connected Applications](../UserGuide/SM_30_30_10.md) \(SM303010\) form, support for OIDC is available for the Authorization Code, Hybrid, and Implicit flows.

On the **Claims** tab of the [Connected Applications](../UserGuide/SM_30_30_10.md) form, the check box should be selected in the **Active** column for the claims that will be included in the token in the response to the client application \(when OIDC is used\). By default, Acumatica ERP contains a set of claims and a set of scopes; each scope defines the claims that will be included in a response when the scope is specified in a request. These sets of scopes and claims can be redefined in a plug-in included in a customization project. If a plug-in is selected in the Summary area of the [Connected Applications](../UserGuide/SM_30_30_10.md) form, the claims that are defined in this plug-in are added to the table on the **Claims** tab; in this table, these claims are marked as belonging to the plug-in.

**Parent topic:**[Registering Client Applications That Support OAuth 2.0 or OIDC](../IntegrationDevelopmentGuide/OAuthOIDC_Registration_Mapref.md)

