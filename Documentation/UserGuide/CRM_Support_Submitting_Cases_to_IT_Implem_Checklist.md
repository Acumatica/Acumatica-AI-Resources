# Case Submittal to Internal Teams: Implementation Checklist {#_2feac8c7-6867-4197-bea1-25b8fb0f8cf6 .concept}

The following sections provide details you can use to ensure that the system is configured properly for submitting internal cases to IT, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

To make it possible for employees to submit cases to internal teams, you must properly implement the basic CRM configuration. Make sure that the necessary features have been enabled, entities have been created, and settings have been specified, as described in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|The following features have been enabled:-   *Customer Management*: This feature provides the customer relationship management \(CRM\) functionality.
-   *Case Management* in the *Customer Management* group of features: With this feature enabled, internal cases can be created and the appropriate personnel can assign cases to owners and process them.

|
|[Customer Management Preferences](CR_10_10_00.md) \(CR101000\)|The default settings have been saved to the system, as described in [Basic Customer Relationship Management](../ImplementationGuide/config_CRM_Basic_Mapref.md).|
|[Case Classes](CR_20_60_00.md) \(CR206000\)|At least one case class has been created, as described in [Defining Case Classes](CRM_Case_Classes_Mapref.md), with the **Allow Selecting Employee as Case Contact** check box selected on the **Details** tab.|
|[Employee Classes](EP_20_20_00.md) \(EP202000\)|The needed employee classes have been created with the necessary settings and attributes.|
|[Employees](EP_20_30_00.md) \(EP203000\)|Employee records have been created in the system, including for all employees to whom internal cases will be submitted.|
|[Users](SM_20_10_10.md) \(SM201010\)|User profiles have been created for employees.|

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you perform instructions similar to those described in [Case Submittal to Internal Teams: Process Activity](CRM_Support_Submitting_Cases_to_IT_Activity.md).

**Parent topic:**[Submitting Cases to Internal Teams](../UserGuide/CRM_Support_Submitting_Cases_to_IT_Mapref.md)

