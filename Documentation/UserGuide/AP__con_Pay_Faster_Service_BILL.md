# Using the Pay Faster Service

Pay Faster is a BILL service that expedites check and ACH payments to US vendors.

To turn it on for a payment, you select the **Pay Faster** check box for the payment on the **Remittance** tab of the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form. The Pay Faster service is available if the vendor’s disbursement method—also shown on this tab—is *Check* or *ACH*. The elements you see depend on which disbursement method applies to the payment. After you schedule a payment, you can no longer add, change, or remove the Pay Faster service for it.

Using Pay Faster adds a service fee. This fee doesn’t change the amount of the payment to the vendor: BILL deducts the accumulated Pay Faster fees from your funding account monthly. To review the current fees for a payment before you select the **Pay Faster** check box, you click **View Fees**, which opens the **Additional Service Fees** dialog box.

BILL determines the final delivery details for every payment. If BILL processes a payment with a different disbursement method or delivery option than the one you selected—for example, if the vendor is paid by check rather than ACH—Acumatica ERP updates the payment to reflect BILL's final choice and displays a warning when the payment is scheduled on the [Process Payments / Print Checks](AP_50_50_00.md) \(AP505000\) form.

**Attention:**

Pay Faster is not available if the payment is any of the following:

-   An international payment
-   A payment made to a verified national vendor
-   A batch payment to more than one vendor

## Pay Faster for Check Payments

If the payment's disbursement method is *CHECK*, Pay Faster expedites the delivery of the printed check. After you select the **Pay Faster** check box, you choose a delivery speed in the **Fast Delivery Method** box: *Overnight Check Delivery* \(default\), *2-day Check Delivery*, or *3-day Check Delivery*.

Each option has its own fee. To compare the current fees, you click **View Fees**. This opens the **Additional Service Fees** dialog box, which lists the available delivery methods and their total fees, sorted from lowest to highest.

**Important:**

If the **Disbursement Method** box on the **Remittance** tab of the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form is empty for a payment, the vendor hasn't been created in BILL yet. For such a payment, the **Fast Delivery Method** box lists only check delivery speeds, even if BILL will pay the vendor by ACH.

Before you select the **Pay Faster** check box, review the vendor's settings on the [Vendors](AP_30_30_00.md) \(AP303000\) or [Vendor Locations](AP_30_30_10.md) \(AP303010\) form. If the bank details for the BILL payment method are filled in on the **Payment** tab, the vendor will be created in BILL as a vendor that accepts ACH payments when the payment is processed. BILL will then send the payment by ACH but charge you the fee for the check delivery speed you selected, which is higher than the Pay Faster ACH fee.

To avoid this extra cost, create the vendor in BILL before you create the payment by clicking **Create Vendor in BILL** on the More menu of the [Vendors](AP_30_30_00.md) form. After the vendor is created, its BILL details appear in the **External Payment Processing** section on the **Payment** tab of the [Vendors](AP_30_30_00.md) form. For payments you then create for this vendor, the **Disbursement Method** box shows *ACH*, and you're charged only the Pay Faster ACH fee.

## Pay Faster for ACH Payments

For an ACH payment, Pay Faster expedites the electronic transfer itself. The **Fast Delivery Method** box isn’t shown because you don’t select a delivery speed.

When you select the **Pay Faster** check box, BILL processes the payment on an accelerated schedule:

-   If you create the payment before 10:00 AM Pacific time \(PT\) on a business day, BILL processes it as a same-day ACH payment.
-   If you create the payment at or after 10:00 AM PT, BILL processes it as a next-day ACH payment.

The fee for this service appears as *Pay Faster ePayment \(ACH\)* in the **Additional Service Fees** dialog box.

If BILL can’t process a Pay Faster ACH payment—for instance, because the amount exceeds the Pay Faster limit or the vendor isn’t eligible for the service—Acumatica ERP displays an error that explains the reason and, if applicable, what to do next.

## How the Application Date Is Determined

For payments that use the Pay Faster service, Acumatica ERP does not calculate the payment date on its own. Instead, it uses the process date that BILL returns—the date on which BILL debits the funds from your bank account—as the payment’s application date and adjusts the application period, if necessary.

BILL returns the process date in Pacific time, and Acumatica ERP displays it according to the time-zone settings of your instance.

Sometimes BILL’s process date falls in a financial period that is not open—that is, a period that has the *Inactive* or *Closed* status. This can happen if BILL returns a future date in a period that hasn’t been opened yet or a current date in a period that has already been closed.

If Acumatica ERP can’t record the process date, it does the following:

-   Retains the payment’s *Pending Processing* status and doesn’t release it.
-   Leaves the **Application Date** and **Application Period** values on the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form unchanged for now.
-   Stores BILL's process date and shows the processing status on the **Remittance** tab, with the history on the **External Processing** tab.

While the payment retains this status, the only way to see the cause is to click **Synchronize Payment** on the **Remittance** tab. Acumatica ERP then displays a standard error indicating that the period is inactive or closed.

After you open or activate the financial period, you can release the payment. Acumatica ERP then updates the application date to BILL's process date and adjusts the application period if necessary.

Acumatica ERP updates the application date only while the payment hasn’t yet been released. After the payment is released, its application date doesn’t change, even if BILL later returns a different process date.

**Parent topic:**[Creating Documents for Processing in BILL](../UserGuide/AP__con_Create_Doc_External_Processing.md)

