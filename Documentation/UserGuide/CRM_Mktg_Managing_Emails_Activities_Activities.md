# Emails and Activities: Activities {#_4426fc2d-8320-4d1c-a5ae-10b38db54172 .concept}

In Acumatica ERP, you can create miscellaneous activities—such as notes, chats, phone calls, escalations, messages, and work items—directly from the forms you use to create entities related to customer relationship management \(CRM\). These entities include leads, contacts, business accounts, marketing lists, marketing campaigns, opportunities, sales quotes, projects, project tasks, project quotes, cases, and employees. While viewing any of these entities on its data entry form, you can create an activity associated with it and track all activities related to the entity.

**Tip:** This topic is focused on the miscellaneous activities \(listed above\) that can be created for entities. For details on creating activities that are emails, tasks, or events, see [Emails and Activities: Emails](CRM_Mktg_Managing_Emails_Activities_Emails.md), [Emails and Activities: Tasks](CRM_Mktg_Managing_Emails_Activities_Tasks.md), and [Emails and Activities: Events](CRM_Mktg_Managing_Emails_Activities_Events.md), respectively.

## Creation and Tracking of Activities for an Entity { .section}

You can create an activity associated with an entity by clicking the needed action on the **Create Activity** menu on the table toolbar of **Activities** tab of any of the following forms:

-   [Business Accounts](CR_30_30_00.md) \(CR303000\)
-   [Cases](CR_30_60_00.md) \(CR306000\)
-   [Contacts](CR_30_20_00.md) \(CR302000\)
-   [Employees](EP_20_30_00.md) \(EP203000\)
-   [Leads](CR_30_10_00.md) \(CR301000\)
-   [Marketing Campaigns](CR_20_20_00.md) \(CR202000\)
-   [Marketing Lists](CR_20_40_00.md) \(CR204000\)
-   [Mass Emails](CR_30_80_00.md) \(CR308000\)
-   [Project Quotes](PM_30_45_00.md) \(PM304500\)
-   [Projects](PM_30_10_00.md) \(PM301000\)
-   [Project Tasks](PM_30_20_00.md) \(PM302000\)
-   [Opportunities](CR_30_40_00.md) \(CR304000\)
-   [Sales Quotes](CR_30_45_00.md) \(CR304500\)

When you click the action, the [Activity](CR_30_60_10.md) \(CR306010\) form opens in a pop-up window, where you can specify the needed details. When you save the activity, the system returns you to the form you added the activity from and adds a row with the *Activity* type to the **Activities** tab of the form.

On the **Activities** tab, you can view the details of this activity \(or any listed activity\) by clicking the link in the **Summary** column of the appropriate row, which opens the activity on the form used to create it \(which varies depending on the activity type\) in a pop-up window.

In the **Related Entity** box of the [Activity](CR_30_60_10.md) form, the system inserts the entity that is associated with the activity if a user has created the activity while viewing the entity on its data entry form. If the user changes the related entity of the activity, the summary information about the activity will be added to the **Activities** tab of the form for the new entity. The activity will no longer be associated with the entity that was previously selected in this box.

If the activity is not canceled or completed, you can associate it with any existing task or event by selecting the task or event in the **Parent Activity** box of the [Activity](CR_30_60_10.md) form. If the parent task or event has been associated with a project, the system copies this project \(and project task, if one has been specified\) to the **Project** and **Project Task** boxes of the [Activity](CR_30_60_10.md) form.

## Copying of Lead-Related Activities to Related Entities { .section}

If you have created activities to keep track of all communication that is related to a particular lead, and then you create a contact or business account for the lead or convert the lead to an opportunity, the system copies all the activities listed on the **Activities** tab of the [Leads](CR_30_10_00.md) \(CR301000\) form to the same tab of the [Contacts](CR_30_20_00.md) \(CR302000\), [Business Accounts](CR_30_30_00.md) \(CR303000\), or [Opportunities](CR_30_40_00.md) \(CR304000\) form, respectively. Thus, the system preserves the history of activities created for the lead in the associated entities and copies this history to the entities associated with the lead.

**Important:** Activities that you create on the [Business Accounts](CR_30_30_00.md) and [Opportunities](CR_30_40_00.md) forms are associated with only the record \(that is, the business account or opportunity\) for which they have been created. Conversely, if you create activities for a contact, they are displayed both on the [Contacts](CR_30_20_00.md) form for the contact and on the [Business Accounts](CR_30_30_00.md) form for the associated business account.

If based on your work processes you need to create your own set of activity types, you can add, view, edit, and delete types of activities on the [Activity Types](CR_10_20_00.md) \(CR102000\) form.

## Ability to Add User-Defined Fields to CRM Forms { .section}

User-defined fields are site-specific elements that have been defined to track information deemed as important to the organization. An administrator and customizer—a user with particular access rights in the system—can add user-defined fields to such CRM forms as [Activity](../Shared/../UserGuide/CR_30_60_10.md) \(CR306010\), [Task](../Shared/../UserGuide/CR_30_60_20.md) \(CR306020\), and [Event](../Shared/../UserGuide/CR_30_60_30.md) \(CR306030\) form. For details, see [Adjustment of the Acumatica ERP UI: Managing User-Defined Fields](../Shared/../UserGuide/GS_Personalization_UI_User_Defined_Fields.md).

## Copying of User-Defined Fields Between Activities, Tasks, Events, and Other Entities { .section}

The values of user-defined fields can be copied between activities on the [Activity](../Shared/../UserGuide/CR_30_60_10.md) \(CR306010\) form, tasks on the [Task](../Shared/../UserGuide/CR_30_60_20.md) \(CR306020\) form, events on the [Event](../Shared/../UserGuide/CR_30_60_30.md) \(CR306030\) form and an associated entity to which user-defined fields can be added.

In this context, the *original record* is the record from which the associated record is created. If you create an activity, task, or event from another task, event, or any entity in the system to which user-defined fields can be added, and both the original entity and the new entity has any of the same user-defined fields, the values of these fields are automatically copied to the new entity.

If both the new entity \(activity, task, or event\) and the original entity have default values that are defined for the same user-defined field, the field value from the original entity is copied to the corresponding field of the new entity.

For more details about the copying of user-defined fields between CRM entities, see [Leads: General Information](../Shared/../UserGuide/CRM_Mktg_Creating_Leads_GeneralInfo.md), [Business Accounts: General Information](../Shared/../UserGuide/CRM_Sales_Creating_Bus_Accounts_GeneralInfo.md), [Contacts: General Information](../Shared/../UserGuide/CRM_Sales_Creating_Contacts_GeneralInfo.md), [Opportunities: General Information](../Shared/../UserGuide/CRM_Sales_Creating_Opportunities_GeneralInfo.md), or [Cases: General Information](../Shared/../UserGuide/CRM_Support_Creating_Cases_GeneralInfo.md).

## Notifications About Assigning an Activity to an Owner { .section}

In Acumatica ERP, a system administrator can set up the automatic built-in notifications about the assigning of activities. You can receive these notifications by email in the following scenarios:

-   If you are assigned to a new activity and the creator of the activity is another user.

    To start sending notifications about these events, the system administrator should activate the *CRNewActivity* business event on the [Business Events](SM_30_20_50.md) \(SM302050\) form.

-   If you are the owner of a related entity \(such as a lead, a contact, a business account, an opportunity, or a case\) and one of the following events for which you are not the creator has happened:
    -   An activity has been created for the related entity and assigned to another user.
    -   An existing activity associated with the related entity has been reassigned to another user.
    -   An existing activity has been recently associated with this related entity and assigned to another user.

        To start sending notifications about these events, the system administrator should activate the *CRNewThirdPartyActivity* business event on the [Business Events](SM_30_20_50.md) form.


For details, see [Business Events](../CustomizationPlatform/CG_GL_Items_BusinessEvents.md).

**Parent topic:**[Managing Emails and Activities](../UserGuide/CRM_Mktg_Managing_Emails_Activities_Mapref.md)

