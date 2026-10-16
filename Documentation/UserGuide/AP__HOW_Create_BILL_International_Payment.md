# To Create an International Payment

You use the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form to create an international payment for a bill in USD or another currency.

## Before You Proceed

Make sure that:

-   Integration with BILL has been set up as described in [Setup of Integration with BILL](AP__CON_BillCom_Integration_Setup.md).
-   A bill with the BILL payment method has been created on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.

## To Create an International Payment for a Bill in a Foreign Currency

1.  On the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, open the foreign-currency bill that you want to pay.
2.  On the form toolbar, click **Pay**.

    The system opens a payment on the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form.

3.  In the Summary area, specify the following settings:
    -   **Payment Method**: A payment method set up for an external payment processor, such as *BILL*
    -   **Cash Account**: A cash account in the foreign currency
4.  Review the **Remittance** tab.

    In the **External Exchange Rate** box, the system displays a warning message prompting you to load the external exchange rate. In the **Disbursement Amount \(Payment currency\)** box, the system displays the foreign-currency amount that the vendor will receive. This amount is copied from the vendor's bill.

5.  On the form toolbar, click **Load Exchange Rate**.
6.  Go to the **Remittance** tab and review the **External Exchange Rate** box.

    The system has inserted the external exchange rate received from the payment processor. The **Rate Expires On** box shows the date and time until which this rate is valid.

7.  On the form toolbar, click **Print/Process**.

    The system opens the [Process Payments / Print Checks](AP_50_50_00.md) \(AP505000\) form with the payment shown in the table and the unlabeled check box selected for it. Notice the payment amount in the **Disbursement Amt.** column and the payment currency in the **Disbursement Currency** column.

8.  On the form toolbar, click **Process**.

**Parent topic:**[Creating Documents for Processing in BILL](../UserGuide/AP__con_Create_Doc_External_Processing.md)

