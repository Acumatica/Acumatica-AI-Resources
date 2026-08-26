# Employee Time Entry: Crew Time {#_0ee6f7c3-a76f-49b1-ab65-f9e495d70118 .concept}

In Acumatica ERP, if the *Time Management* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, any group of employees \(which can be referred to as a *crew*\) can be defined as a workgroup and used for group entry, approval, and release of time activities.

## Managing Crews { .section}

On the [Company Tree](EP_20_40_61.md) \(EP204061\) form, you can group employees—that is, people in the organization with accounts defined on the [Employees](EP_20_30_00.md) \(EP203000\) form—into crews. A crew can be defined through a workgroup, which you can create in the **Company Tree** pane of the [Company Tree](EP_20_40_61.md) form. You can add members to each workgroup by using the **Workgroup Details** pane. A workgroup may include permanent and temporary members.

Also, when creating group time activities on the [Weekly Crew Time Entry](EP_30_71_00.md) \(EP307100\) form, you can add any employee defined in the system to the list of crew members. This capability is useful if that employee has performed the same activities as the other members of the crew. This added employee is marked as an ad hoc member of the crew, indicating that the employee is not a member of the selected workgroup.

## Creating Crew Time Entries { .section}

You can create multiple identical time activities for members of a crew by using the [Weekly Crew Time Entry](EP_30_71_00.md) \(EP307100\) form.

In the Summary area of the [Weekly Crew Time Entry](EP_30_71_00.md) form, you can select the workgroup and week for which you want to enter time activities. If needed, you can associate your time entry with a project and project task.

On the table toolbar of the **Time Activities** tab, you can click one of the following buttons:

-   **Add Row** to create a time activity for a particular member of the workgroup
-   **Mass Enter Time** to open the **Mass Enter Time** dialog box, where you can enter time for the crew

Initially, the left pane of the **Mass Enter Time** dialog box lists all members of the workgroup selected in the Summary area of the form. You can add ad hoc members to the list, if needed. You select the unlabeled check box for the members of the crew for whom you are creating the time activities. In the right pane, you can enter the settings for each time activity performed by the selected members during the week. When you click **Add** or **Add and Close**, the system will create time activities identical to those specified in the right pane of the dialog box for each selected member of the crew.

On the **Crew Members** tab of the [Weekly Crew Time Entry](EP_30_71_00.md) form, you can review the reported work hours of the crew members, including ad hoc members, broken down by the days of the week. The **Workgroup Members** counter shows the total number of the crew members, including ad hoc members. The **Members with Activities** counter shows the total number of crew members who have time activities reported for the selected week.

## Processing Crew Time Activities { .section}

After time activities have been mass-created for crew members, they can be processed as other time activities are.

On the [Employee Time Activities](EP_30_70_00.md) \(EP307000\) form, you can filter activities by workgroup; if necessary, you can edit them if they have not been released yet.

On the [Approve Time Activities](EP_50_70_10.md) \(EP507010\) form, you can filter activities by workgroup and then mass-approve them by clicking **Approve All** on the form toolbar.

On the [Release Time Activities](EP_50_70_20.md) \(EP507020\) form, you can filter activities by workgroup and then mass-release them by clicking **Release All** on the form toolbar.

**Parent topic:**[Entering Employee Time](../UserGuide/TimeExpenses_Entering_Employee_Time_Mapref.md)

