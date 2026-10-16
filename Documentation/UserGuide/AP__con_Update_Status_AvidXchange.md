# Updating the Status of Multiple Payments

When you have many payments to update, you can synchronize them in bulk on the [Synchronize External Payments](AP_50_53_00.md) \(AP505300\) form instead of opening each payment and clicking **Synchronize Payment**.

**Attention:** The [Synchronize External Payments](AP_50_53_00.md) \(AP505300\) form supports both AvidXchange and BILL payments, and it appears if the *BILL Integration* feature or *AvidXchange Integration* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

For more details about BILL payments, see [Creating Documents for Processing in BILL](AP__con_Create_Doc_External_Processing.md).

To update the payments in bulk, open the [Synchronize External Payments](AP_50_53_00.md) form and do the following:

1.  In the **Payment Method** box, select the payment method that the payments were created with.
2.  Optional: In the **Cash Account** box, select a cash account. For BILL payments, this box is required.
3.  Click the magnifier button in the **Processing Status** box and select one or more processing statuses.

    The table lists the payments that don't yet have a final status, with their processing status, disbursement method, and amount.

4.  On the form toolbar, click **Synchronize** to update the selected payments, or **Synchronize All** to update all the payments listed in the table.

You can also run this form on a schedule. Acumatica ERP includes two preconfigured automation schedules, *AvidXchange Payments Sync* and *BILL Payments Sync*, which are inactive by default. Activate the one you need on the [Automation Schedules](SM_20_50_20.md) \(SM205020\) form. Your payment statuses then stay current and your payments are released without manual intervention.

**Parent topic:**[Processing Payments Through AvidXchange](../UserGuide/AP__con_Create_Doc_AvidXchange.md)

