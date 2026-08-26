# Retrieve the List of Customers with Contacts {#_322dc7ce-3e84-437c-a934-375f37ed2f70 .concept}

By using the REST API, you can retrieve the list of customers with contacts.

You will use the `GET` HTTP method and the Customer entity of the *Default/25.200.001* endpoint to list the customer records. The Customer entity is mapped to the [Customers](../UserGuide/AR_30_30_00.md) \(AR303000\) form.

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *T100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
3.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *MYSTORE* branch.

## Request { .section}

You can use the following sample request to retrieve the list of contacts through the contract-based REST API. For each contact, the main contact, including the address, is retrieved.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
GET /entity/Default/25.200.001/Customer?
    $expand=MainContact,MainContact/Address&
    $select=CustomerID,CustomerName,CustomerClass,MainContact/Email,
        MainContact/Phone1,MainContact/Address/AddressLine1,
        MainContact/Address/AddressLine2,MainContact/Address/City,
        MainContact/Address/State,MainContact/Address/PostalCode HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
```

## Usage Notes { .section}

The database can contain thousands of customer records, and each record includes dozens of fields. Thus, to achieve the best performance of the integration application during the export of records, you need to specify the fields of the customer records that should be returned. You use the $select parameter to specify the fields whose values should be retrieved from Acumatica ERP for each customer record.

You use the $expand parameter to specify the nested entities to be returned. In this parameter, you have to specify all the nested entities whose fields you need to retrieve from Acumatica ERP.

**Parent topic:**[Customer](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Customer.md)

