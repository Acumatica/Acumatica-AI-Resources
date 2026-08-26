# Create an Activity that Is Linked to a Lead {#_498dbbec-97a2-416b-a151-459ed07994dd .concept}

If you are using the contract-based REST API to integrate Acumatica ERP with an external system, this external system can establish the relationship of the Activity, Event, Task, and Email objects with leads in Acumatica ERP. You can also establish this relationship by using the **Create Activity**, **Create Event**, **Create Task**, or **Create Email** button on **Activities** tab of the [Leads](../UserGuide/CR_30_10_00.md) \(CR301000\) form. For more information about the creation of activities, see [Emails and Activities: Activities](../UserGuide/CRM_Mktg_Managing_Emails_Activities_Activities.md).

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *HEADOFFICE* branch.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.

## Request { .section}

You can use the following request example to create an activity that is linked to a case through the contract-based REST API. In the `RelatedEntityNoteID` field, you use the `ID` value of the case for linking. This `ID` value is present, for example, in the response body when you create a lead, as described in [Create a Lead](IntegrationDev_RESTExample_Lead_Create.md).

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/25.200.001/Activity HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "Summary": {"value": "Automated Test"},
    "Type": {"value": "M"},
    "RelatedEntityNoteID": {"value": "{{NoteID}}"},
    "RelatedEntityType": {"value": "PX.Objects.CR.CRLead"},
    "ActivityDetails":{"value": "Automated Test"}
}
```

## Usage Notes { .section}

You use the following fields of the Activity entity:

-   RelatedEntityNoteID: The NoteID value of the lead with which the relationship is established.
-   RelatedEntityType: The full name of the type of the object with which the relationship is established \(namely, PX.Objects.CR.CRLead\).
-   RelatedEntityDescription: The description of the related lead. This field is read-only.

**Parent topic:**[Activity](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Activity.md)

