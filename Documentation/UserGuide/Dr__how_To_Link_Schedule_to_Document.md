# To Link a Deferral Schedule to a Document {#_193e6587-e64f-4bb4-ac52-e3b762bd1779 .task}

You use the [Deferral Schedule](DR_20_15_00.md) \(DR201500\) form, which you access by clicking **Add New Deferral Schedule** on the [Deferral Schedules](DR_20_15_10.md) \(DR201510\) form, to create a deferral schedule for a selected document.

**Attention:** To open any form, you can navigate to it or search for it \(by its name or by its form ID without periods\).

## To Link a Deferral Schedule To a Document {#section_h5b_3jv_vxb .section}

1.  Open the [Deferral Schedules](DR_20_15_10.md) \(DR201510\) form.
2.  On the table toolbar, click **Add New Deferral Schedule**.
3.  In the summary area of the form that opens, specify the following parameters:
    1.  In the **Doc. Type** box, select the type of the document that requires a deferral.
    2.  In the **Ref. Nbr.** box, select the document by its reference number.
    3.  In the **Line Nbr.** box, select the line of the document with the amount for which you want to schedule recognition.
    4.  Optional: On the form toolbar, click **View Document** to make sure that you have selected the document correctly and specified the appropriate line number \(if applicable\).
4.  In the **Components** table, click **Add Row** on the table toolbar, and do the following:

    1.  In the **Component ID** column, leave *&lt; NONE&gt;*, or select a required component \(by its ID\).
    2.  In the **Deferral Code** column, specify the deferral code to be used for generating recognition transactions.
    3.  Optional: In the **Deferral Account** column \(and **Deferral Sub.**, if subaccounts are used in your system\), review the account \(and the subaccount, if applicable\) taken from the deferral code settings, and edit it \(if needed\).
    4.  In the **Account** \(and **Subaccount**\) boxes, select the sales or expense account \(depending on the selected document type\), and corresponding subaccount \(if applicable\) to which recognized amounts should be posted.
    5.  In the **Total Amount** column, type the amount to be deferred.

        **Attention:** The sum of total amounts of all listed components must be equal to amount of the selected line \(**Line Amount**\).

    6.  On the table toolbar, click **Generate Transactions**, so that the system generates recognition transactions for the selected row, and displays them in the **Transactions** table.
    Perform step 3 for all components that requires deferral.

5.  In the **Transactions** table, edit the transaction details \(for example, amounts or dates\), if necessary.
6.  Click **Save** on the form toolbar.
7.  Click **Release** on the form toolbar.

**Attention:** No GL transactions are generated when you release a deferral schedule.

If you need to release multiple custom schedules at the same time, use the [Release Schedules](DR_50_30_00.md) \(DR503000\) form.

For custom recognition transactions, you run the recognition process in the same way as you do for automatically generated transactions on the [Run Recognition](DR_50_10_00.md) \(DR501000\) form.

**Parent topic:**[Processing Deferrals](../UserGuide/DR__con_Processing_of_Deferrals.md)

