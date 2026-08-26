# Project Cost Projections: Implementation Checklist {#_3666a194-5969-4e96-b0d5-9552424cf630 .concept}

The following sections provide details that you can use to ensure that the system is configured properly for creating cost projections, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist {#section_o3v_hf3_s4b .section}

We recommend that before you initially create cost projection revisions, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form|The *Construction* feature is enabled.|
|[Projects Preferences](PM_10_10_00.md) \(PM101000\) form|All necessary settings related to project accounting have been specified. For more information about the configuration steps that you have to perform before you can start accounting for projects, see [Basic Project Configuration: General Information](../ImplementationGuide/config_Project_Basic_GeneralInfo.md).|
|[Projects](PM_30_10_00.md) \(PM301000\) form|The needed projects have been created, as described in [Project Creation and Processing: General Information](Projects_Process_GeneralInfo.md).|
|[Cost Projection Classes](PM_20_35_00.md) \(PM203500\) form|All needed cost projection classes have been configured, as described in [Project Cost Projections: To Create a Cost Projection Class](Construction_Cost_Projection_Implem_Activity.md).**Attention:** The structure of the cost projection class must correspond to the structure of the project cost budget for which you are preparing a cost projection revision.

If you plan to work with date-sensitive cost projections only, you do not need to create cost projection classes.

|

## Approval Workflow Configuration {#section_mrr_jf3_s4b .section}

To make sure that an approval workflow is configured correctly for cost projections, make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. For more information, see [Approval Configuration: General Information](../ImplementationGuide/config_Approvals_General_Info.md).

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form|The *Approval Workflow* feature is enabled.|
|[Approval Maps](EP_20_50_15.md) \(EP205015\) form|An approval map for cost projections has been created.|
|[Email Templates](SM_20_40_03.md) \(SM204003\) form|The notification template is configured \(if you need employees to receive notifications about pending approvals when cost projections require their approval\).|
|The **Approval** tab of the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form|The approval map for cost projections with revisions has been specified in the **Cost Projection Approval Map** box.

 The notification template for cost projections with revisions has been specified in the **Cost Projection Approval Notification** box \(if an employee needs to receive notifications about cost projections pending approval\).

 Also, the approval map for date-sensitive cost projections has been specified in the **Cost Projection by Date Approval Map** box.

 Finally, the notification template for date-sensitive cost projections has been specified in the **Cost Projection Approval Notification** box \(if an employee needs to receive notifications about date-sensitive cost projections pending approval\).

|

## Validation of Configuration {#section_p3v_hf3_s4b .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you create a cost projection for a project by performing instructions similar to those described in [Project Cost Projections: To Prepare a Cost Projection Revision](Construction_Cost_Projection_Process_Activity.md).

**Parent topic:**[Preparing Cost Projections](../UserGuide/Construction_Cost_Projection_Mapref.md)

