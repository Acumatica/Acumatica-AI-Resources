# To Correct 1099 Amounts and Boxes {#_0649f535-882d-46ef-ad2f-6dc52bc6ba4d .task}

You may need to change an amount or 1099 box to be reported on Form 1099-MISC after a bill from a 1099 vendor has been paid in the following cases:

-   You have specified the 1099 box for the wrong line in the bill.

    **Note:** You don't have to specify the 1099 box for every detail line of a bill that you process from a 1099 vendor. You have to specify the 1099 box in only the needed lines; you leave the **1099 Box** column empty for the lines that you don't want to include in the 1099-MISC or 1099-NEC form on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.

-   You have specified the incorrect amount in the bill line for which the 1099 box is specified.
-   You have specified the incorrect 1099 box \(or no 1099 box\) for a line in the bill for which a particular 1099 box should have been specified.

    **Note:** You can correct 1099 boxes for released and paid bills if the corresponding 1099 year has not yet been closed.


In this topic, you will find the high-level steps you need to perform to correct a paid bill that has incorrect 1099-related lines.

**Attention:** To open any form, you can navigate to it or search for it \(by its name or by its form ID without periods\).

## To Correct 1099 Amounts in a Bill {#section_qtp_njv_vxb .section}

1.  Open the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.
2.  Do the following:
    1.  Reverse the incorrect bill. For step-by-step instructions, see [To Reverse a Bill](AP__how_Reversing_a_Bill.md).

        **Note:** The system generates a debit adjustment that decreases the vendor's accounts payable balance.

    2.  Verify the details of the debit adjustment, which should be generated with the exact lines from the reversed bill, and release the debit adjustment.
    3.  Copy the wrong bill to a new bill. For the new bill, correct the needed lines—change the incorrect amount or the **1099 Box** column value for a line—and release the new bill.
3.  On the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form, do the following:
    1.  Locate the payment used to pay the incorrect bill. On the **Application History** tab of the form, click **Reverse Application** to reverse the application of the payment to the incorrect bill. The system adds a reversing entry to the **Documents to Apply** tab and displays an error that the document is out of balance.
    2.  On the **Documents to Apply** tab, add a row and select the correct bill.
    3.  Release the payment applications \(the correct bill application and the reversing entry for the application to the wrong bill\) by clicking **Release**.
    4.  Locate the debit adjustment that was created as a result of reversing the incorrect bill, and apply it to the incorrect bill to close the documents.

## To Correct a 1099 Box in a Released or Paid Bill {#section_stp_njv_vxb .section}

1.  Open the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.
2.  Open the bill for which you want to correct the 1099 box. \(This bill must have the *Open* or *Closed* status.\)
3.  On the **Details** tab, in the **1099 Box** column in the row with the 1099 box you want to change, select a 1099 box from the lookup table, which shows the codes and descriptions of the 1099 boxes.
4.  On the form toolbar, click **Save**.

**Parent topic:**[Filing Out the 1099 Forms](../UserGuide/AP__MNG_1099_Filing.md)

