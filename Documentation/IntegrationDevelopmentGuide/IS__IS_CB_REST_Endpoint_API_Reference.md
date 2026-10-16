# OpenAPI 3.0

Acumatica ERP provides you with the contract-based REST APIs of web service endpoints and with the contract-based REST API of an Acumatica ERP instance. The methods of a REST API are provided in a `swagger.json` file, which is an OpenAPI 3.0 file. For more information about the OpenAPI specification, see [https://www.openapis.org](https://www.openapis.org). You can use the `swagger.json` files to review the APIs of the instance and endpoints and build the client applications for Acumatica ERP based on these files.

## OpenAPI 3.0 of an Endpoint

You can retrieve the `swagger.json` file of a web service endpoint by clicking **OpenAPI 3.0** on the More menu of the [Web Service Endpoints](../UserGuide/SM_20_70_60.md) \(SM207060\) form or by using the following URL.

```
http://<Base endpoint URL>/swagger.json?company=<Tenant name>
```

In this URL, `<Base endpoint URL>` is the URL of the contract-based endpoint through which you are going to work with Acumatica ERP. This URL has the following format.

```
http://<Acumatica ERP instance URL>/entity/<Endpoint name>/<Endpoint version>/
```

You can specify the company URL parameter to obtain information on the API of the endpoint available in a particular tenant. For example, suppose that you want to retrieve the API reference of the custom endpoint with the name *MyEndpoint* and Version 26.200.001 available in the *MyTenant* tenant from a local Acumatica ERP instance with the name *AcumaticaDB*. You would use the following URL to obtain the `swagger.json` file: *http://localhost/AcumaticaDB/entity/MyEndpoint/26.200.001/swagger.json?company=MyTenant*.

If no tenant is specified, the API of the endpoint available in the tenant to which the user is currently signed in is returned.

## OpenAPI 3.0 of an Instance

You can retrieve the `swagger.json` file of an Acumatica ERP instance by using the following URL.

```
http://<Acumatica ERP instance URL>/entity/swagger.json
```

For example, if you use a local instance with the name *AcumaticaU100*, you would retrieve the `swagger.json` file related to this instance by using the following URL: *http://AcumaticaU100/entity/swagger.json*.

The contract-based REST API of an instance contains the methods that do the following:

-   Signing in to Acumatica ERP
-   Signing out from Acumatica ERP
-   Getting information about the instance, such as the Acumatica ERP version and the list of available endpoints. For details, see [Retrieve the Acumatica ERP Version, Enabled Features, and Endpoints](IntegrationDev_RESTExample_Basic_Get_List_of_Endpoints.md).

**Parent topic:**[Configuring the REST API](../IntegrationDevelopmentGuide/IS__mng_Contract_Based_Web_Services.md)

