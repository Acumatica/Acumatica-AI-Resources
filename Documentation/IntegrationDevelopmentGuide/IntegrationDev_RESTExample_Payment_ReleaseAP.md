# Release a Payment {#_709b0321-c44a-4226-a627-3507a93ce1d8 .concept}

If you are using the contract-based REST API to integrate Acumatica ERP with an external system, this external system can release an accounts receivable payment in Acumatica ERP.

## System Preparation { .section}

Before you test the code below, you need to do the following:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *HEADOFFICE* branch.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
4.  Create a payment for an invoice and sales order, as described in [Create a Payment for an Invoice and a Sales Order](IntegrationDev_RESTExample_Payment_CreateAP.md).

    **Tip:** If you use the `IntegrationDevelopmentGuide.postman_collection.json` Postman collection for testing, you do not need to perform the following configuration steps because they are performed in the pre-request script.

5.  Use the [Payments and Applications](../UserGuide/AR_30_20_00.md#) \(AR302000\) form or the REST API to remove the created payment from hold and specify the payment amount.

## Request { .section}

You can use the following request example to invoke the release process for the *000077* AR payment through the contract-based REST API. The reference number of the AR payment is specified in the `ReferenceNbr` field.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
POST /entity/Default/25.200.001/Payment/Release HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "entity": {
        "Type": { "value": "Payment" },
        "ReferenceNbr": { "value": "000077" }
    }
}
```

If the request returns *202* response code, the `Location` header of the response contains the URL that you can use to check the status of the operation by using the `GET` HTTP method. When the `GET` HTTP method with this URL returns *204 No Content*, the operation is completed. For more information, see [Execute an Action That Is Present in an Endpoint](IntegrationDev_RESTExample_Basic_Action_Execution.md).

**Parent topic:**[Payment](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Payment.md)

