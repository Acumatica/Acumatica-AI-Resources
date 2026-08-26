# Specific Approvals: Cash Transactions {#_ab7546e7-e2d4-49a9-837e-85563edda6fc .concept}

Maintaining strong control over cash flow is crucial for any company. Your company achieves this through several key practices: accurate recordkeeping, distinct separation of duties, and periodic reconciliation of bank accounts.

Your company can further strengthen internal controls by implementing an approval workflow for cash transactions that users create on the [Cash Transactions](../UserGuide/CA_30_40_00.md) \(CA304000\). You can implement one of the following strategies:

-   Designating separate approvers: Assign different employees to approve disbursements and receipts, preventing individual conflicts of interest.
-   Using amount-based approvals: Implement different approval requirements based on the transaction amount. Higher amounts could require approval from senior staff, a workgroup or several employees, while smaller amounts may require no approval at all.

In Acumatica ERP, you can set up the approval functionality for cash transactions so that they can be released only after they have been approved by the authorized employees.

## Configuration of the Approval Workflow for Cash Transactions { .section}

To configure the approval workflow for cash transactions in Acumatica ERP, perform the following general steps:

1.  You enable the *Approval Workflow* feature on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form \(if the feature is not already enabled\).
2.  You create a new approval map or modify an existing one by using the [Approval Maps](../UserGuide/EP_20_50_15.md) \(EP205015\) form.
3.  Optional: You create any needed notification templates or edit the existing ones on the [Email Templates](../UserGuide/SM_20_40_03.md) \(SM204003\) form.
4.  You specify the approval maps \(and the applicable notification template, if one has been set up\) on the **Approvals** tab of the [Cash Management Preferences](../UserGuide/CA_10_10_00.md) \(CA101000\) form.

**Parent topic:**[Setting Up Specific Approvals](../ImplementationGuide/config_Approvals_Doc_Types_Workflow.md)

