# Emails and Activities: Tasks {#_c6dcbc1a-dc06-4794-893f-6e976f8b5766 .concept}

In Acumatica ERP, you can create tasks that are associated with entities related to customer relationship management \(CRM\), such as leads, contacts, business accounts, mass emails, marketing lists, marketing campaigns, opportunities, sales quotes, and cases; the tasks may also be associated with projects, project tasks, project quotes, customers, vendors, and employees. While viewing any of these entities on its data entry form, you can create a task associated with it and track all tasks \(and other activities\) related to the entity.

## Creation and Tracking of Tasks for an Entity { .section}

You can create a task associated with any of these entities by clicking the **Create Task** button on the table toolbar of the **Activities** tab of any of the following forms:

-   [Leads](CR_30_10_00.md) \(CR301000\)
-   [Contacts](CR_30_20_00.md) \(CR302000\)
-   [Business Accounts](CR_30_30_00.md) \(CR303000\)
-   [Mass Emails](CR_30_80_00.md) \(CR308000\)
-   [Marketing Lists](CR_20_40_00.md) \(CR204000\)
-   [Marketing Campaigns](CR_20_20_00.md) \(CR202000\)
-   [Opportunities](CR_30_40_00.md) \(CR304000\)
-   [Sales Quotes](CR_30_45_00.md) \(CR304500\)
-   [Cases](CR_30_60_00.md) \(CR306000\)
-   [Employees](EP_20_30_00.md) \(EP203000\)
-   [Projects](PM_30_10_00.md) \(PM301000\)
-   [Project Tasks](PM_30_20_00.md) \(PM302000\)
-   [Project Quotes](PM_30_45_00.md) \(PM304500\)
-   [Customers](AR_30_30_00.md) \(AR303000\)
-   [Vendors](AP_30_30_00.md) \(AP303000\)

When you click **Create Task**, the [Task](CR_30_60_20.md) \(CR306020\) form opens in a pop-up window, where you can specify the needed details. By default, the system inserts your username in the **Owner** box of the **Details** tab, but you can reassign the task to another owner. When you have saved the task and closed the form, the system adds a row with the *Task* type to the **Activities** tab of the form.

On the **Activities** tab, you can view the details of the task \(or any listed activity\) by clicking the link in the **Summary** column of the appropriate row, which opens the task on the form used to create it \(which varies depending on the activity type\) in a pop-up window.

In the **Related Entity** box of the [Task](CR_30_60_20.md) form, the system inserts the entity that is associated with the task if a user has created the task from the data entry form of the entity. If the user changes the related entity of the task, the summary information about the task will be added to the **Activities** tab of the form for the new entity. The task will no longer be associated with the entity that was previously selected in this box.

If the task is not canceled or completed, you can associate it with any existing task by selecting this task in the **Parent Activity** box of the [Task](CR_30_60_20.md) form. If the parent task has been associated with a project, the system copies this project \(and project task, if one has been specified\) to the **Project** and **Project Task** boxes of the [Task](CR_30_60_20.md) form for the child task.

If a system administrator has enabled the use of reminders in Acumatica ERP, you can set up a reminder for a task. In the Summary area of the [Task](CR_30_60_20.md) form, you select the **Reminder** check box and specify on which day and time before the due date the task owner should receive the reminder \(in the **Remind At** box\). On the specified date and time, the reminder will appear on the task owner’s Acumatica ERP screen so that the creator or the owner can complete the task or change its status. For the information about how to turn on reminders, see [To Enable Reminders](Configuring_reminders.md).

## Copying of Lead-Related Tasks to Related Entities { .section}

If you create tasks related to a lead, and then you create a contact or business account for the lead or convert the lead to an opportunity, the system copies all the tasks \(and other activities\) listed on the **Activities** tab of the [Leads](CR_30_10_00.md) \(CR301000\) form to the same tab of the [Contacts](CR_30_20_00.md) \(CR302000\), [Business Accounts](CR_30_30_00.md) \(CR303000\), or [Opportunities](CR_30_40_00.md) \(CR304000\) form, respectively. The system copies the activities to the opportunity from the lead only if the **Show Activities from Source Lead** check box is selected on the [Opportunity Classes](CR_20_90_00.md) \(CR209000\) form for the opportunity class that is specified in the **Opportunity Class** box of the **Create Opportunity** dialog box. Thus, the system preserves the history of tasks and other activities created for the lead and copies this history to the entities associated with the lead.

**Tip:** Tasks that you create on the [Contacts](CR_30_20_00.md), [Business Accounts](CR_30_30_00.md), and [Opportunities](CR_30_40_00.md) forms are associated with only the entity \(contact, business account, or opportunity\) for which they have been created.

## Task Management { .section}

By using the [Event and Task Categories](EP_20_40_40.md) \(EP204040\) form, you can create a list of task categories and provide a color code for each category. If you do, when you open the list of your tasks on the Tasks \(EP4040PL\) form, you will see the tasks highlighted with colors corresponding to the categories.

## Ability to Add User-Defined Fields to CRM Forms { .section}

User-defined fields are site-specific elements that have been defined to track information deemed as important to the organization. An administrator and customizer—a user with particular access rights in the system—can add user-defined fields to such CRM forms as [Activity](../Shared/../UserGuide/CR_30_60_10.md) \(CR306010\), [Task](../Shared/../UserGuide/CR_30_60_20.md) \(CR306020\), and [Event](../Shared/../UserGuide/CR_30_60_30.md) \(CR306030\) form. For details, see [Adjustment of the Acumatica ERP UI: Managing User-Defined Fields](../Shared/../UserGuide/GS_Personalization_UI_User_Defined_Fields.md).

## Copying of User-Defined Fields Between Activities, Tasks, Events, and Other Entities { .section}

The values of user-defined fields can be copied between activities on the [Activity](../Shared/../UserGuide/CR_30_60_10.md) \(CR306010\) form, tasks on the [Task](../Shared/../UserGuide/CR_30_60_20.md) \(CR306020\) form, events on the [Event](../Shared/../UserGuide/CR_30_60_30.md) \(CR306030\) form and an associated entity to which user-defined fields can be added.

In this context, the *original record* is the record from which the associated record is created. If you create an activity, task, or event from another task, event, or any entity in the system to which user-defined fields can be added, and both the original entity and the new entity has any of the same user-defined fields, the values of these fields are automatically copied to the new entity.

If both the new entity \(activity, task, or event\) and the original entity have default values that are defined for the same user-defined field, the field value from the original entity is copied to the corresponding field of the new entity.

For more details about the copying of user-defined fields between CRM entities, see [Leads: General Information](../Shared/../UserGuide/CRM_Mktg_Creating_Leads_GeneralInfo.md), [Business Accounts: General Information](../Shared/../UserGuide/CRM_Sales_Creating_Bus_Accounts_GeneralInfo.md), [Contacts: General Information](../Shared/../UserGuide/CRM_Sales_Creating_Contacts_GeneralInfo.md), [Opportunities: General Information](../Shared/../UserGuide/CRM_Sales_Creating_Opportunities_GeneralInfo.md), or [Cases: General Information](../Shared/../UserGuide/CRM_Support_Creating_Cases_GeneralInfo.md).

## Notifications About Assigning a Task to an Owner { .section}

In Acumatica ERP, a system administrator can set up the automatic built-in notifications about the assigning of tasks with the *Open* or *Processing* status. You can receive these notifications by email in the following scenarios:

-   If you are assigned to a new task and the creator of the task is other user.

    To start sending notifications about these events, the system administrator should activate the *CRNewTask* business event on the [Business Events](SM_30_20_50.md) \(SM302050\) form.

-   If you are the owner of a related entity \(such as a lead, a contact, a business account, an opportunity, or a case\) and one of the following events for which you are not the creator has happened:
    -   A task has been created for the related entity and assigned to another user.
    -   An existing task associated with the related entity has been reassigned to another user.
    -   An existing task has been recently associated with this related entity and assigned to other user.

        To start sending notifications about these events, the system administrator should activate the *CRNewThirdPartyTask* business event on the [Business Events](SM_30_20_50.md) form.


For details, see [Business Events](../CustomizationPlatform/CG_GL_Items_BusinessEvents.md).

**Parent topic:**[Managing Emails and Activities](../UserGuide/CRM_Mktg_Managing_Emails_Activities_Mapref.md)

