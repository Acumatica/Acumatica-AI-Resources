# Registration of an OAuth 2.0 or OIDC Application: JWT Bearer Tokens {#_a7018c07-aeb9-4803-9dd3-2ccbb4a442f2 .concept}

Acumatica ERP implements support for JSON Web Token \(JWT\) bearer tokens for client authentication. With this support, the private secret key is stored only in the client application, while the Acumatica ERP instance holds the public key.

## Registration of the Application { .section}

When you register the application on the [Connected Applications](../UserGuide/SM_30_30_10.md) \(SM303010\) form, you add either a JSON Web Key \(JWK\) or a JSON Web Key Set\(JWKS\) URL on the **Secrets** tab.

To add a JWK, you click the new **Add JSON Web Key** button on the table toolbar and specify the needed settings in the dialog box that opens. For JWK, Acumatica ERP supports the format that is defined in RFC7517 \([https://datatracker.ietf.org/doc/html/rfc7517\#section-4](https://nam12.safelinks.protection.outlook.com/?url=https%3A%2F%2Fdatatracker.ietf.org%2Fdoc%2Fhtml%2Frfc7517%23section-4&data=05%7C01%7Ckpopova%40acumatica.com%7C520550d56a7048ac035608dbeac2da1e%7C5ba58136c8e34f4b85797e49a2e3239c%7C0%7C0%7C638361894837514888%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&sdata=cRvnakLCNvcXxjOzkJ5ulu1PACHkmjS2n4j2IZ0sHs8%3D&reserved=0)\).

To add a JWKS URL, you click the new **Add JSON Web Key Set URL** button on the table toolbar and specify the needed settings in the dialog box that opens. The JWKS URL should point to a location that satisfies the following requirements:

-   It is accessible from each Acumatica ERP instance that is used with the client application. If the location is inaccessible, the token request is declined with the invalid\_client error.
-   It complies with RFC7515 \([https://datatracker.ietf.org/doc/html/rfc7517\#section-5](https://nam12.safelinks.protection.outlook.com/?url=https%3A%2F%2Fdatatracker.ietf.org%2Fdoc%2Fhtml%2Frfc7517%23section-5&data=05%7C01%7Ckpopova%40acumatica.com%7C520550d56a7048ac035608dbeac2da1e%7C5ba58136c8e34f4b85797e49a2e3239c%7C0%7C0%7C638361894837529236%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&sdata=a%2FkID1tp9EyniS740ElpsO3RoDOiVKCenu8uLw%2BYceQ%3D&reserved=0)\).
-   It should support a reasonable load because each Acumatica ERP instance that is used with the client application will access this location on every token request.

**Parent topic:**[Registering Client Applications That Support OAuth 2.0 or OIDC](../IntegrationDevelopmentGuide/OAuthOIDC_Registration_Mapref.md)

