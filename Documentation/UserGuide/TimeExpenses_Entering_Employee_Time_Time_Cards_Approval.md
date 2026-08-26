# Employee Time Entry: Time Card Approval {#_3ac37a51-4149-460a-a1bd-76c9e453ca7f .concept}

Depending on your company’s policy, time cards may require approval by authorized employees before being released. The time card approval functionality is available if the *Approval Workflow* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Assignment for Approval { .section}

The system assigns a time card for approval once an employee enters it on the [Employee Time Cards](EP_30_50_00.md) \(EP305000\) form and clicks **Submit** on the form toolbar.

The system automatically assigns time cards for approval based on the approval map created on the [Approval Maps](EP_20_50_15.md) \(EP205015\) form. This approval map must be specified in the **Time Card Approval Map** box on the [Time and Expenses Preferences](EP_10_10_00.md) \(EP101000\) form. If no approval map is specified or if a time card does not meet any conditions specified in the approval map, the time card is automatically approved.

## Approval of Time Cards { .section}

You can approve or reject a time card on the [Employee Time Cards](EP_30_50_00.md) \(EP305000\) form by clicking **Approve** or **Reject** on the form toolbar if the time card meets one of the following conditions:

-   It is assigned to you
-   It is assigned to the members of the workgroups at lower levels in the company tree than your workgroup

You can also mass-approve the following time cards on the [Approvals](EP_50_30_10.md) \(EP503010\) form:

-   Those assigned to you
-   Those assigned to other members in your workgroup
-   Those assigned to the members of the workgroups at lower levels in the company tree than your workgroup

**Attention:** Although you can use the [Approvals](EP_50_30_10.md) form to approve time cards assigned to other members of your workgroup, you cannot view the details of these time cards on the [Employee Time Cards](EP_30_50_00.md) form due to user access restrictions.

On the [Approvals](EP_50_30_10.md) form, you can approve all listed documents at once by clicking **Approve All** on the form toolbar or approve only particular documents by selecting those documents and then clicking **Approve**.

If the *Time Management* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you cannot approve or release a time card unless all the activities included in the time card have been approved \(if required\). For more information, see [Employee Time Entry: Time Activities](TimeExpenses_Entering_Employee_Time_Time_Activities.md).

Once a time card is approved, it is assigned the *Approved* status and can be released.

**Parent topic:**[Entering Employee Time](../UserGuide/TimeExpenses_Entering_Employee_Time_Mapref.md)

