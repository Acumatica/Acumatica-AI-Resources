# Write the Tracking Number to a Shipment {#_670f7957-231a-472b-9afb-55783a876dd9 .concept}

If you are using the contract-based REST API to integrate Acumatica ERP with an external system, this external system can set the tracking number of a package of a shipment in Acumatica ERP.

## System Preparation { .section}

Before you test the code below, do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
3.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *HEADOFFICE* branch.
4.  On the [Shipments](../UserGuide/SO_30_20_00.md) \(SO302000\) form, for the shipment with the *000058* number, on the **Packages** tab, add a package with the *SMALL* box ID.

## Request { .section}

You can use the following request example to specify the tracking number of the package with the *ec062915-9061-ec11-9e19-9828a61840c3* ID, which is shipped in the shipment with the *5d79d031-8763-ea11-b82d-00155d408001* ID through the contract-based REST API.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/25.200.001/Shipment?
    $expand=Packages&$select=Packages/TrackingNbr HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "id": "5d79d031-8763-ea11-b82d-00155d408001",
    "Packages": [
        {
            "id": "ec062915-9061-ec11-9e19-9828a61840c3",
            "TrackingNbr": { "value": "398305336619" }
        }
    ]
}
```

## Usage Notes { .section}

You can learn the value of the `id` field of the shipment in the `SOShipment` database table, and the value of the `id` field of the package in the `SOPackageDetail` database table.

**Parent topic:**[Shipment](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Shipment.md)

