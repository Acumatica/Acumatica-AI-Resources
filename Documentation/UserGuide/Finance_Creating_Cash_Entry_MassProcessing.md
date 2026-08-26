# Cash Entries: Mass Processing of Documents {#_fff3d381-7101-4ad7-95d2-c467a318126f .concept}

This topic explains how to release multiple cash entries at once.

## Mass Release of Cash Entries {#section_grb_kjv_vxb .section}

You can release multiple cash transactions of the *Cash Entry* type as follows:

-   On the [Release Cash Transactions](CA_50_20_00.md) \(CA502000\) form, to release all listed documents, you click **Release All** on the form toolbar. Alternatively, to release only particular cash transactions, you can first select the unlabeled check box for each cash transaction that you want to release and then click **Release** on the form toolbar.
-   On the [Cash Account Details](CA_30_30_00.md) \(CA303000\) form, you first select the cash account and specify the date range for the cash transactions you want to view. Then you select the unlabeled check box for the cash transactions you want to release and click **Release** on the form toolbar to release the selected cash transactions.

The system releases the cash transactions and creates a batch of entries to be posted to the general ledger for each transaction. Depending on the posting settings specified on the [Cash Management Preferences](CA_10_10_00.md) \(CA101000\) form, one of the following occurs:

-   If the **Automatically Post to GL on Release** check box is cleared, the batch is released. The batch is assigned the *Unposted* status.
-   If the **Automatically Post to GL on Release** check box is selected, the batch is posted to the general ledger and is assigned the *Posted* status.

**Parent topic:**[Processing Cash Entries](../UserGuide/Finance_Creating_Cash_Entry_Mapref.md)

