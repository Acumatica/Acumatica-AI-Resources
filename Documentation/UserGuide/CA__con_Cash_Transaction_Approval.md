# Cash Transaction Approval {#_bfb47112-3c99-403a-adf1-38c38bb41ca5 .concept}

A business needs to maintain effective control over cash flows. Your company ensures proper control by having accurate record-keeping, distinct separation of duties for persons handling disbursements and receipts, and periodic reconciliation of bank accounts.

## Approval Setup {#section_wz1_kjv_vxb .section}

With Acumatica ERP, approval of cash transactions can be configured easily. To configure cash transaction approval in your system, enable the *Approval Workflow* feature on the [Enable/Disable Features](CS_10_00_00.md#) \(CS100000\) form. Select the **Active** check box on the **Approvals** tab of the [Cash Management Preferences](CA_10_10_00.md) \(CA101000\) form and specify the approval map created for cash transactions. You can create the approval maps by using the [Assignment and Approval Maps](EP_20_55_00.md) \(EP205500\) form.

You can configure parallel approval by specifying more than one employee as an approver. In this case, one cash transaction can be assigned to multiple employees for approval, and it is considered approved when it gets approval from each authorized employee.

You can implement such strategies as the following to enforce internal control:

-   Assigning receipts and disbursements to different employees for approval
-   Assigning cash transactions with large amounts to one person or group for approval, and cash transactions with smaller amounts to another
-   Assigning for approval only cash transactions with significant amounts; no approval is required for transactions with smaller amounts

For details on the setup of approvals, see [Approval Configuration: General Information](../ImplementationGuide/config_Approvals_General_Info.md).

## Release of Cash Transactions {#section_a1b_kjv_vxb .section}

When a user attempts to release a cash transaction that requires approval, the system assigns the transaction to the employee or employees authorized to approve transactions of specific type. The system performs assignment automatically by using the approval map specified on the [Cash Management Preferences](CA_10_10_00.md) \(CA101000\) form.

If approval is required, cash transactions cannot be released without approval: When users attempt to release them, the transactions will be automatically assigned to specific employees for approval and will get the *Pending Approval* status, which they will keep until they have been approved by all the required employees.

If approval is not required, *Balanced* cash transactions can be released without approval.

## Cash Transaction Processing with Approval Required {#section_e1b_kjv_vxb .section}

Once you have configured cash transaction approval, when a user removes a cash transaction from hold, the system performs assignment for approval and gives the transaction the *Pending Approval* status. Transactions with this status can be displayed and approved on the [Approvals](EP_50_30_10.md) \(EP503010\) form. If a user has access to this form, the system displays by default the transactions assigned to this user. The user can approve all listed transactions or only selected ones. If the user is a member of a higher-level workgroup, the user can also view and approve or reject escalated transactions from groups at lower levels.

Approval affects a transaction as follows:

-   If it has been approved by only some of the required approvers, the transaction still has the *Pending Approval* status. If the employee who approved the transaction belongs to a group that is located at a higher level on the company tree than the groups of other approvers, the transaction's status will change to *Released*.
-   If all required approvals have been performed, the transaction has the *Balanced* status.

If you are viewing a particular cash transaction on the [Cash Transactions](CA_30_40_00.md) \(CA304000\) form, you can approve or reject it. To do this, click **Approve** or **Reject** on the form toolbar. Approval information is shown on the **Approvals** tab of the [Cash Transactions](CA_30_40_00.md) form. You can view to whom the transaction was assigned, who actually approved it, and when approval occurred. A rejected transaction gets the *Rejected* status; it can be modified as needed \(by clicking **Hold** on the form toolbar to give it the *On Hold* status\) and assigned for approval again.

**Parent topic:**[Managing Cash Transactions](../UserGuide/CA__MNG_CashTransactions.md)

