# To Unapply a Prepayment Applied Mistakenly {#_e4dd0661-7b30-4877-9bc5-3ce1a897ad7b .task}

If you have mistakenly applied a prepayment to the wrong documents \(bills or credit adjustments\), you can unapply it.

You unapply a prepayment differently depending on whether the prepayment has been released \(and has a status of *Open* or *Closed*\) or has not been released \(and has a status of *Balanced* or *On Hold*\). In either case, use the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form to unapply the prepayment.

## To Correct a Prepayment Application That Has Not Been Released {#section_tzn_njv_vxb .section}

1.  Open the [Checks and Payments](../Shared/../UserGuide/AP_30_20_00.md) \(AP302000\) form.
2.  In the **Type** box of the Summary area, select *Prepayment*.
3.  In the **Reference Nbr.** box, select the prepayment to be corrected.
4.  On the **Documents to Apply** tab, click the row for each document you don't want to apply the prepayment to, and then click **Delete Row** on the table toolbar.
5.  On the form toolbar, click **Save**.

## To Reverse a Prepayment Application That Has Been Released {#section_uzn_njv_vxb .section}

1.  Open the [Checks and Payments](../Shared/../UserGuide/AP_30_20_00.md) \(AP302000\) form.
2.  In the **Type** box of the Summary area, select *Prepayment*.
3.  In the **Reference Nbr.** box, select the prepayment whose application to a bill or credit adjustment you want to reverse.
4.  On the **Application History** tab, click the row of the document whose application you want to reverse, and then click **Reverse Application** on the table toolbar. On the **Documents to Apply** tab, the system adds a reversing row with the opposite amount.
5.  On the form toolbar, click **Release** to release the application of the reversing entry.

    The system creates a batch that reverses the prepayment application to a bill or credit adjustment, and changes the status of the prepayment to *Open*.


**Parent topic:**[Processing Prepayments for a Bill](../UserGuide/Finance_ProcessingPrepayments_Mapref.md)

