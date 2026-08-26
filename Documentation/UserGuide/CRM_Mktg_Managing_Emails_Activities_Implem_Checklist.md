# Emails and Activities: Implementation Checklist {#_4d55e02e-fefe-4bcc-8283-7b5797797dd9 .concept}

The following sections provide details you can use to ensure that the system is configured properly for tracking communication with your potential and existing customers, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

We recommend that before you start tracking communication with your potential and existing customers, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|The *Customer Management* has been enabled. This feature provides the customer relationship management \(CRM\) functionality, including lead and customer tracking, and gives users the ability to manage sales opportunities, contacts, marketing lists, and marketing campaigns.|
|[Customer Management Preferences](CR_10_10_00.md) \(CR101000\)|All the necessary settings have been specified.|
|[Lead Classes](CR_20_70_00.md) \(CR207000\)|Lead classes with the necessary details and attributes have been created.|
|[Leads](CR_30_10_00.md) \(CR301000\)|Leads that belong to the necessary classes have been added to the system.|
|[Employees](EP_20_30_00.md) \(EP203000\)|Employee records have been created in the system.|
|[Users](SM_20_10_10.md) \(SM201010\)|Users have been created for employees.|
|[Email Accounts](SM_20_40_02.md) \(SM204002\)|A system email account has been configured.|
|[Event Setup](EP_20_40_70.md) \(EP204070\)|The system-wide settings have been specified to prepare the system to send automatic notifications by using the built-in notification capabilities|

## Assignment Notification Settings { .section}

You may want to activate the notification of activity and task assignment by sending email notifications to the responsible employees, which are defined depending on what specific event has happened. These notification capabilities include the following scenarios:

-   You can send a notification to the owner of a new activity or task when a creator of the new activity or task is not the owner.
-   You can send a notification to the owner of a related entity when one of the following events for which the owner is not the creator has happened:
    -   An activity or task has been created for the related entity and assigned to another user.
    -   An existing activity or task associated with the related entity has been reassigned to another user.
    -   An existing activity or task has been recently associated with the related entity for which the employee is the owner, and assigned to another user.

An administrator can set up the email notifications on the [Business Events](SM_30_20_50.md) \(SM302050\) form. For details, see [Business Events](../CustomizationPlatform/CG_GL_Items_BusinessEvents.md).

## Validation of Configuration { .section}

To make sure that all settings are configured correctly, we recommend that you practice communicating with the leads by performing instructions similar to those described in the following topics:

-   [Emails and Activities: To Create an Email](CRM_Mktg_Managing_Emails_Activities_Create_Email.md)
-   [Emails and Activities: To Create an Event](CRM_Mktg_Managing_Emails_Activities_Create_Event.md)
-   [Emails and Activities: To Track a Phone Call](CRM_Mktg_Managing_Emails_Activities_Create_Activity.md)
-   [Emails and Activities: To Create a Task](CRM_Mktg_Managing_Emails_Activities_Create_Task.md)

**Parent topic:**[Managing Emails and Activities](../UserGuide/CRM_Mktg_Managing_Emails_Activities_Mapref.md)

