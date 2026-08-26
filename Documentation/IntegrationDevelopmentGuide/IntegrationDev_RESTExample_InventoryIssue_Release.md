# Release an Inventory Issue {#_9446583c-62d6-4760-a382-fb5f36aac52b .concept}

If you are using the contract-based REST API to integrate Acumatica ERP with an external system, this external system can release an inventory issue in Acumatica ERP.

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *HEADOFFICE* branch.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.

## Request { .section}

**Tip:** In the request examples below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

You can use the following request example to invoke the release operation for the *000055* inventory issue through the contract-based REST API.

```
POST /entity/Default/25.200.001/InventoryIssue/ReleaseInventoryIssue HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "entity": {
        "ReferenceNbr": { "value": "000055" }
    }
}
```

If the *202 Accepted* status code is returned for this request, the release operation has been invoked successfully. The `Location` header of the response contains the URL that you can use to check the status of the release operation by using the `GET` HTTP method. When the `GET` HTTP method with this URL returns *204 No Content*, the operation has been completed. Following is an example of such request.

```
GET /entity/Default/25.200.001/InventoryIssue/ReleaseInventoryIssue
    /status/2dd24788-3f54-4673-a040-bf55b6d04a00 HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json
```

**Parent topic:**[InventoryIssue](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_InventoryIssue.md)

