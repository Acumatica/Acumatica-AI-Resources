# Assign a Tax Zone to a Customer {#_14159361-e0c2-43bb-a6d0-679bf4c1508e .concept}

By using the REST API, you can assign a tax zone to a customer.

You will use the `PUT` HTTP method and the Customer entity of the *Default/25.200.001* endpoint. The Customer entity is mapped to the [Customers](../UserGuide/AR_30_30_00.md) \(AR303000\) form.

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *HEADOFFICE* branch.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.

## Request { .section}

Suppose that you need to assign the *NYSTATE* tax zone to the *FRUITICO* customer. You use the following example of an HTTP request to do this.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/25.200.001/Customer?
    $select=CustomerID,TaxZone / HTTP/1.1
Host: [<Acumatica ERP instance URL>]
Accept: application/json
Content-Type: application/json

{
    "CustomerID": {"value": "FRUITICO"},
    "TaxZone": {"value": "NYSTATE"}
}
```

**Parent topic:**[Customer](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Customer.md)

