# Read the Tracking Number from a Shipment {#_b68ebcd5-89c9-4d81-9caa-613de0d03535 .concept}

If you are using the contract-based REST API to integrate Acumatica ERP with an external system, this external system can retrieve a shipment from Acumatica ERP and read its tracking number.

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *HEADOFFICE* branch.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.

## Request { .section}

You can use the following request example to retrieve the *000001* shipment, along with the tracking number of its package, through the contract-based REST API.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
GET /entity/Default/25.200.001/Shipment?
    $expand=Packages&$select=Packages/TrackingNbr
    &$filter=ShipmentNbr%20eq%20'000001' HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json
```

**Parent topic:**[Shipment](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Shipment.md)

