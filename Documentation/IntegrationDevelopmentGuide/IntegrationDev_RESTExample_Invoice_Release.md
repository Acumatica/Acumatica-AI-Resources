# Release an AR Invoice {#_532d3d10-00d3-479e-81a5-f11698357f7c .concept}

If you are using the contract-based REST API to integrate Acumatica ERP with an external system, this external system can release an AR invoice.

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *HEADOFFICE* branch.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
4.  On the [Invoices and Memos](../UserGuide/AR_30_10_00.md#) \(AR301000\) form, create an invoice, save it, and click **Remove Hold**.
5.  In the database, in the `ARInvoiceNbr` table, learn the `RefNoteID` value that corresponds to the reference number of the created invoice, which is stored in the `RefNbr` column.

## Request { .section}

You can use the following request example to invoke the release operation for an AR invoice through the contract-based REST API. You specify the `RefNoteID` value of the invoice in the `id` field of the request body.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
POST /entity/Default/25.200.001/Invoice/ReleaseInvoice HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "entity": { "id": "8beb2af9-fa58-ec11-9e16-9828a61840c3" }
}
```

**Parent topic:**[Invoice](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Invoice.md)

