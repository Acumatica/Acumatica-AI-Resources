# Create a Bill of Material {#_3132bec8-c1e3-48f9-b6c3-80662fe9fe27 .concept}

By using the REST API, you can create bills of material \(BOMs\) on the [Bill of Material](../UserGuide/AM_20_80_00.md) \(AM208000\) form. For details about the management of bills of material, see [Managing Bills of Material](../UserGuide/BOM_Mapref.md).

## System Preparation { .section}

Before you test the code in the following section, you need to:

1.  Deploy a new Acumatica ERP instance with the *SalesDemo* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md#) \(CS100000\) form, make sure the *Manufacturing* feature is enabled.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
4.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *PRODWHOLE* branch.

## Requests { .section}

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

You can use the following HTTP request example to create a BOM containing information about an operation and a material used.

```
PUT /entity/MANUFACTURING/25.100.001/BillOfMaterial?
  $expand=Operations,Operations/Material HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{    
    "BOMID": { 
        "value": "<NEW>" 
    },
    "Description": {
        "value": "Test BOM"
    },
    "InventoryID": {
        "value": "CABINET"
    },
    "Operations": [
        {
            "OperationNbr": {
                "value": "0010"
            },
            "WorkCenter": {
                "value": "WC10"
            },
            "Material" :[
                {
                    "InventoryID": {
                        "value": "HINGE"
                    },
                    "UOM":{
                        "value": "EA"
                    }  
                }
            ]
        }
		],
    "Revision": {
        "value": "A"
    }
}
```

In this example, the *&lt;NEW&gt;* value is specified for the `BOMID` field, and the next identifier is assigned to this field for the newly created BOM. You can also specify an empty string as a value for the `BOMID` field, which will lead to the same result.

```language-json
{    
    "BOMID": { "value": "" },
    ...
}
```

**Parent topic:**[BillOfMaterial](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_BillOfMaterial.md)

