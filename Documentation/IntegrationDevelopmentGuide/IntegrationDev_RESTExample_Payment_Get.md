# Retrieve Payments One by One {#_02e2a96b-d432-463c-9131-303065dbfa4e .concept}

By using the REST API, you can retrieve payments one by one from Acumatica ERP. In this case, the key fields—namely, the payment type and reference number—are specified in a request. When a single payment is retrieved by using the contract-based REST API, the following information can be retrieved as well: documents to apply, orders to apply, application history, credit card processing information, and credit card transaction information.

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *T100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
3.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *MYSTORE* branch.

## Request { .section}

You can use the following request example to retrieve the *000001* payment, along with detailed information about it, through the contract-based REST API.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
GET /entity/Default/25.200.001/Payment/Payment/000001?
    $select=ReferenceNbr,Type,Status,ApplicationDate,
        ApplicationHistory/DisplayDocType,ApplicationHistory/DisplayRefNbr
    &$expand=ApplicationHistory HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json
```

## Usage Notes { .section}

To achieve the best performance of the retrieval of the list of payments, you can create a custom generic inquiry, add it to a custom endpoint or an endpoint extension, and use this generic inquiry for the data retrieval. This scenario is outside of the scope of this course. For details about retrieval of the data from a generic inquiry, see [Retrieve Data from an Inquiry Form](IntegrationDev_RESTExample_Basic_Retrieve_from_Inquiry.md).

**Parent topic:**[Payment](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Payment.md)

