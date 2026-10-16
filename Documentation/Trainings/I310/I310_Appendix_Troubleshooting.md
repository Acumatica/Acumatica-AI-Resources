# Appendix E: Troubleshooting

This topic describes some issues that you may encounter and ways you can troubleshoot these issues.

## I get the following error when I try to sign in to Acumatica ERP through the REST API: "API Login Limit.” What should I do?

For an application that uses the REST API methods for the sign-in to Acumatica ERP \(that is, uses cookies\), this error appears if all of the following are true:

-   An API login limit is specified in the Acumatica ERP license. This limit is shown in the **Maximum Number of API Sessions** box on the **License and Constraints** tab of the [License Monitoring Console](../../UserGuide/SM_60_40_00.md) \(SM604000\) form.
-   The number of unclosed sessions is the same as the API login limit in the license. An unclosed session is one in which a user account has signed in to Acumatica ERP through the REST API \(or has obtained access to the Acumatica ERP REST API through OAuth 2.0\) and has not signed out from Acumatica ERP.
-   You try to sign in to Acumatica ERP once more in another session.

You can deal with this error as follows:

-   Modify the code of your application so that it closes the session \(signs out from Acumatica ERP\) each time the work with Acumatica ERP is finished. For details, see [Sign In to the Service](../../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic_Login.md).
-   If the integration application has not closed the session for some reason, you can do one of the following:
    -   Sign out from Acumatica ERP by using the cookies that the application has used during the sign-in process
    -   Wait for 10 minutes until the expiration of the session that is managed by cookies
    -   Restart the site in the Internet Information Services \(IIS\) Manager or by clicking the **Restart Application** button on the form toolbar of the [Apply Updates](../../UserGuide/SM_20_35_10.md) \(SM203510\) form

## I get the following error when I send a GET request through the REST API: "The given key was not present in the dictionary.” What can be the reason for the error?

This error appears if an incorrect name is specified for the entity or field in the parameters of the request. Make sure that you have specified the correct names for the entities and fields in the parameters of the request.

