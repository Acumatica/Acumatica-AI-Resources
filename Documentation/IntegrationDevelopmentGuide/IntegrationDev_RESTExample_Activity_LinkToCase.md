# Create an Activity that Is Linked to a Case {#_281011f8-aaf5-440f-a558-ff83afd09e62 .concept}

By using the REST API, you can establish the relationship of the Activity, Event, Task, and Email records with cases in Acumatica ERP. In the user interface, you can establish this relationship by using the **Create Activity**, **Create Event**, **Create Task**, or **Create Email** button on the **Activities** tab of the [Cases](../UserGuide/CR_30_60_00.md) \(CR306000\) form. For details about the management of cases, see [Case Management: General Information](../UserGuide/CRM_Support_Managing_Cases_GeneralInfo.md).

This example shows how to link an activity to a case.

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *HEADOFFICE* branch.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.

## Request { .section}

You can use the following request example to create an activity that is linked to a case through the contract-based REST API. In the `RelatedEntityNoteID` field, you use the `ID` value of the case for linking. This `ID` value is present, for example, in the response body when you create a case, as described in [Create a Case](IntegrationDev_RESTExample_Case_Create.md).

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
    "RelatedEntityType": {"value": "PX.Objects.CR.CRCase"},
    "ActivityDetails":{"value": "Automated Test"}
}
```

## Usage Notes { .section}

You use the following fields of the Activity entity:

-   RelatedEntityNoteID: The NoteID value of the object with which the relationship is established.
-   RelatedEntityType: The full name of the type of the object with which the relationship is established \(namely, PX.Objects.CR.CRCase\).
-   RelatedEntityDescription: The description of the related object. This field is read-only.

**Parent topic:**[Activity](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Activity.md)

