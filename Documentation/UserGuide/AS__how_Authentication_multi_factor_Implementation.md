# To Implement Multifactor Authentication {#_01ccdc1a-2ba6-4072-9ab1-a86d1c853a26 .task}

Implementing multifactor authentication in Acumatica ERP involves several steps, as this topic describes.

## To Implement Multifactor Authentication { .section}

1.  Obtain a Multifactor Authentication Provider Account.

    Get an account for each user who will login to Acumatica ERP. The account must include single sign-on capabilities as well as the multifactor authentication mechanism that you will utilize.

2.  Implement single sign-on.

    Single sign on capabilities must be implemented at the authentication provider and inside Acumatica ERP.

    First you need to enable SSO for the Authentication Provider. Obtain information from the Authentication Provider on how to set this up.

    Next you establish a secure mechanism to hand-off the authenticated users to Acumatica ERP. To provide a secure hand off, you must implement an HTTPS connection between the two systems. Microsoft and Google utilize OAuth 2.0, while OneLogin uses SAML 2.0 to communicate over the HTTPS connection. For more information, see [Authorizing Client Applications to Work with Acumatica ERP](../IntegrationDevelopmentGuide/IS__mng_Authorizing_with_OAuth2.md).

    As a part of establishing a secure hand-off, each system will provide a certificate that can be entered into the other system. On Acumatica ERP [Security Preferences](SM_20_10_60.md#) \(SM201060\) form you can enter the certificate provided by the external providers.

    Single sign on setup usually involves changes to the `web.config` and other system files. SaaS deployments will require assistance from you support provider.

3.  Modify the login page.

    To prevent people from bypassing the multifactor authentication mechanism, remove the username and password option from the login page.

4.  Link External Accounts to Acumatica ERP Accounts.

    When an identity is passed from an external Authentication Provider, Acumatica ERP needs to know which Acumatica ERP user this identity is associated with.

    This linkage can be configured on the [Users](SM_20_10_10.md#) \(201010\) form on the **External Identities** tab.


**Parent topic:**[Configuring Multifactor Authentication](../UserGuide/AS__con_Authentication_multi_factor.md)

