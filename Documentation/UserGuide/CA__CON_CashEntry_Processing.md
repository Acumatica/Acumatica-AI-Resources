# Cash Entry Processing {#_1c454646-41d7-4eab-96bd-bacf93c948ee .concept}

You can record cash entries—that is, cash transactions of the *Cash Entry* type—by creating a document on the [Cash Transactions](CA_30_40_00.md) \(CA304000\) form, or quickly record them by using the [Cash Account Details](CA_30_30_00.md) \(CA303000\) form.

Before you start recording cash entries, you need to create entry types, which serve as the templates of the transactions, and associate them with cash accounts. For details on the entry types, see [Entry Types for Recording Cash Entries](CA__CON_EntryTypes.md#entry_types_for_cash).

In this topic, you will read about how a cash entry is recorded and then processed by the system.

## Recording a Cash Entry {#section_ux1_kjv_vxb .section}

You create a cash entry by using the [Cash Transactions](CA_30_40_00.md) \(CA304000\) form. You select a cash account and an entry type, and change the transaction date and financial period, if needed. Then you add the transaction details. For each transaction detail, you can change the offset account if any default values are provided by the selected entry type, or select an offset account from the list of accounts if no default values are provided. When you save the cash entry, the system assigns it a reference number in accordance with the numbering sequence assigned to transactions in the **Transactions Numbering Sequence** box on the [Cash Management Preferences](CA_10_10_00.md) \(CA101000\) form.

The system creates cash entries with the *Balanced* status by default. \(That is, by default, the **Hold Transactions on Entry** check box on the [Cash Management Preferences](CA_10_10_00.md) form is cleared, so new cash entries are not put on hold.\) Balanced transactions can be edited, saved, put on hold, or released.

## Quickly Recording a Cash Entry {#section_xx1_kjv_vxb .section}

You can quickly record a cash entry by selecting a cash account for the transaction, clicking the **Create Transaction** button on the table toolbar of the [Cash Account Details](CA_30_30_00.md) form and entering the transaction details in the **Quick Transaction** dialog box.

Also, you can quickly add a cash entry during the process of bank statement reconciliation by clicking **Create Adjustment** on the table toolbar of the [Reconciliation Statements](CA_30_20_00.md) \(CA302000\) form. This invokes the **Quick Transaction** dialog box.

For details on quickly recording cash transactions, see [To Quickly Record a Cash Transaction](CA__HOW_To_quickly_record_CashEntry.md).

## Placing a Cash Entry on Hold {#section_by1_kjv_vxb .section}

You can place a balanced cash entry on hold by clicking **Hold** on the toolbar of the [Cash Transactions](CA_30_40_00.md) \(CA304000\) form, to prevent it from being released and being posted to the general ledger. When you click **Hold**, the status of the cash entry changed to *On Hold*. A cash entry with this status can be edited, saved, or released from hold.

You can select the **Hold Transactions on Entry** check box on the [Cash Management Preferences](CA_10_10_00.md) \(CA101000\) form to create cash entries with the *On Hold* status by default.

## Approving a Cash Entry {#section_ey1_kjv_vxb .section}

You can configure cash transaction approval in your system so that authorized employees control the cash flow. If you have configured this approval, when a user attempts to release a transaction that requires approval, the system automatically assigns it to the appropriate employee or employees for approval, and the transaction is assigned the *Pending Approval* status, it keeps until it has been either approved by all the required employees or rejected. If an approver rejects the cash entry, the system changes its status to *On Hold*. If the entry has this status, a user may edit the cash entry and assign it for approval again.

To be able to configure cash transaction approval, you should enable the *Approval Workflow* feature on the [Enable/Disable Features](CS_10_00_00.md#) \(CS100000\) form. For details, see [Cash Transaction Approval](CA__con_Cash_Transaction_Approval.md#).

## Releasing a Cash Entry {#section_hy1_kjv_vxb .section}

You can release a balanced cash entry by using the following forms:

-   [Cash Transactions](CA_30_40_00.md) \(CA304000\): You release the cash entry you are viewing by clicking **Release** on the form toolbar.
-   [Release Cash Transactions](CA_50_20_00.md) \(CA502000\): You use this form to release a particular cash transaction or multiple cash transactions. For details, see [To Release Multiple Cash Transactions by Using the Release Cash Transactions Form](CA__HOW_To_Release_Multiple_CashTransactions.md#_40150cbf-5983-487a-9c20-332015f45255).
-   [Cash Account Details](CA_30_30_00.md) \(CA303000\): You can also use this form to release a particular cash transaction or multiple cash transactions. For details, see [To Release Multiple Cash Transactions by Using the Check Register Form](CA__HOW_To_Release_Multiple_CashTransactions.md#_83ef05fa-196d-4883-9c96-ef209d801fae).

When you release a cash entry, its status changes to *Released*, the system generates a batch, and the system posts it to the general ledger if the **Automatically Post to GL on Release** check box is selected on the [Cash Management Preferences](CA_10_10_00.md) \(CA101000\) form. If this check box is cleared, you can post the cash entry manually by using the [Post Transactions](GL_50_20_00.md) \(GL502000\) form. The system assigns reference numbers to the batches that implement the transactions in accordance with the numbering sequences used for cash transactions and updates the involved accounts with the transactions shown in the following tables, based on whether the cash transaction is a receipt or a disbursement and whether taxes were applied to the transaction.

## Reversing a Cash Entry {#section_ky1_kjv_vxb .section}

If you have added an incorrect cash entry and have released it, you can reverse the changes by generating a reversing cash entry from the incorrect one. When you create the reversing cash entry, the system generates a transaction with negative amounts to offset the original cash transaction. For details, see [To Correct a Cash Entry](CA__HOW_To_correct_Cash_Entry_Transaction.md).

**Parent topic:**[Cash Transaction Processing](../UserGuide/CA__CON_CashTran_Processing.md)

