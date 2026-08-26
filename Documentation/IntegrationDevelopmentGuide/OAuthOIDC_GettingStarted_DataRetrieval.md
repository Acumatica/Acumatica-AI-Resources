# OAuth 2.0 and OIDC: Working with Data in Acumatica ERP {#_ed9fe5ab-b3c0-444c-8335-ff3b0c8392d6 .concept}

To obtain the data from Acumatica ERP or submit data to the system, the client application connects to the web services API or OData endpoint of Acumatica ERP with the needed HTTP method. The following sections provide details on the request.

## HTTP Method and URL { .section}

A client application can use the REST API, screen-based SOAP API, or OData if a user has granted access to them for the client application. For details on the methods and URLs that can be used to retrieve or submit data, see one of the following topics:

-   [Configuring the REST API](IS__mng_Contract_Based_Web_Services.md)
-   [Accessing the Exposed Inquiry Results Through OData](../UserGuide/GI_Access_to_Exposed_Inquiry_Through_OData_Mapref.md)
-   [Accessing DACs Through OData](../UserGuide/RPT_DAC_OData_Mapref.md)
-   [Working with the SOAP API](IS__mng_SOAP_API.md)

## HTTP Header { .section}

When you are working with Acumatica ERP data, you use the following HTTP header.

|Key|Value|
|---|-----|
|`Authorization`|The token type, which is *Bearer*, and the access token that the client application has received from the authorization or token endpoint. The client application should include the access token in the `Authorization` header of each request to Acumatica ERP.|

## Example { .section}

The following example retrieves a sales order from the *Default/25.200.001* endpoint through the REST API. The access token is used for authorization.

```
GET /AcumaticaDB/entity/Default/25.200.001/SalesOrder/SO/000001 HTTP/1.1
Host: localhost
Authorization: Bearer cde78a99a2dc6388eb8c7242a90cf9bc
```

**Parent topic:**[Getting Started with OAuth 2.0 and OpenID Connect Authorization](../IntegrationDevelopmentGuide/OAuthOIDC_GettingStarted_Mapref.md)

