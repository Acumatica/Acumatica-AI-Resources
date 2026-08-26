# Specific Approvals: Reconciliation Statements {#_96eb7917-b324-4dd1-82be-3fe7e6ff5277 .concept}

To fit the organization's internal control and financial audit procedures, administrators can set up the approval of the reconciliation statements that users create on the [Reconciliation Statements](../UserGuide/CA_30_20_00.md) \(CA302000\) form. With this configuration in place, the appropriate users can approve and reject reconciliation statements.

## Configuration of the Approval Workflow for Reconciliation Statements { .section}

To configure the approval workflow for reconciliation statements in Acumatica ERP, you perform the following general steps:

1.  You enable the *Approval Workflow* feature on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form \(if the feature is not already enabled\).
2.  You create a new approval map to be used for reconciliation statements or modify an existing map by using the [Approval Maps](../UserGuide/EP_20_50_15.md) \(EP205015\) form.
3.  Optional: You create any needed notification templates to be used to notify users about reconciliation statements pending approval or edit existing templates on the [Email Templates](../UserGuide/SM_20_40_03.md) \(SM204003\) form.
4.  You specify the approval map \(and the applicable notification template, if one has been set up\) on the **Approvals** tab of the [Cash Management Preferences](../UserGuide/CA_10_10_00.md) \(CA101000\) form.

For details about approvals of reconciliation statements, see [Bank Reconciliation: Approval of Reconciliation Statements](../UserGuide/Finance_Bank_Reconciliation_Approvals.md).

**Parent topic:**[Setting Up Specific Approvals](../ImplementationGuide/config_Approvals_Doc_Types_Workflow.md)

