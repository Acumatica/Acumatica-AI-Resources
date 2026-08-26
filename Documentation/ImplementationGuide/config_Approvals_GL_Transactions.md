# Specific Approvals: GL Transactions {#_2c712df8-fead-49ca-a708-365d69712782 .concept}

In Acumatica ERP, you can set up the approval functionality for batches of GL transactions so that these batches can be released and posted only after they have been approved by an authorized employee.

In Acumatica ERP, the approver for GL transactions is determined through an approval map. This map is created by a company administrator and then specified on the [General Ledger Preferences](../UserGuide/GL_10_20_00.md) \(GL102000\) form.

## Approval Maps for GL Transactions { .section}

As a system administrator, you have the ability to configure the approval maps in two ways:

-   Unconditional approval: You can configure an approval map to require approval for all transactions, regardless of specific conditions.
-   Conditional approval: You can specify conditions for approval based on transaction properties, such as the transaction amount or account. This more selective approach requires approval only when certain conditions are met.

When creating an approval map, you can establish rules for the approval process. These rules define who should approve GL transactions \(such as a workgroup, or an employee\) and under which conditions these approvals are necessary \(for example, if the amount is over a certain limit, or if it involves a specific account\).

You can specify approval maps for different types of transactions, including those generated during consolidation, trial balance entry, allocation, and reclassification.

## Configuration of Approval for GL Transactions { .section}

To set up the approval functionality of GL transactions, perform the following general steps:

1.  You identify the employees who will be reviewing GL transactions, and plan the workgroups that will include these employees. You also review your organization's hierarchy of workgroups on the [Company Tree](../UserGuide/EP_20_40_61.md) \(EP204061\) form, and add any new workgroups needed for approvals.
2.  You enable the *Approval Workflow* feature on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.
3.  For each type of transactions for which an approval map is needed, you create an approval map with the *Journal Transaction* entity type on the [Approval Maps](../UserGuide/EP_20_50_15.md) \(EP205015\) form. On this form, you can do the following:
    -   Specify the conditions that the GL transaction must meet on the **Conditions** tab.
    -   Specify the approver and the actions that the system will perform after one approver has approved the batch of GL transactions on the **Rule Actions** tab.
4.  Optional: You edit the predefined *Journal Transaction Approval* template or create a new template on the [Email Templates](../UserGuide/SM_20_40_03.md) \(SM204003\) form. This template will be used for notifications sent to assigned approvers to notify them of GL transactions that are pending their approval.
5.  On the **Approval** tab of the [General Ledger Preferences](../UserGuide/GL_10_20_00.md) \(GL102000\) form, you add a row to the table for each type of transaction that requires approval \(*Normal*, *Consolidation*, *Trial Balance*, *Reclassification*, or *Allocation*\), and select the relevant approval map. Make sure the **Active** check box is selected for each row you have added. Optionally, you can specify a notification template that you have prepared for the transaction type.

**Parent topic:**[Setting Up Specific Approvals](../ImplementationGuide/config_Approvals_Doc_Types_Workflow.md)

