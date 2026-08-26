# Update a Customer {#_87dd5c39-0a0b-4086-8aa5-791657073bbd .concept}

If you are using the contract-based REST API to integrate Acumatica ERP with an external system, this external system can update a customer record.

You will use the `PUT` HTTP method to update the record. You will specify the $filter parameter to find the needed customer record by using the email address.

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *T100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
3.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *MYSTORE* branch.

## Request { .section}

You can use the following request example to update a customer record that has the *info@jevy-comp.con* email address through the REST API. As a result of this request, the customer class and the billing contact of the customer are modified.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/25.200.001/Customer
    $expand=MainContact,BillingContact&
    $select=CustomerID,CustomerClass,BillingContact/Email&
    $filter=MainContact/Email%20eq%20'info@jevy-comp.con' HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "CustomerClass": {"value": "INTL"},
    "BillingContactOverride": {"value": true},
    "BillingContact": {
        "Email": {"value": "green@jevy-comp.con"},
        "Attention": {"value": "Mr. Jack Green"},
        "JobTitle": {"value": ""}
    }
}
```

**Parent topic:**[Customer](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Customer.md)

