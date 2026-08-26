# Remove a Sales Invoice from Hold {#_225d83fc-889d-4152-bb0f-a647ff72da26 .concept}

If you are using the REST API to integrate Acumatica ERP with an external system, this external system can remove a sales invoice from hold as a part of processing the sales invoice. For example, the external system can remove a sales invoice from hold in Acumatica ERP when a user reviews the sales invoice before confirming it in the external system.

In Acumatica ERP, the execution of the request described in this topic changes the value in the **Status** box on the [Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\) form to *Balanced*.

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *T100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
3.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *MYSTORE* branch.
4.  Clear the **Validate Document Totals on Entry** check box on the [Accounts Receivable Preferences](../UserGuide/AR_10_10_00.md) \(AR101000\) form. With this check box cleared, the invoice amount does not have to be entered in the **Amount** box on the [Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\) form. \(When the check box is selected, this box can be used to validate data during manual document entry.\)
5.  On the [Invoices](../UserGuide/SO_30_30_00.md) form, make sure that the invoice with the *INV000046* reference number exists and has the *On Hold* status.

## Request { .section}

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

You can use the following sample HTTP request to remove the *INV000046* sales invoice from hold.

```
PUT /entity/Default/25.200.001/SalesInvoice HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "Type": {"value": "Invoice"},
    "ReferenceNbr": {"value": "INV000046"},
    "Hold": {"value": false}
}
```

**Parent topic:**[SalesInvoice](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_SalesInvoice.md)

