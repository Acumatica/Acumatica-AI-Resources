# Transactions with Approvals: General Information {#_557a629a-5c61-40a0-86d8-2c314ffdc057 .concept}

In Acumatica ERP, you can set up approvals for batches of GL transactions so that these batches can be released and posted only after they have been approved by an authorized employee. When a batch of GL transactions is taken off hold, if it is subject to approval, the system assigns the appropriate approver. If the batch is approved, a user can process it further. If it is rejected, the user can either delete the batch or modify it and again submit it for approval by removing it from hold.

The system determines the approver based on an approval map that has been defined by a company administrator and specified on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form. The administrator can configure the map to require approval unconditionally or if the transaction meets the specified conditions, which are based on the properties of GL transactions, such as the amount or account. When designing the approval map, the administrator can configure rules that determine who should approve GL transactions and under which conditions these approvals are needed. The rules can be specified for multiple types of batches of transactions. These types include batches created during consolidation, trial balance entry, allocation, and reclassification. When multiple approvals are required, they can be configured to occur in parallel or in sequential steps \(a multistep approval\).

Only transactions generated from the general ledger are subject to approval. That is, approvals of GL transactions are not applied to transactions that have originated from accounts receivable, accounts payable, inventory, and other subledgers.

This functionality is available if the *Approval Workflow* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Learning Objectives {#section_cv3_mjv_vxb .section}

In this chapter, you will learn how to do the following:

-   Configure an approval map for GL transactions
-   Process GL transactions that require approvals

## Applicable Scenarios {#section_ev3_mjv_vxb .section}

You configure approvals for GL transactions in the following cases:

-   Your company requires an approval process for all GL transactions entered in the general ledger
-   Your company requires an approval process for only GL transactions that meet specified conditions, such as a particular amount or account

## Setup of GL Transaction Approval {#section_gv3_mjv_vxb .section}

To set up approvals of GL transactions, you perform the following general steps in the system:

1.  On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you enable the *Approval Workflow* feature.
2.  On the [Approval Maps](EP_20_50_15.md) \(EP205015\) form, you create an approval map with the *Journal Transaction* entity type. With this entity type selected, the created approval map will be applied to batches of GL transactions that are processed on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.
3.  On the **Conditions** tab of the [Approval Maps](EP_20_50_15.md) form, you specify the conditions that the GL transaction must meet to be assigned for approval. In the **Entity** column, you specify the entity \(which in this case indicates the database table\) whose field will be used for the condition in the row. You can select one of the following options:
    -   *Approval*: The system will use a field of the approval request in this condition.
    -   *GL Account*: The system will use a field that represents one of the GL accounts involved in the transaction in this condition.
    -   *GL Batch*: The system will use a field corresponding to an element in the Summary area of the [Journal Transactions](GL_30_10_00.md) form in this condition.
    -   *GL Transaction:* The system will use a field of the lines of GL transactions as a condition.
4.  On the **Rule Actions** tab, you specify the approver and the actions that the system will perform after one approver has approved the batch of GL transactions. Optionally, in the **Reason Settings** section, you can select appropriate options in the **Reason for Approval** and **Reason for Rejection** boxes.
5.  On the [Email Templates](SM_20_40_03.md) \(SM204003\) form, you edit the predefined *Journal Transaction Approval* template or create a new template to be used to notify approvers of GL transactions pending approval.

    You can create multiple templates and select a particular template for each transaction type listed on the **Approval** tab of the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form. For a transaction that is subject to approval, the template specified for the transaction type is triggered automatically when the status of the batch of transactions changes from *On Hold* to *Pending Approval*.

6.  On the **Approval** tab of the [General Ledger Preferences](GL_10_20_00.md) form, you add each created approval map and specify the email template to be used for notifications.

The following table shows the types of batches of GL transactions that are available for selection in the **Type** column of the **Approval** tab of the [General Ledger Preferences](GL_10_20_00.md) form.

|Type|Description|Scenarios After Which Approvals Can Be Applied|
|----|-----------|----------------------------------------------|
|*Normal*|A batch of GL transactions that has been manually created on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form or generated by the system based on a schedule that was run on the [Generate Recurring Transactions](GL_50_40_00.md) \(GL504000\) form|Any of the following activities:

 -   On the [Journal Transactions](GL_30_10_00.md) form, a batch of GL transactions is created with the *On Hold* status and is removed from hold. The resulting status is *Pending Approval*.
-   On the [Journal Transactions](GL_30_10_00.md) form, a batch of GL transactions is created for which the **Auto Reversing** check box is selected and the status is *On Hold*; the batch is then removed from hold.

**Attention:** Approvals are not applied to automatically created reversing transactions for which the **Reversing Entry** check box is selected on the [Journal Transactions](GL_30_10_00.md) form, because they are always created with the *Unposted* or *Posted* status.

-   On the [Generate Recurring Transactions](GL_50_40_00.md) \(GL504000\), a batch of GL transactions is created with the *On Hold* status and is removed from hold. The resulting status is *Pending Approval*.

|
|*Consolidation*|A batch of GL transactions generated by the system when a user runs the process of importing data from consolidation units to the parent company on the [Import Consolidation Data](GL_50_90_00.md) \(GL509000\) form|On the [Import Consolidation Data](GL_50_90_00.md) \(GL509000\) form, a new batch of GL transactions is generated with the *On Hold* status and is removed from hold. The resulting status is *Pending Approval*.|
|*Trial Balance*|A batch of GL transactions generated by the system when a user releases a trial balance on the [Trial Balance](GL_30_30_10.md) \(GL303010\) form|On the [Trial Balance](GL_30_30_10.md) form, a new batch of GL transactions is generated with the *On Hold* status and is removed from hold. The resulting status is *Pending Approval*.|
|*Reclassification*|A batch of GL transactions generated by the system when a user reclassifies a batch of GL transactions with the *Normal* type on the [Reclassify Transactions](GL_50_60_00.md)\(GL506000\) form|If on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form, the **Automatically Release Reclassification Batches** check box is cleared and the **Hold Batches on Entry** check box is selected, a new batch of reclassification transactions is generated on the [Reclassify Transactions](GL_50_60_00.md) form. The system assigns the transaction the *On Hold* status but immediately removes the batch from hold and changes its status to *Pending Approval*.**Attention:** If an approval map is active for *Reclassification* batches and the **Automatically Release Reclassification Batches** check box is selected on the [General Ledger Preferences](GL_10_20_00.md) form, the system displays an error message when a user tries to save the changes on the [Reclassify Transactions](GL_50_60_00.md) form. The administrator can remove the approval map, deactivate it on the **Approval** tab, or clear the **Automatically Release Reclassification Batches** check box.

|
|*Allocation*|A batch of GL transactions generated by the system when a user runs the allocation process on the [Run Allocations](GL_50_45_00.md) \(GL504500\) form|On the [Run Allocations](GL_50_45_00.md) form, a batch of allocation transactions is generated with the *On Hold* status and is immediately removed from hold. The resulting status is *Pending Approval*.|

## Workflow for a Transaction Requiring Approval {#section_ov3_mjv_vxb .section}

In an approval process with one stage and a single approver, the approval workflow for each transaction subject to approval consists of the following steps:

1.  The user who is entering GL transactions \(the *requester*\) creates a transaction \(that is, batch\) on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form, removes it from hold, and waits for its approval or rejection.
2.  The approver receives an email notification about a transaction that needs approval.
3.  The approver approves or rejects the transaction and specifies a reason, if reasons are required.
4.  If the transaction is approved, the requester completes the processing of the transaction.
5.  Optional: If the transaction is rejected, the requester can delete the transaction or modify it according to the approver's comment, if one has been specified.
6.  The requester resubmits the transaction for approval.
7.  Optional: If an approved transaction has been modified, the requester submits it for approval again, and the approval process continues from Step 2.

**Parent topic:**[Processing Transactions with Approvals](../UserGuide/Finance_GLTransactions_with_Approvals_Mapref.md)

