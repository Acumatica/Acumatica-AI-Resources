# Specific Approvals: Time Cards {#_4815c193-5db1-42d3-8088-f2e353c9c537 .concept}

In Acumatica ERP, you can set up the approval functionality for employee time cards, equipment time cards, or both types of time cards, depending on your company's policies.

An employee time card logs an employee's weekly work hours and any overtime. On the other hand, an equipment time card tracks the duration of equipment use. If applicable, time can be logged to specific projects and project tasks.

**Note:** The time card functionality is available if the *Advanced Financials* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.

For more information about employee time cards and equipment time cards, see [Employee Time Entry: Time Cards](../UserGuide/TimeExpenses_Entering_Employee_Time_Time_Cards.md).

## Configuration of the Approval Workflow of Time Cards { .section}

If the *Time Management* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) form, you cannot approve or release employee time cards and equipment time cards unless all the activities included in the specific time card have been approved. For more information, see [Employee Time Entry: Time Activities](../UserGuide/TimeExpenses_Entering_Employee_Time_Time_Activities.md).

To set up the approval functionality of employee time cards and equipment time cards, you perform the following general steps:

1.  You enable the *Approval Workflow* feature on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.
2.  For each type of time card for which you are configuring approvals, you create a new approval map or modify an existing one by using the [Approval Maps](../UserGuide/EP_20_50_15.md) \(EP205015\) form.
3.  Optional: You create any needed notification templates or edit the predefined ones on the [Email Templates](../UserGuide/SM_20_40_03.md) \(SM204003\) form.
4.  On the **General** tab \(**Approval Settings** section\) of the [Time and Expenses Preferences](../UserGuide/EP_10_10_00.md) \(EP101000\) form, you select the approval maps for employee time cards or equipment time cards \(or both\) in the **Time Card Approval Map** and **Equipment Time Card Approval Map** box, respectively.
5.  Optional: On the same tab, you select the notification templates for employee time cards or equipment time cards \(or both\) in the **Time Card Notification** and **Equipment Time Card Notification** box, respectively, in the **Pending Approval Notification Templates** section.

**Parent topic:**[Setting Up Specific Approvals](../ImplementationGuide/config_Approvals_Doc_Types_Workflow.md)

