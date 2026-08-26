# Opportunity Assignment to Owners and Workgroups: Implementation Checklist {#_5756885a-ae45-46d9-bf58-27b82a346e97 .concept}

The following sections provide details you can use to ensure that the system is configured properly for assigning opportunities to owners, and to understand \(and change, if needed\) the settings that affect the opportunity assignment workflow.

## Implementation Checklist { .section}

We recommend that before you start assigning opportunities to owners, you make sure that the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|The *Customer Management* feature has been enabled: This feature provides the customer relationship management \(CRM\) functionality, including lead and customer tracking, and gives users the ability to manage sales opportunities, contacts, marketing lists, and marketing campaigns.|
|[Assignment Maps](EP_20_50_10.md) \(EP205010\)|If you will be assigning opportunities to owners by using assignment maps, an opportunity assignment map has been created and properly configured.|
|[Customer Management Preferences](CR_10_10_00.md) \(CR101000\)|If you will be assigning opportunities to owners by using assignment maps and you will be using the [Assign Opportunities](CR_50_31_10.md) \(CR503110\) mass-processing form to assign owners to existing opportunities without owners according to this map, an assignment map has been specified in the **Opportunity Assignment Map** box on the **General** tab \(**Assignment Settings** section\).|
|[Company Tree](EP_20_40_61.md) \(EP204061\)|The needed departments or workgroups have been added to the company tree.|
|[Employees](EP_20_30_00.md) \(EP203000\)|Employee records have been created in the system.|
|[Opportunity Classes](CR_20_90_00.md) \(CR209000\)|Opportunity classes have been created with the necessary settings and attributes, including **Default Owner** on the **Details** tab \(**Data Entry Settings** section\).|

## Other Settings That Affect the Workflow { .section}

You can affect the opportunity assignment workflow by including the sending of email notifications. If you want email notifications to be sent to the responsible employees when an opportunity is assigned to an employee or when the status of the opportunity is changed, an administrator can set up email or push notifications on the [Business Events](SM_30_20_50.md) \(SM302050\) form so that the employee receives a notification by email, by SMS, or in Acumatica mobile app. For details, see [Business Events](../CustomizationPlatform/CG_GL_Items_BusinessEvents.md).

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you practice assigning opportunities to owners by performing instructions similar to those described in [Opportunity Assignment to Owners and Workgroups: Process Activity](CRM_Sales_Assigning_Opportunities_to_Owners_Process_Activity.md).

**Parent topic:**[Assigning Opportunities to Owners and Workgroups](../UserGuide/CRM_Sales_Assigning_Opportunities_to_Owners_Mapref.md)

