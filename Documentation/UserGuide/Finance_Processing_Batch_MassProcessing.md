# GL Transactions: Mass-Processing {#_3078e8ca-af9b-43f9-a016-b0a949f635f5 .concept}

This topic explains how to release and post multiple batches.

## Mass-Releasing Batches {#section_c5g_mjv_vxb .section}

You can release multiple batches on the [Release Transactions](GL_50_10_00.md) \(GL501000\) form. On this form, you click **Release All** on the form toolbar and you select the unlabeled check box next to the lines to be processed, and click **Release** to release batches.

The system releases the batches. Depending on the posting settings specified on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form, one of the following events occurs:

-   If the **Automatically Post on Release** check box is cleared, the batch is released. The batch is given the *Unposted* status.
-   If the **Automatically Post on Release** check box is selected, the batch is posted to the general ledger and is assigned the *Posted* status.

## Mass-Posting Batches {#section_f5g_mjv_vxb .section}

On the [Post Transactions](GL_50_20_00.md) \(GL502000\) form, you can also post released batches by selecting them and clicking **Post**, or you can post all released batches by clicking **Post All**. The system posts the batches and assigns the *Posted* status to them.

**Parent topic:**[Processing Transactions](../UserGuide/Finance_Processing_Batch_Mapref.md)

