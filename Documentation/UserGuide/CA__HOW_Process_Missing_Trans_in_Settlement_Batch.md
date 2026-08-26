# To Process Missing Transactions {#_953cbc76-f82c-423a-a07c-180785a08751 .task}

The **Missing Transactions** tab of the [Settlement Batches](CA_30_70_00.md) \(CA307000\) form, which you access from the [Import Settlement Batches](CA_50_70_00.md) \(CA507000\) form, shows missing transactions—those that were recorded by the processing center but not found in Acumatica ERP. You can perform multiple processing tasks with missing transactions, as detailed below.

## To Record a Transaction in the System {#section_zp2_kjv_vxb .section}

To record a missing transaction in the system \(that is, create a document based on the transaction\), do the following:

1.  Open the [Import Settlement Batches](CA_50_70_00.md) \(CA507000\) form.
2.  In the **Proc. Center ID** box of the Summary area, select the processing center for which you want to record a missing transaction.

    **Tip:** If there is only one active processing center in the system, it is selected in this box by default.

3.  On the **All Records** tab, find the needed batch in the table, and click the link in the **Reference Number** column. The system opens the batch on the [Settlement Batches](CA_30_70_00.md) \(CA307000\) form.
4.  Open the **Missing Transactions** tab.
5.  In the table, select the Included check box for the transaction you want to record.
6.  On the table toolbar, click **Record**. The system opens the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form with the appropriate document type filled in by default in the **Type** box of the Summary area and some of the transaction settings populated.
7.  On the [Payments and Applications](AR_30_20_00.md) form, fill in other needed document settings, and make sure that the document amount is the same as the transaction amount.
8.  On the form toolbar, click **Release** to release the document.

## To Hide a Transaction {#section_cq2_kjv_vxb .section}

To hide a missing transaction in the system \(that is, exclude it from further processing\), do the following:

1.  Open the [Import Settlement Batches](CA_50_70_00.md) \(CA507000\) form.
2.  In the **Proc. Center ID** box of the Summary area, select the processing center for which you want to hide a missing transaction.

    **Tip:** If there is only one active processing center in the system, it is selected in this box by default.

3.  On the **All Records** tab, find the needed batch in the table, and click the link in the **Reference Number** column. The system opens the batch on the [Settlement Batches](CA_30_70_00.md) \(CA307000\) form.
4.  Open the **Missing Transactions** tab.
5.  In the table, select the Included check box for the transaction you want to exclude from processing.

    **Tip:** You can select this check box for multiple transactions to exclude more than one transaction from processing.

6.  On the table toolbar, click **Hide**.
7.  In the warning dialog box that the system displays, click **Yes**.

    The transaction is no longer shown in the list on the **Missing Transactions** tab, but you can view it on the **All Transactions** tab, where it has the *Hidden* status.

    **Tip:** To include the hidden transaction in processing again, on the **All Transactions** tab, select the Included check box for this transaction, and click **Unhide** on the table toolbar.


## To Restart the Matching Process for All Missing Transactions in a Batch {#section_iq2_kjv_vxb .section}

To restart the matching process for all transactions listed on the **Missing Transactions** tab, do the following:

1.  Open the [Import Settlement Batches](CA_50_70_00.md) \(CA507000\) form.
2.  In the **Proc. Center ID** box of the Summary area, select the processing center whose missing transactions you want to match.

    **Tip:** If there is only one active processing center in the system, it is selected in this box by default.

3.  On the **All Records** tab, find the needed batch in the table, and click the link in the **Reference Number** column. The system opens the batch on the [Settlement Batches](CA_30_70_00.md) \(CA307000\) form.
4.  Open the **Missing Transactions** tab.
5.  On the table toolbar, click **Match**.

**Parent topic:**[Performing Settlement of Credit Card Payments and EFTs](../UserGuide/CA__MNG_Settlement_of_CC_Payments.md)

