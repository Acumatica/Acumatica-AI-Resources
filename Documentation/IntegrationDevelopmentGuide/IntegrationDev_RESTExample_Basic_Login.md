# Sign In to the Service {#_0322492a-de9b-4443-b256-923c48aff31d .concept}

Each time your application starts working with the Acumatica ERP contract-based REST service, you have to sign in to Acumatica ERP. To sign in to Acumatica ERP, you access the needed URL with the `POST` HTTP method and pass the credentials in the request body. See the following sections for details on the request and the response.

**Attention:** If two-factor authentication is turned on for a user account that is used to sign in to Acumatica ERP through the REST API, this authentication is bypassed by the sign-in method. You can explicitly turn off two-factor authentication for the user accounts that are used only through the REST API by defining the user type of the user account. For details about the creation of a user type to be used by an external application, see [To Limit the Number of API Connections of Integrated Applications](IS__how_Limit_API_Connections.md#).

**Important:** The direct sign-in to Acumatica ERP with a username and password is going to be discontinued in a future version. We recommend that your application implement the OAuth 2.0 or OpenID Connect \(OIDC\) mechanism of authorization. For details about OAuth 2.0 and OIDC, see [Authorizing Client Applications to Work with Acumatica ERP](../Shared/../IntegrationDevelopmentGuide/IS__mng_Authorizing_with_OAuth2.md).

## HTTP Method and URL { .section}

When you need to sign in to Acumatica ERP, you use the `POST` HTTP method and the following URL.

```
POST http://<Acumatica ERP instance URL>/entity/auth/login
```

You replace *&lt;Acumatica ERP instance URL&gt;* with the URL of your Acumatica ERP instance.

For example, suppose that you want to sign in to a local Acumatica ERP instance with the name *AcumaticaDB*. You should use the following URL: *http://localhost/AcumaticaDB/entity/auth/login*.

## Parameters { .section}

You do not need to use parameters when you sign in to Acumatica ERP.

## Request Headers { .section}

|Header|Description|
|------|-----------|
|Content-Type|The format of the request body, which can be one of the following:-   application/json
-   application/x-www-form-urlencoded

|

## Request Body { .section}

In the request body, you pass the credentials for accessing Acumatica ERP in JSON format, as shown in the following example.

```language-json
{
  "name" : "admin",
  "password" : "123",
  "tenant" : "MyStore",
  "branch" : "MYSTORE",
  "locale" : "EN-US"
}
```

You specify the values of the parameters as follows:

-   *name*: The username that the application should use to sign in to Acumatica ERP, such as `"admin"`.
-   *password*: The password for the username, such as `"123"`.
-   *tenant*: The name of the tenant to which the application should sign in, such as `"MyStore"`. You can view the name that should be used for the tenant in the **Login Name** box of the [Tenants](../Shared/../UserGuide/SM_20_35_20.md#) \(SM203520\) form.
-   *branch*: The ID of the branch to which the application should sign in. You can view the ID of the branch in the **Branch ID** box of the [Branches](../Shared/../UserGuide/CS_10_20_00.md) \(CS102000\) form.
-   *locale*: The locale that should be used in Acumatica ERP. The locale is specified in the `System.Globalization.CultureInfo` format converted to `string`, as with `"EN-US"`.

    **Attention:** This parameter has been developed for future use. You do not need to set its value.


## Response Status Codes { .section}

The following table lists the HTTP status codes that the system returns for a sign-in request.

|Code|Description|
|----|-----------|
|*204*|The request has been completed successfully. The response headers contain the cookies that authorize the user to make further requests.|
|*400*|The data specified in the request is invalid.|
|*429*|The number of requests has exceeded the limit imposed by the license \(see [License Restrictions for API Users](../Shared/../IntegrationDevelopmentGuide/IS__con_License_Restrictions_API_Users.md)\).|
|*500*|An internal server error has occurred.|

## Example { .section}

The following request shows an example of a sign-in to Acumatica ERP through the REST API.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
POST /entity/auth/login HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
  "name": "admin",
  "password": "123",
  "tenant": "MyStore",
  "branch": "MYSTORE"
}
```

## Usage Notes { .section}

With each subsequent request to the service, the application has to pass in the Cookie header the cookies that it has received during sign-in.

For each attempt to sign in to Acumatica ERP, you must implement the signing out from the service after you finish your work with Acumatica ERP to close the session. If the session is not closed, you may have issues with subsequent sign-ins to Acumatica ERP through the REST API.

For details about signing out, see [Sign Out from the Service](IntegrationDev_RESTExample_Basic_Logout.md).

You should also take into account Acumatica ERP license API limits. For details, see [License Restrictions for API Users](IS__con_License_Restrictions_API_Users.md).

**Parent topic:**[Basic Requests](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic.md)

