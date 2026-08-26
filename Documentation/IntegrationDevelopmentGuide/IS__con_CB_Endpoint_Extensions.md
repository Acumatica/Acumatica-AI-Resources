# Custom Endpoints and Endpoint Extensions {#_c920d9fc-8e81-4f4e-9250-81c6fb979517 .concept}

If the API provided by the system endpoint of Acumatica ERP is not sufficient for the requirements of your application, you can create a custom endpoint from scratch or by extending an existing endpoint.

## An Extension of an Existing Endpoint { .section}

If you are creating an endpoint as an extension of an existing endpoint, for the API elements that were inherited from the base endpoint, you cannot edit the names and types of the entities and fields, and the names, types, and parameters of the actions. In the contract of the new endpoint, you can add new top-level entities, new fields or entities to any entity, and new actions. Then you can use both the API that you added to the contract of the endpoint and the API of the base endpoint in your application. For information on how to extend an existing endpoint, see [To Extend an Existing Endpoint](IS__how_Extend_Endpoint.md#).

The new endpoint that was created as an extension of an existing endpoint has the version of the contract of the base endpoint; that is, the API methods for working with entities are the same for the base endpoint and the new endpoint.

## An Endpoint Created from Scratch { .section}

If you are creating an endpoint from scratch, you should add the needed elements of the API to the contract. Then you can use these API elements in your application. For information on how to create an endpoint from scratch, see [To Create a Custom Endpoint](IS__how_Create_Endpoint.md#). The new endpoint that is created from scratch always has the latest version of the contract.

**Parent topic:**[Configuring the REST API](../IntegrationDevelopmentGuide/IS__mng_Contract_Based_Web_Services.md)

