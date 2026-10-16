# Registration of an OAuth 2.0 or OIDC Application: JWT Bearer Tokens

Acumatica ERP implements support for JSON Web Token \(JWT\) bearer tokens for client authentication. With this support, the private secret key is stored only in the client application, while the Acumatica ERP instance holds the public key.

## Registration of the Application

When you register the application on the [Connected Applications](../UserGuide/SM_30_30_10.md) \(SM303010\) form, you add either a JSON Web Key \(JWK\) or a JSON Web Key Set \(JWKS\) URL on the **Secrets** tab.

To add a JWK, you click the new **Add JSON Web Key** button on the table toolbar and specify the needed settings in the dialog box that opens. For JWK, Acumatica ERP supports the format that is defined in RFC7517 \([https://datatracker.ietf.org/doc/html/rfc7517\#section-4](https://datatracker.ietf.org/doc/html/rfc7517#section-4)\).

To add a JWKS URL, you click the new **Add JSON Web Key Set URL** button on the table toolbar and specify the needed settings in the dialog box that opens. The JWKS URL should point to a location that satisfies the following requirements:

-   It is accessible from each Acumatica ERP instance that is used with the client application. If the location is inaccessible, the token request is declined with the invalid\_client error.
-   It complies with RFC7515 \([https://datatracker.ietf.org/doc/html/rfc7517\#section-5](https://datatracker.ietf.org/doc/html/rfc7517#section-5)\).
-   It should support a reasonable load because each Acumatica ERP instance that is used with the client application will access this location on every token request.

**Parent topic:**[Registering Client Applications That Support OAuth 2.0 or OIDC](../IntegrationDevelopmentGuide/OAuthOIDC_Registration_Mapref.md)

