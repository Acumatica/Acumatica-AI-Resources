# To Process a Credit Memo Order \(CM\) {#_df95603b-212b-4b40-9ba2-2340cfa534b2 .task}

To credit a customer for returned goods without shipping items, you process a credit memo order \(that is, an order of the *CM* order type\) by using the [Sales Orders](SO_30_10_00.md) \(SO301000\) form.

## To Process a Credit Memo Order { .section}

1.  Open the [Sales Orders](SO_30_10_00.md) \(SO301000\) form.
2.  In the Summary area, select the credit memo order to be processed by specifying its type \(*CM*\) and reference number.
3.  On the More menu, click **Prepare Invoice**.

    This generates a credit memo with the returned items listed. The system opens the [Invoices](SO_30_30_00.md) \(SO303000\) form to display the new document.

4.  On this form, release the credit memo by clicking **Release** on the form toolbar.

    This creates an issue transaction of the *Credit Memo* type in the Inventory module. Once you release the credit memo, the original *CM* order is assigned the *Completed* status.


**Parent topic:**[Processing Returns for Credit Without Receipts](../UserGuide/SO__con_scn_Return_for_Credit.md)

