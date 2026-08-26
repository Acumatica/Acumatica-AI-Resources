# To Manually Create a Bank Deposit {#_f4e282e9-e38d-44f1-b206-d2497b3e13ec .task}

On the [Settlement Batches](CA_30_70_00.md) \(CA307000\) form, if the selected settlement batch has the *Processed* status, you can create a bank deposit based on the transactions selected automatically by the system. Only transactions with the *Settled Successfully* and *Refund Settled Successfully* settlement states will be included in the bank deposit.

If you have specified a fee type on the **Fees** tab of the [Processing Centers](CA_20_50_00.md) \(CA205000\) form and the settlement batch includes fees, they will be imported with the documents in this batch and included in the bank deposit as charges on the **Charges** tab of the [Bank Deposits](CA_30_50_00.md) \(CA305000\) form.

**Tip:** If needed, once you have created a bank deposit, you can manually add to it a document that is linked to a transaction with the *Voided* settlement status.

## To Create a Bank Deposit for a Settlement Batch {#section_xq2_kjv_vxb .section}

1.  Open the [Import Settlement Batches](CA_50_70_00.md) \(CA507000\) form.
2.  In the table, find the needed batch and click the link in the **Reference Number** column. The system opens the batch on the [Settlement Batches](CA_30_70_00.md) \(CA307000\) form.
3.  On the form toolbar, click **Create Deposit**. The system creates a deposit and inserts its identifier, which is a link, in the **Bank Deposit** box of the Summary area.
4.  Click the link in the **Bank Deposit** box.
5.  The system opens the [Bank Deposits](CA_30_50_00.md) \(CA305000\) form in a pop-up window, where you can review the settings of the bank deposit.

    The created bank deposit has the *On Hold* status if the **Hold Transactions on Entry** check box is selected on the [Cash Management Preferences](CA_10_10_00.md) \(CA101000\) form and the *Balanced* status if the **Hold Transactions on Entry** check box is cleared.

6.  Optional: To take the bank deposit off hold, click **Remove Hold** on the form toolbar.
7.  To release the bank deposit \(which you can do if it has the *Balanced* status\), click **Release** on the form toolbar.

**Parent topic:**[Performing Settlement of Credit Card Payments and EFTs](../UserGuide/CA__MNG_Settlement_of_CC_Payments.md)

