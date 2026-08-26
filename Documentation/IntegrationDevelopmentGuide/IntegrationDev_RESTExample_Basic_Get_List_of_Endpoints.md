# Retrieve the Acumatica ERP Version and the List of Endpoints {#_da0fe495-b2e5-4d34-ab5a-5829e408f684 .concept}

To obtain the Acumatica ERP version and the list of contract-based endpoints available in this version by using the REST API, you access the needed URL with the `GET` HTTP method. The remainder of this topic provides details on the request and the response.

If the request is sent without the authentication information, the list contains only the endpoints available in the system by default. If the request is sent with the authentication information for a particular tenant, the list also includes the custom endpoints configured in this tenant of the Acumatica ERP instance.

## HTTP Method and URL { .section}

To retrieve the Acumatica ERP version and the list of contract-based endpoints available in this version, you use the `GET` HTTP method and the following URL.

```
GET http://<Acumatica ERP instance URL>/entity
```

In this URL, *&lt;Acumatica ERP instance URL&gt;* is the URL of the Acumatica ERP instance for which you want to obtain information about the version and endpoints.

For example, suppose that you work with a local Acumatica ERP instance with the name *AcumaticaDB*. You would use the following URL to retrieve the information: *http://localhost/AcumaticaDB/entity*.

## Parameters { .section}

You use no parameters when you retrieve the Acumatica ERP version and the list of contract-based endpoints available in this version.

## Request Headers { .section}

|Header|Description|
|------|-----------|
|Accept|Specifies the format of the response body, which can be application/json.|
|Cookie|Specifies the cookies that you have received during the sing-in to Acumatica ERP with the login method. For details on this method, see [Sign In to the Service](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic_Login.md).

 You must use the Cookie header in any of the following cases:

 -   You have used the login method to sign in to Acumatica ERP.
-   You are using the OAuth 2.0 or OpenID Connect \(OIDC\) authorization with the api:concurrent\_access scope and need to manage session IDs through cookies.

|

## Response Status Codes { .section}

The following table lists the HTTP status codes that the system returns for a request that retrieves the Acumatica ERP version and the list of endpoints.

|Code|Description|
|----|-----------|
|*200*|The request has been completed successfully. The response body contains the Acumatica ERP version and the list of contract-based endpoints available in this version.|
|*429*|The number of requests has exceeded the limit imposed by the license \(see [License Restrictions for API Users](../Shared/../IntegrationDevelopmentGuide/IS__con_License_Restrictions_API_Users.md)\).|
|*500*|An internal server error has occurred.|

## Example { .section}

The following request obtains the Acumatica ERP version and the list of contract-based endpoints available in this version.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
GET /entity HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
```

Following is an example of a response in JSON format.

```
{
    "version": {
        "acumaticaBuildVersion": "25.093.0036",
        "databaseVersion": "25.093.0036"
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
            "name": "MANUFACTURING",
            "version": "21.200.001",
            "href": "/testdata/entity/MANUFACTURING/21.200.001/"
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
        {
            "name": "GLConsolidation",
            "version": "22.200.001",
            "href": "/testdata/entity/GLConsolidation/22.200.001/"
        },
        {
            "name": "MANUFACTURING",
            "version": "23.100.001",
            "href": "/testdata/entity/MANUFACTURING/23.100.001/"
        },
        {
            "name": "Default",
            "version": "23.200.001",
            "href": "/testdata/entity/Default/23.200.001/"
        },
        {
            "name": "DeviceHub",
            "version": "23.200.001",
            "href": "/testdata/entity/DeviceHub/23.200.001/"
        },
        {
            "name": "eCommerce",
            "version": "23.200.001",
            "href": "/testdata/entity/eCommerce/23.200.001/"
        },
        {
            "name": "MANUFACTURING",
            "version": "23.200.001",
            "href": "/testdata/entity/MANUFACTURING/23.200.001/"
        },
        {
            "name": "Default",
            "version": "24.200.001",
            "href": "/testdata/entity/Default/24.200.001/"
        },
        {
            "name": "eCommerce",
            "version": "24.200.001",
            "href": "/testdata/entity/eCommerce/24.200.001/"
        },
        {
            "name": "MANUFACTURING",
            "version": "24.200.001",
            "href": "/testdata/entity/MANUFACTURING/24.200.001/"
        },
        {
            "name": "MANUFACTURING",
            "version": "25.100.001",
            "href": "/testdata/entity/MANUFACTURING/25.100.001/"
        },
        {
            "name": "Default",
            "version": "25.200.001",
            "href": "/testdata/entity/Default/25.200.001/"
        }
    ]
}
```

**Parent topic:**[Basic Requests](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic.md)

