# Case Assignment to Owners and Workgroups: Implementation Checklist

The following sections provide details you can use to ensure that the system is configured properly for assigning cases to owners and workgroups, and to understand \(and change, if needed\) the settings that affect the case assignment workflow.

## Mandatory Configuration

We recommend that before you start assigning cases to owners, you make sure that the needed features have been enabled and entities have been created, as summarized in the following checklist.

<table id="_75f5a845-9a95-409c-9ffd-7c022ec672dc"><thead><tr><th>

Form

</th><th>

Criteria to Check

</th></tr></thead><tbody><tr><td>

[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)

</td><td>

The following features have been enabled:-   *Customer Management*: This feature provides the customer relationship management \(CRM\) functionality.
-   *Case Management* in the *Customer Management* group of features: This feature gives customer support personnel the ability to create support cases, assign cases to owners, and process cases.

</td></tr><tr><td>

[Case Classes](CR_20_60_00.md) \(CR206000\)

</td><td>

Case classes have been created with the necessary settings and attributes, as described in [Defining Case Classes](CRM_Case_Classes_Mapref.md).

</td></tr></tbody>
</table>

|Form|Required Task|
|----|-------------|
|[Employees](EP_20_30_00.md) \(EP203000\)|Employee records have been created in the system.|
|[Company Tree](EP_20_40_61.md) \(EP204061\)|The needed departments, workgroups, and employees have been added to the company tree.|
|[Assignment Maps](EP_20_50_10.md) \(EP205010\)|A case assignment map has been created and it is properly configured.|
|[Customer Management Preferences](CR_10_10_00.md) \(CR101000\)|A case assignment map has been specified in the **Case Assignment Map** box on the **General** tab \(**Assignment Settings** section\).|

## Other Settings That Affect the Workflow

You can include the sending of email notifications in the case assignment workflow. If you want email notifications to be sent to the responsible employees when a case is assigned to an employee or when the status of the case is changed, an administrator can set up email or push notifications on the [Business Events](SM_30_20_50.md) \(SM302050\) form so that the employee receives a notification by email, by SMS, or in the Acumatica mobile app. For details, see [Business Events](../CustomizationPlatform/CG_GL_Items_BusinessEvents.md).

## Validation of Configuration

To make sure that all configuration has been performed correctly, we recommend that in your system, you practice assigning cases to owners by performing instructions similar to those described in [Case Assignment to Owners and Workgroups: Process Activity](CRM_Support_Assigning_Cases_to_Owners_Activity.md).

**Parent topic:**[Assigning Cases to Owners and Workgroups](../UserGuide/CRM_Support_Assigning_Cases_to_Owners_Mapref.md)

