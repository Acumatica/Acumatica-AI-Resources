# Lead Assignment to Owners and Workgroups: Implementation Checklist {#_33cf7b1b-54d7-423f-88f1-a30f71b23973 .concept}

The following sections provide details you can use to ensure that the system is configured properly for assigning leads to owners, and to understand \(and change, if needed\) the settings that affect the lead assignment workflow.

## Implementation Checklist { .section}

We recommend that before you start assigning leads to owners, you make sure that the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|The *Customer Management* feature has been enabled: This feature provides the customer relationship management \(CRM\) functionality, including lead and customer tracking, and also gives users the ability to manage sales opportunities, contacts, marketing lists, and marketing campaigns.|
|[Assignment Maps](EP_20_50_10.md) \(EP205010\)|If you will be assigning leads to owners by using assignment maps, a lead assignment map has been created and it is properly configured.|
|[Customer Management Preferences](CR_10_10_00.md) \(CR101000\)|An assignment map is specified in the **Lead Assignment Map** box on the **General** tab.|
|[Company Tree](EP_20_40_61.md) \(EP204061\)|The needed departments or workgroups have been added to the company tree.|
|[Employees](EP_20_30_00.md) \(EP203000\)|Employee records have been created in the system.|
|[Users](SM_20_10_10.md) \(SM201010\)|User profiles have been created for employees.|
|[Lead Classes](CR_20_70_00.md) \(CR207000\)|Lead classes have been created with the necessary settings and attributes, including **Default Owner** on the **Details** tab \(**Data Entry Settings** section\).|

## Other Settings That Affect the Lead Assignment Workflow { .section}

You can affect the lead assignment workflow by specifying additional settings in the system, as follows. If you want email notifications to be sent to the responsible employees when a lead is assigned to an employee or when the status of the lead is changed, an administrator can set up email or push notifications on the [Business Events](SM_30_20_50.md) \(SM302050\) form so that the employee receives a notification by email, by SMS, or in Acumatica mobile app. For details, see [Business Events](../CustomizationPlatform/CG_GL_Items_BusinessEvents.md).

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you practice assigning leads to owners by performing instructions similar to those described in [Lead Assignment to Owners and Workgroups: Process Activity](CRM_Mktg_Assigning_Leads_To_Owners_Process_Activity.md).

**Parent topic:**[Assigning Leads to Owners and Workgroups](../UserGuide/CRM_Mktg_Assigning_Leads_To_Owners_Mapref.md)

