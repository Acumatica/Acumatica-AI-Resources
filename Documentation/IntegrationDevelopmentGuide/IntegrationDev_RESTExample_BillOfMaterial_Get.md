# Retrieve the Bills of Material {#_58a2b2bd-88fa-4d26-a55a-62fd8f3309c1 .concept}

By using the REST API, you can retrieve the list of existing bills of material \(BOMs\) from the [Bill of Material](../UserGuide/AM_20_80_00.md) \(AM208000\) form. For details about the management of bills of material, see [Managing Bills of Material](../UserGuide/BOM_Mapref.md).

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *SalesDemo* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md#) \(CS100000\) form, make sure the *Manufacturing* feature is enabled.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
4.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *PRODWHOLE* branch.

## Request { .section}

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

You can use the following HTTP request example to retrieve the list of BOMs registered in the system along with their operations.

```
GET /entity/MANUFACTURING/25.100.001/BillOfMaterial?
  $expand=Operations HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json
```

## Usage Notes { .section}

If you want to retrieve additional details of the operations of BOMs, you cannot specify the `Operations/Material`, `Operations/Overheads`, `Operations/Steps`, or `Operations/Tools` fields in the *$expand* parameter of the above request, because this would cause the *Optimization cannot be performed* error to be generated. Instead, you should retrieve a single BOM and specify these fields in the *$expand* parameter of the request \(see [Retrieve the Details of a Bill of Material's Operations](IntegrationDev_RESTExample_BillOfMaterial_GetDetails.md)\).

**Parent topic:**[BillOfMaterial](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_BillOfMaterial.md)

