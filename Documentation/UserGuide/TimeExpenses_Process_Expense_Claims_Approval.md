# Expense Claims: Expense Claim Approval {#_a76fae1a-2728-4156-9875-eae5bc3e6217 .concept}

If the *Expense Management* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, a claim can be submitted for further processing if it includes at least one expense receipt with the *Open* status.

## Assignment for Approval { .section}

After an expense claim has been submitted, it may be assigned to an authorized employee for approval in one of the following ways, depending on the *Approval Workflow* feature's state on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form:

-   If the *Approval Workflow* feature is disabled, the expense claim will be assigned for approval to the employee specified in the **Reports to** box on the **General** tab of the [Employees](EP_20_30_00.md) \(EP203000\) form for the employee who is claiming the expenses.

    If the **Reports to** box is empty, the expense claim requires no approval.

-   If the *Approval Workflow* feature is enabled, the expense claim will be assigned for approval if the following conditions are met:

    -   An approval map has been created on the [Approval Maps](EP_20_50_15.md) \(EP205015\) form, as described in [Approval Configuration: Approval Maps](../ImplementationGuide/config_Approvals_Create_Approval_Maps.md).

        **Tip:** If the *Approval Workflow* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form, you can configure the approval of both expense receipts and expense claims; however, the requirement to approve the same expenses twice may involve redundancy in effort. For effective processing of expenses, it may be sufficient to set up the approval of only one type of expense document.

    -   The approval map for expense claims has been specified in the **Expense Claim Approval Map** box on the **General** tab of the [Time and Expenses Preferences](EP_10_10_00.md) \(EP101000\) form.
    -   The expense claim meets the conditions specified in the approval map.
    If any of these conditions are not met, then the expense claim requires no approval.


If the expense claim requires no approval, it is assigned the *Open* status and can be released immediately after submission.

When the expense claim is assigned for approval, its status changes to *Pending Approval*. The claim will not be reassigned to another approver if you enable or disable the *Approval Workflow* feature on the [Enable/Disable Features](CS_10_00_00.md) form or if you modify the approval map specified for expense claims.

## Approval of Expense Claims { .section}

You can approve or reject an expense claim on the [Expense Claim](EP_30_10_00.md) \(EP301000\) form by clicking **Approve** or **Reject** on the form toolbar if the claim meets one of the following conditions:

-   It has been assigned to you for approval.
-   It has been assigned to the members of the workgroups at lower levels in the company tree than your workgroup.

You can also approve or reject claims on the [Approvals](EP_50_30_10.md) \(EP503010\) form, which is available only if the *Approval Workflow* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

If you have access to this form, you can see the following expense receipts:

-   Those assigned to you for approval
-   Those assigned to members of your workgroup
-   Those assigned to the members of the workgroups at lower levels in the company tree than your workgroup

You can approve all listed documents at once by clicking **Approve All** on the form toolbar, or you can approve only particular documents by selecting them and then clicking **Approve**.

**Attention:** Although you can use the [Approvals](EP_50_30_10.md) form to approve expense claims assigned to other members of your workgroup, you cannot view the details of these claims on the [Expense Claims](EP_30_10_30.md) form because of user access restrictions. For more information about user access to expense claims, see [Processing Expense Claims](TimeExpenses_Process_Expense_Claims_Mapref.md).

Once an expense claim is approved, it is assigned the *Open* status and can be released.

If an expense receipt is included in a claim, and the claim has been rejected or put on hold, the expense receipt remains associated with the claim. You will not be able to submit this claim for further processing until the rejected receipt is either removed from the claim or approved after any necessary adjustments.

If your system is configured for the approval of expense claims and AP bills, when the system generates bills on release of expense claims, it does not assign these bills for approval. It considers these bills to be approved because the expense claims for which these bills were generated have already been approved.

**Parent topic:**[Processing Expense Claims](../UserGuide/TimeExpenses_Process_Expense_Claims_Mapref.md)

