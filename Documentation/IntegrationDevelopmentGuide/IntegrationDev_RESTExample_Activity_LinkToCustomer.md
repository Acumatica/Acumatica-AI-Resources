# Create an Activity that Is Linked to a Customer {#_19b027ab-a469-481c-94c7-567f9884bbab .concept}

By using the REST API, you can establish the relationship of the Activity, Event, Task, and Email objects with customers in Acumatica ERP. You can also establish this relationship by using the **Create Activity**, **Create Event**, **Create Task**, or **Create Email** button on **Activities** tab of the [Customers](../UserGuide/AR_30_30_00.md) \(AR303000\) form.

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *HEADOFFICE* branch.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.

## Request { .section}

You can use the following request example to create an activity that is linked to a customer through the contract-based REST API. In the `RelatedEntityNoteID` field, you use the `ID` value of the customer for linking. This `ID` value is present, for example, in the response body when you create a customer, as described in [Create a Customer](IntegrationDev_RESTExample_Customer_Create.md).

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/25.200.001/Activity HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "Summary": {"value": "Automated Test 2"},
    "Type": {"value": "M"},
    "RelatedEntityNoteID": {"value": "f37200d6-35ea-eb11-9dee-9828a61840c3"},
    "RelatedEntityType": {"value": "PX.Objects.AR.Customer"},
    "ActivityDetails":{"value": "Automated Test 2"}
}
```

## Usage Notes { .section}

You use the following fields of the Activity entity:

-   RelatedEntityNoteID: The NoteID value of the customer with which the relationship is established.
-   RelatedEntityType: The full name of the type of the object with which the relationship is established \(namely, PX.Objects.AR.Customer\). This field is optional, but we recommend using it. The field can be omitted because an object with which the relationship is established has a persisting note record in the database.
-   RelatedEntityDescription: The description of the related object. This field is read-only.

**Parent topic:**[Activity](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Activity.md)

