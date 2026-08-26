# Contract-Based REST API {#_735fad82-9cf3-4a2c-8538-1c8344aba844 .concept}

The contract-based REST API operates with business logic objects that do not depend on Acumatica ERP forms or their properties and methods. \(In this context, *contract-based* means based on the object model that the REST API provides.\) Each REST API contract is fixed and does not change based on system customization, localization, or any other changes made to Acumatica ERP.

For example, suppose that the contract of the web service contains the definition of the *CustomerID* field, which accesses the **Customer ID** element on the [Customers](../UserGuide/AR_30_30_00.md) \(AR303000\) form. If you have changed the name of the **Customer ID** element to **Customer Identifier** in a customization project, the contract of the web service remains fully functional and does not require update; also, your application requires no further modifications. You can access the **Customer Identifier** element on the form through the same `CustomerID` field.

To use the REST API in your application, first of all, you should decide which endpoint to use. You can find more information on the endpoints and their contracts in [Endpoints and Contracts](IS__con_CB_Endpoints_and_Contracts.md#).

After that, you can use the REST API in your application. For examples of the REST API requests, see [REST API Examples](IntegrationDev_RESTExample.md).

**Parent topic:**[Configuring the REST API](../IntegrationDevelopmentGuide/IS__mng_Contract_Based_Web_Services.md)

