# To Correct a Batch of ACH Payments {#_4deb53dc-170c-4982-bf05-1b28de9d6ad3 .task}

On the [Batch Payments](AP_30_50_00.md) \(AP305000\) form, you can correct a batch of ACH payments by adding payments to or removing payments from the batch. You can also cancel and void a batch.

## To Add Payments to a Batch of ACH Payments {#section_ln4_njv_vxb .section}

To correct a batch of ACH payments by adding payments to it, do the following:

1.  Open the [Batch Payments](AP_30_50_00.md) \(AP305000\) form.
2.  In the **Reference Nbr.** box, select a batch that you want to correct. The batch status must be *On Hold* or *Balanced*.
3.  On the table toolbar, click **Add Payments**.
4.  In the **Add Payments** dialog box that is opened, specify a payment number in the **Next Payment Ref. Number** box.
5.  Optional: To narrow down the search for payments, in the **Start Date** and **End Date** boxes, specify the start date and end date of the payments to be added to the batch.

    The table in the dialog box displays a list of payment falling within the specified criteria, which have the same cash account and the payment method as those specified in the Summary area of the [Batch Payments](AP_30_50_00.md) form.

6.  In the table, select the unlabeled check box next to each payment that you want to add to the batch and click **Add &amp; Close** to close the dialog box.
7.  On the form toolbar of the [Batch Payments](AP_30_50_00.md) form, click **Save** to save your changes.
8.  If the batch status is *On Hold*, click **Remove Hold** to give the batch the *Balanced* status.

    If the **Release Batch Payments Before Export** check box is cleared on the **Settings for Use in AP** tab of the [Payment Methods](CA_20_40_00.md) form, you can export the batch, and then release it.

    If the **Release Batch Payments Before Export** check box is selected on the **Settings for Use in AP** tab of the [Payment Methods](CA_20_40_00.md) form, you can release the batch, and then export it.


## To Correct a Batch of ACH Payments {#section_qn4_njv_vxb .section}

To correct a batch of ACH payments, do the following:

1.  Open the [Batch Payments](AP_30_50_00.md) \(AP305000\) form.
2.  In the **Reference Nbr.** box, select a batch that you want to correct. The batch status must be *Exported*, but the batch must not be released.
3.  On the More menu \(under **Corrections**\), click **Correct**. This gives the batch the *Balanced* status.
4.  In the Summary area, correct the settings in the **Batch Date**, **Document Ref.**, and **Description** boxes.
5.  Optional: On the table toolbar, click **Add Payments** if you want to add payments to the batch or click **Delete Row** to delete specific payments from the batch.
6.  On the form toolbar, click **Save** to save your changes.

## To Cancel a Batch of ACH Payments {#section_sn4_njv_vxb .section}

To cancel a batch of ACH payments, do the following:

1.  Open the [Batch Payments](AP_30_50_00.md) \(AP305000\) form.
2.  In the **Reference Nbr.** box, select a batch that you want to cancel. The batch status must be *Exported*, but the batch must not be released.
3.  On the More menu \(under **Corrections**\), click **Cancel**. This gives the batch the *Canceled* status, removes all unreleased payments from the batch, and voids released payments.
4.  On the form toolbar, click **Save** to save your changes.

## To Void a Batch of ACH Payments {#section_un4_njv_vxb .section}

To void a batch of ACH payments, do the following:

1.  Open the [Batch Payments](AP_30_50_00.md) \(AP305000\) form.
2.  In the **Reference Nbr.** box, select a batch that you want to void. The batch status must be *Released*.
3.  On the More menu \(under **Corrections**\), click **Void**.
4.  In the **Void Batch Payments** dialog box, that opens, select one of the following options:
    -   **Original Payment Dates**: To void the payments in the batch as of their payment dates.
    -   **Specific Date**: To void payments in the batch as of a specific date that you specify in the **Void Date** box that appears when you select this option.
5.  In the dialog box, click **Void**. This gives the batch the *Voided* status, voids the released payments in a released batch and the batch itself.

**Parent topic:**[Processing ACH Payments](../UserGuide/AP__con_ACH_Payment_Support.md)

