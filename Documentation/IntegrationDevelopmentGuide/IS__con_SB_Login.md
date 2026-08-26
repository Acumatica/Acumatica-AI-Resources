# Login\(\) Method {#_6122a664-b0ae-4c51-a62a-f0124a131245 .reference}

You use the Login\(\) method to make the client application sign in to Acumatica ERP.

**Important:** The direct sign-in to Acumatica ERP with a username and password is going to be discontinued in a future version. We recommend that your application implement the OAuth 2.0 or OpenID Connect \(OIDC\) mechanism of authorization. For details about OAuth 2.0 and OIDC, see [Authorizing Client Applications to Work with Acumatica ERP](../Shared/../IntegrationDevelopmentGuide/IS__mng_Authorizing_with_OAuth2.md).

## Syntax { .section}

```
public LoginResult Login(string name, string password)
```

## Parameters { .section}

-   name: The username that the application should use to sign in to Acumatica ERP, such as `"admin"`.

    To sign in to a specific Acumatica ERP tenant, specify the name parameter as follows: `UserName@TenantName`, where you should specify the username instead of `UserName` and the tenant name instead of `TenantName`. For example, if you sign in to the tenant with the name *Dollar* as the user with the name *admin*, you should specify the parameter as `admin@Dollar`. You can view the name that should be used for the tenant in the **Login Name** box of the [Tenants](../UserGuide/SM_20_35_20.md#) \(SM203520\) form.

    To sign in to a certain branch in the tenant, specify the parameter as follows: `UserName@TenantName:BranchName`, where you should specify the username instead of `UserName`, the tenant name instead of `TenantName`, and the branch ID instead of `BranchName`. You can view the ID of the branch in the **Branch ID** box of the [Branches](../UserGuide/CS_10_20_00.md) \(CS102000\) form. For example, if you sign in to the *East* branch of the *Dollar* tenant as the user with the name *admin*, you should specify the parameter as `admin@Dollar:East`.

-   password: The password for the username, such as `"123"`.

## Return Value { .section}

The method returns the LoginResult object, which contains the description of errors that occurred during signing in, if any.

## Example { .section}

The following code signs in to Acumatica ERP by using the parameters that are specified in the application settings.

```
Screen context = new Screen();
context.CookieContainer = new System.Net.CookieContainer();
context.Url = "https://localhost/WebServiceAPITest/Soap/MYSTORE.asmx";
context.Login("admin@MyTenant:MYSTORE", "123");
```

## Usage Notes { .section}

Before you sign in to Acumatica ERP by using the Login\(\) method, do the following:

1.  Initialize the CookieContainer property of the object with a new `System.Net.CookieContainer()`. The CookieContainer property is a standard property of an object of the `HttpWebClientProtocol` system type. \(The Screen class is derived from the `HttpWebClientProtocol` class.\) This property is used to maintain the session state for a client.
2.  Specify the URL of the web service in the URL property of the object. This is the same URL that you specify when you add a web reference to the Acumatica ERP web service. You can change the URL of the service dynamically in your application if you need to switch between multiple Acumatica ERP web services.

For each call of the Login\(\) method, you must call the Logout\(\) method after you finish your work with Acumatica ERP to close the session. Therefore, when you are working with the web services API, we recommend that you use the pattern that is shown in the following code.

```
using 
(
  //Connect to the web services and log in to Acumatica ERP
  Screen context = new Screen();
  ...
)
{
  try
  {
    //Import, export, or submit data
    ...
  }
  finally
  {
    //Log out from Acumatica ERP
    context.Logout();
  }
}
```

You should take into account Acumatica ERP license API limits when using the Login\(\) method. For details, see [License Restrictions for API Users](IS__con_License_Restrictions_API_Users.md).

**Parent topic:**[Screen-Based SOAP API Reference](../IntegrationDevelopmentGuide/IS__IS_SB_API_Reference.md)

