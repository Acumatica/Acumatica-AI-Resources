# Retrieve the Acumatica ERP Version, Enabled Features, and Endpoints

You can use the REST API to obtain the Acumatica ERP version, the list of features enabled in the tenant, and the list of contract-based endpoints available in this version. To do this, you access the needed URL with the `GET` HTTP method. The remainder of this topic provides details on the request and the response.

**Attention:**

If you send the request **without the authentication information** for a particular tenant, the response contains:

-   The Acumatica ERP version and the database version
-   The list of endpoints available in the system by default

If you send the request **with the authentication information** for a particular tenant, the response also includes:

-   The list of custom endpoints configured in this tenant
-   The list of features enabled in the tenant

## HTTP Method and URL

To retrieve the list of enabled features in the tenant, use the `GET` HTTP method and the following URL. **Include the authentication information with the request.**

```
GET <Acumatica ERP instance URL>/entity
```

For example, suppose that you work with a local Acumatica ERP instance named *AcumaticaDB*. You would use the following URL to retrieve the information: *http://localhost/AcumaticaDB/entity*.

## Parameters

You use no parameters in this request.

## Request Headers

<table id="_40bf8194-174d-41e1-9ba1-dce56cf597b4"><thead><tr><th>

Header

</th><th>

Description

</th></tr></thead><tbody><tr><td>

Accept

</td><td>

Specifies the format of the response body. Use application/json.

</td></tr><tr><td>

Cookie

</td><td>

Specifies the cookies that you’ve received during the sign-in to Acumatica ERP with the login method. For details on this method, see [Sign In to the Service](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic_Login.md).

 You must use the Cookie header if:

 -   You’ve used the login method to sign in to Acumatica ERP.
-   You’re using the OAuth 2.0 or OpenID Connect \(OIDC\) authorization with the api:concurrent\_access scope and need to manage session IDs through cookies.

</td></tr></tbody>
</table>

## Response Status Codes

The following table lists the HTTP status codes that the system returns for this request.

<table id="_970da984-282e-41b1-b56c-841acaa6b024"><thead><tr><th>

Code

</th><th>

Description

</th></tr></thead><tbody><tr><td>

*200*

</td><td>

The request has been completed successfully.

</td></tr><tr><td>

*429*

</td><td>

The number of requests has exceeded the limit imposed by the license \(see [License Restrictions for API Sessions and Requests](../Shared/../IntegrationDevelopmentGuide/IS__con_License_Restrictions_API_Users.md)\).

</td></tr><tr><td>

*500*

</td><td>

An internal server error has occurred.

</td></tr></tbody>
</table>

## Example

The following request obtains the Acumatica ERP version, the list of features enabled in the tenant, and the list of contract-based endpoints available in this version. The request includes authentication information.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
GET /entity HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
```

Following is an example of a response in JSON format.

```json
{
    "version": {
        "acumaticaBuildVersion": "26.191.0707",
        "databaseVersion": "26.191.0707"
    },
    "endpoints": [
        {
            "name": "Default",
            "version": "20.200.001",
            "href": "/testdata/entity/Default/20.200.001/"
        },
        {
            "name": "eCommerce",
            "version": "20.200.001",
            "href": "/testdata/entity/eCommerce/20.200.001/"
        },
        {
            "name": "Default",
            "version": "22.200.001",
            "href": "/testdata/entity/Default/22.200.001/"
        },
        {
            "name": "eCommerce",
            "version": "22.200.001",
            "href": "/testdata/entity/eCommerce/22.200.001/"
        },
        ...
    ],
     "features": [
        "PX.Objects.CS.FeaturesSet+OrganizationModule",
        "PX.Objects.CS.FeaturesSet+FinancialModule",
        "PX.Objects.CS.FeaturesSet+FinancialStandard",
        "PX.Objects.CS.FeaturesSet+FinancialAdvanced",
        ...
    ]
}
```

**Parent topic:**[Basic Requests](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic.md)

