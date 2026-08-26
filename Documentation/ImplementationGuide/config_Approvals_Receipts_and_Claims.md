# Specific Approvals: Expense Receipts and Expense Claims {#_a97206af-7dd6-4fa1-834e-601e6f15ba27 .concept}

Acumatica ERP offers easy-to-use, system-wide capabilities for configuring the approval functionality for expense receipts and expense claims.

Expense claims and expense receipts are available only if the *Expense Management* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.

If the *Approval Workflow* feature is disabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) form, expense claims can still be approved. In this case, the expense claim will be assigned to the employee's direct supervisor for approval. To facilitate this capability, you must select the **Reports To** check box on the **General** tab \(**Employee Settings** section\) of the [Employees](../UserGuide/EP_20_30_00.md) \(EP203000\) form.

If the *Approval Workflow* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) form, you can configure the approval functionality of both expense receipts and expense claims; however, the requirement to approve the same expenses twice may involve too much redundancy in effort. For effective processing of expenses, it may be sufficient to set up approvals for only one type of expense document. For example, if you want all expenses related to a particular project to be approved by the project manager, you can configure the approval functionality of only expense receipts associated with the project.

## Configuration of the Approval Workflow for Expense Receipts and Expense Claims { .section}

To set up the approval functionality for expense claims and expense receipts, you perform the following general steps:

1.  You identify the employees who will be reviewing expense claims and expense receipts, and plan the workgroups that will include these employees. You also review your organization's hierarchy of workgroups on the [Company Tree](../UserGuide/EP_20_40_61.md) \(EP204061\) form, and add any new workgroups needed for approvals.
2.  You make sure that the *Approval Workflow* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form. \(if the feature is not already enabled\).
3.  You need to configure the approval maps for expense claims or expense receipts by using the [Approval Maps](../UserGuide/EP_20_50_15.md) \(EP205015\) form, as described in [Approval Configuration: Approval Maps](config_Approvals_Create_Approval_Maps.md).

    **Important:** When you are creating an approval map for a project's expense receipts or expense claims, you may want the approver to be the project manager. In this case, you specify the following settings on the **Rule Actions** tab of the [Approval Maps](../UserGuide/EP_20_50_15.md) form:

    -   **Approver**: *Employee from Document*
    -   **Employee**: `((ClaimDetails.ContractID.OwnerID))`
4.  Optionally, if you plan to use notification templates to notify users about expense receipts or expense claims that require approval, you need to create the needed notification templates \(from scratch or by modifying predefined templates\) on the [Email Templates](../UserGuide/SM_20_40_03.md) \(SM204003\) form.
5.  You can select the approval maps for expense receipts and expense claims \(or both\) in the **Expense Receipt Approval Map** and **Expense Claim Approval Map** box, respectively, on the **General** tab \(**Approval Settings** section\) of the [Time and Expenses Preferences](../UserGuide/EP_10_10_00.md) \(EP101000\) form.
6.  Optionally, on the same tab, you can select the notification templates for either or both documents in the **Expense Receipt Notification** and **Expense Claim Notification** boxes in the **Pending Approval Notification** section.

**Parent topic:**[Setting Up Specific Approvals](../ImplementationGuide/config_Approvals_Doc_Types_Workflow.md)

