# OAuth 2.0 and OIDC: Session Management {#_1a864bb9-3e45-4e94-82e1-a4d52331c3d6 .concept}

If you authorize your integration application to work with Acumatica ERP through OAuth 2.0, the sign-out is not always required after you have finished your work with Acumatica ERP. \(This is opposed to the situation when your integration application uses the API methods for the sign-in in Acumatica ERP—that is, uses cookies to manage the application sessions. For these applications, the sign-out is required to close the session each time the work with Acumatica ERP is finished.\)

## Requirements for the Sign Out { .section}

Whether or not the sign-out is required depends on the access scope that the user has granted to the application as follows:

-   If the user have granted only the api scope to the application, the access token of the application expires in one hour and the session that was opened for this access token is closed automatically. However, if the application has been granted only the api scope, we recommend that you call the sign-out method after you have finished your work with Acumatica ERP, because the Acumatica ERP license includes a limit for the number of API users. If you have not signed out, you may have issues with subsequent authorization requests or sign-ins through the API. For details about how to deal with the issues related to the limit for the number of API users during the authorization requests, see the [Troubleshooting](#_3461deb7-e4ae-4f15-b51b-c56883ceb53b) section below.
-   If the application has been granted the api and offline\_access scopes \(that is, the application has requested a refresh token along with an access token\), when the access token has expired, the application can request a new access token by sending a request to the token endpoint and providing the refresh token. Acumatica ERP issues the first access token along with the session ID. If the client application requests a new access token by presenting a refresh token, Acumatica ERP reuses the session ID that was issued for the first access token issued with the refresh token. That is, the system uses a single session for each access granted to the client application. In this case, you do not need to sign out after you have finished your work with Acumatica ERP.
-   If the application has been granted the api:concurrent\_access scope, Acumatica ERP can maintain multiple sessions for the application, managing session IDs through cookies. In this case, the application has to explicitly sign out from Acumatica ERP in each session to close the session.

For details on the scopes that are available for each of the flows, see the descriptions of the flows in the following topics:

-   [Authorization Code Flow: Obtaining of an Authorization Code](OAuthOIDC_AuthorizationCode_AuthorizationCode.md)
-   [Implicit Flow: Obtaining of an Access Token and ID Token](OAuthOIDC_Implicit_AccessToken.md)
-   [Resource Owner Password Credentials Flow: Obtaining of an Access Token](OAuthOIDC_ResourceOwner_AccessToken.md)
-   [Hybrid Flow: Obtaining of an Authorization Code, Access Token, and ID Token from the Authorization Endpoint](OAuthOIDC_Hybrid_AuthorizationEndpoint.md)

## Troubleshooting {#_3461deb7-e4ae-4f15-b51b-c56883ceb53b .section}

You can get the *API Login Limit* error when your application requests access to the Acumatica ERP REST API through OAuth 2.0. For an application that uses OAuth 2.0 for authorization in Acumatica ERP, this error appears if all of the following are true:

-   The API login limit is specified in the Acumatica ERP license. The license restriction for the API users is shown in the **Maximum Number of Web Services API Users** box on the **License** tab of the [License Monitoring Console](../UserGuide/SM_60_40_00.md) \(SM604000\) form.
-   The number of unclosed sessions \(that is, the sessions in which you have signed in to Acumatica ERP through the web services API or obtained access to the Acumatica ERP web services API through OAuth 2.0 and have not signed out from Acumatica ERP\) equals the API login limit in the license.
-   You try to request access to the web services API through OAuth 2.0 once more.

You can deal with this error as follows:

1.  Modify the code of your application so that it signs out from Acumatica ERP each time the work with Acumatica ERP is finished.
2.  If the integration application has not closed the session, you can do one of the following:
    -   Pass the access token that was used during the previous session and sign out from Acumatica ERP.
    -   Wait for one hour until the session that has been opened through OAuth 2.0 expires.
    -   Restart the site in the Internet Information Services \(IIS\) Manager or by clicking the **Restart Application** button on the toolbar of the [Apply Updates](../UserGuide/SM_20_35_10.md) \(SM203510\) form.

**Parent topic:**[Getting Started with OAuth 2.0 and OpenID Connect Authorization](../IntegrationDevelopmentGuide/OAuthOIDC_GettingStarted_Mapref.md)

