# Attach a File to a Stock Item {#_0813ec4a-6205-40d1-a379-483e86784c39 .concept}

In this example, you attach a file to a stock item record by using the REST API.

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *T100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
3.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *MYSTORE* branch.
4.  Perform the following prerequisite activity: [Obtain the URL for Attaching a File](IntegrationDev_RESTExample_StockItem_GetFileEndpoint.md).

## Request { .section}

You can use the following sample request to attach the [`T2MCRO.jpg`](https://github.com/Acumatica/Help-and-Training-Examples/blob/HEAD/IntegrationDevelopment/I330/T2MCRO.jpg) file, which is provided in the Acumatica GitHub repository, to the *AALEGO500* stock item through the contract-based REST API.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/25.200.001/files/PX.Objects.IN.InventoryItemMaint/
    Item/cae53ce0-1614-e511-9b82-c86000dddf0b/T2MCRO.jpg HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/octet-stream

"<The T2MCRO.jpg file in binary format>"
```

**Parent topic:**[StockItem](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_StockItem.md)

