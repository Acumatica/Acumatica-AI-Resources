# Deactivate a Contact {#_77e8d81b-5495-44d4-82fb-e9f2e3887aea .concept}

If you are using the contract-based REST API to integrate Acumatica ERP with an external system, this external system can activate and deactivate contacts by setting the `Active` field of a `Contact` object to *true* or *false*, respectively.

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *HEADOFFICE* branch.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.

## Request { .section}

You can use the following request example to deactivate the Brent Edds contact through the contract-based REST API. The creation of a contact is described in [Create a Contact with Attributes](IntegrationDev_RESTExample_Contact_SetAttributes.md).

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/25.200.001/Contacts?
    $filter=FirstName%20eq%20'Brent'%20and%20LastName%20eq%20'Edds' HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "Active": {"value": false}
}
```

**Parent topic:**[Contact](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Contact.md)

