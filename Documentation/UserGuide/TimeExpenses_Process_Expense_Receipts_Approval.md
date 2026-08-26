# Expense Receipts: Expense Receipt Approval {#_6464a09f-a8f0-44b2-9d08-f39c8c79cf80 .concept}

Depending on company policy, expense receipts may require approval by authorized employees before they are released. The approval functionality is available if the *Approval Workflow* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Assignment for Approval { .section}

Expense receipts can be submitted for approval once they have been taken off hold and meet all of the following conditions:

-   The *Expense Management* and *Approval Workflow* features are enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
-   An approval map has been created on the [Approval Maps](EP_20_50_15.md) \(EP205015\) form, as described in [Approval Configuration: Approval Maps](../ImplementationGuide/config_Approvals_Create_Approval_Maps.md).

    **Tip:** When you are creating an approval map for a project's expense receipts or expense claims, you may want the approver to be the project manager. In this case, you specify the following settings on the **Rule Actions** tab of the [Approval Maps](EP_20_50_15.md) form:

    -   **Approver**: *Employee from Document*
    -   **Employee**: `((ClaimDetails.ContractID.OwnerID))`
-   The approval map for expense receipts has been specified in the **Expense Receipt Approval Map** box on the **General** tab of the [Time and Expenses Preferences](EP_10_10_00.md) \(EP101000\) form.
-   The expense receipt meets the conditions specified in the approval map.

After the receipt has been submitted, it has the *Pending Approval* status and requires approval by an authorized employee.

If any of these conditions are not met, the expense receipt is automatically considered approved. In this case, the approval process is skipped, the expense receipt's status changes to *Open*, and the expense receipt can be claimed.

**Tip:** If the *Approval Workflow* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you can configure the approval of both expense receipts and expense claims; however, the requirement to approve the same expenses twice may involve too much redundancy in effort. For effective processing of expenses, it may be sufficient to set up the approval of only one type of expense document. For example, if you want all expenses related to a particular project to be approved by the project manager, you can configure the approval of only expense receipts associated with the project.

## Approval of Expense Receipts { .section}

You can approve or reject an expense receipt on the [Expense Receipt](EP_30_10_20.md) \(EP301020\) form by clicking **Approve** or **Reject** on the form toolbar if the receipt meets one of the following conditions:

-   It has been assigned to you for approval.
-   It has been assigned to the members of the workgroups at lower levels in the company tree than your workgroup.

You can also approve or reject expense receipts on the [Approvals](EP_50_30_10.md) \(EP503010\) form. On this form, you can view the following expense receipts:

-   Those assigned to you for approval
-   Those assigned to members of your workgroup
-   Those assigned to the members of the workgroups at lower levels in the company tree than your workgroup

You can approve all listed documents at once by clicking **Approve All** on the form toolbar, or approve only particular documents by selecting those documents and then clicking **Approve**.

**Attention:** Although you can use the [Approvals](EP_50_30_10.md) form to approve expense receipts assigned to other members of your workgroup, you cannot view the details of these receipts on the [Expense Receipts](EP_30_10_10.md) form due to user access restrictions. For more information about user access to expense receipts, see [Expense Receipts: General Information](TimeExpenses_Process_Expense_Receipts_GeneralInfo.md).

If an expense receipt is included in a claim, and the claim has been rejected or put on hold, the expense receipt remains associated with the claim. You will not be able to submit this claim for further processing until the rejected receipt is either removed from the claim or approved after any necessary adjustments have been made.

**Parent topic:**[Processing Expense Receipts](../UserGuide/TimeExpenses_Process_Expense_Receipts_Mapref.md)

