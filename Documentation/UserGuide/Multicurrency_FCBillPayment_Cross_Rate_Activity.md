# Multicurrency Payment of Bills: To Change the Payment Amount Instead of Cross Rate {#_cba673d2-17c6-4815-bee1-f2246cb33b09 .task}

This activity will walk you through the process of creating an AP bill in a foreign currency and paying it in another foreign currency. You will also change the amount paid in the payment currency, causing the system to recalculate the cross rate.

## Story { .section}

Suppose that SweetLife Fruits &amp; Jams buys professional services from Space Computers, Ltd., which operates in a multicurrency environment. SweetLife’s base currency is USD, but it conducts business using foreign currencies—specifically, EUR and GBP.

On April 1, 2026, a bill for EUR 1000 was entered in the system, which was USD 1100 in the base currency. On April 15, 2026, SweetLife made a payment of GBP 840 to fully pay the bill. The exchange rates on the payment date were 1 USD = 1.299 GBP and 1 USD = 1.0799311 EUR. Thus, the default cross rate was 0.83135574.

Acting as a SweetLife accountant, you need to create a bill for EUR 1000, create a payment for GBP 840, and apply the payment to the bill to fully pay it.

## Configuration Overview {#section_mfx_3jv_vxb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the following features have been enabled:
    -   *Standard Financials*, which provides the standard financial functionality
    -   *Multibranch Support*, which supports multiple branches in your instance of Acumatica ERP
    -   *Multicompany Support*, which supports multiple companies within one tenant
    -   *Multicurrency Accounting*, which enables multicurrency operations in the system
-   On the [Companies](CS_10_15_00.md) \(CS101500\) form, the *SWEETLIFE* company has been defined.
-   On the [Branches](CS_10_20_00.md) \(CS102000\) form, the *HEADOFFICE* branch of the *SWEETLIFE* company has been created.
-   On the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form, the *20000 \(Accounts Payable\)*, *83000 \(Realized Gain/Loss Currency\)* accounts have been created.
-   On the [Vendors](AP_30_30_00.md) \(AP303000\) form, the *SPACECOMP* vendor has been defined.

## Process Overview { .section}

-   You will create currency rates on the [Currency Rates](CM_30_10_00.md) \(CM301000\) form.
-   On the [Vendors](AP_30_30_00.md) \(AP303000\) form, you will update the vendor's settings.
-   On the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, you will create an AP bill in EUR.
-   On the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form, you will create a payment in GBP and apply the bill to it in full to close the bill.

## System Preparation {#section_yqy_3jv_vxb .section}

Before you begin performing the steps of this activity, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as accountant Anna Johnson by using the *johnson* username and the *123* password.
2.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date in your system is set to *4/1/2026*. If a different date is displayed, click the Business Date menu button, and select *4/1/2026* from the calendar.
3.  On the Company and Branch Selection menu on the top pane of the Acumatica ERP screen, make sure that the *SweetLife Head Office and Wholesale Center* branch is selected. If it is not selected, click the Company and Branch Selection menu button to view the list of branches that you have access to, and then click *SweetLife Head Office and Wholesale Center*.
4.  Make sure that the multicurrency accounting functionality has been configured as described in Steps 1 through 2 in [Multicurrency Payment of Invoices: To Change the Payment Amount Instead of the Cross Rate](Multicurrency_ARInvoiceByForeignCurrency_CrossRate_Activity.md).

## Step 1: Creating Currency Rates { .section}

To define the currency rates between the base currency \(*USD*\), *GBP*, and *EUR* do the following:

1.  Open the [Currency Rates](CM_30_10_00.md) \(CM301000\) form.
2.  In the **To Currency** box, select *USD*.
3.  In the **Effective Date** box, enter *4/1/2026*.
4.  On the **Currency Rate Entry** tab, click **Add Row** on the table toolbar, and specify the following settings in the added row:

    -   **From Currency**: *GBP*
    -   **Currency Rate Type**: *SPOT*
    -   **Currency Effective Date**: *4/1/2026*
    -   **Currency Rate**: `1.299`
    -   **Mult./Div.**: *Multiply*
    The **From Currency** box indicates which currency the conversion should be performed from by using the **Currency Rate** and the operation selected in the **Mult./Div.** box. That is, the conversion rule from *GBP* to *USD* is `1 GBP = 1 * 1.299 USD`.

5.  On the form toolbar, click **Save**.
6.  On the **Currency Rate Entry** tab, click **Add Row** again and specify the following settings in the added row:
    -   **From Currency**: *EUR*
    -   **Currency Rate Type**: *SPOT*
    -   **Currency Effective Date**: *4/1/2026*
    -   **Currency Rate**: `1.07993110`
    -   **Mult./Div.**: *Multiply*
7.  On the form toolbar, click **Save**.

## Step 2: Updating the Vendor's Settings { .section}

To update the vendor's settings, do the following:

1.  On the [Vendors](AP_30_30_00.md) \(AP303000\) form, open the *SPACECOMP* vendor.
2.  On the **Financial** tab, specify the following settings:
    -   **Currency ID**: *EUR*
    -   **Enable Currency Override**: Selected
    -   **Curr. Rate Type**: *SPOT*
    -   **Enable Rate Override**: Selected
3.  On the **Payment** tab, specify the following settings:
    -   **Payment Method**: *WIRE*
    -   **Cash Account**: *10610 - Checking Account GBP*
4.  On the form toolbar, click **Save**.

## Step 3: Creating an AP Bill in EUR { .section}

To create an AP bill in *EUR* and release it, do the following:

1.  Open the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.
2.  Click **Add New Record** on the form toolbar, and specify or verify the following settings in the Summary area:
    -   **Type**: *Bill*
    -   **Vendor**: *SPACECOMP*
    -   **Currency**: *EUR* \(inserted automatically\)
    -   **Date**: *4/1/2026* \(inserted automatically\)
    -   **Post Period**: *04-2026* \(inserted automatically\)
    -   **Description**: `Installation services`
3.  On the **Details** tab, click **Add Row** and specify the following settings:
    -   **Transaction Descr.**: `Installation services`
    -   **Ext. Cost**: `1000`
4.  On the form toolbar, click **Save**.
5.  In the Summary area, click **Exchange Rate** \(right of the **Currency** box\) to open the **Rate Selection** dialog box.
6.  In the dialog box, specify `1.1` as the exchange rate of 1 USD to EUR. Click **OK** to close the dialog box.
7.  In the Summary area, click **View Base** \(right of the **Currency** box\) and review the bill in the base currency \(*USD*\).

    The **Detail Total** in *USD* is $1100.00, calculated as follows:

    -   The current EUR exchange rate, 1.1, is used.
    -   The system calculates €1000 \* 1.1 and rounds the total.
8.  Click **Remove Hold** and then click **Release**.

## Step 4: Creating a Payment in GBP { .section}

To create a payment in *GBP* and apply it to the bill in *EUR*, do the following:

1.  On the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form, create a new record.
2.  On the form toolbar, click **Add New Record**, and in the Summary area, specify or verify the following settings:
    -   **Type**: *Payment*
    -   **Vendor**: *SPACECOMP*
    -   **Payment Method**: *WIRE* \(inserted automatically when you selected the vendor\)
    -   **Cash Account**: *10610 \(Checking Account GBP\)*
    -   **Currency**: *GBP* \(inserted automatically based on the selected cash account\)
    -   **Application Date**: *4/15/2026*
    -   **Application Period**: *04-2026*
    -   **Description**: `Installation services`
    -   **Payment Amount**: `840`
3.  On the form toolbar, click **Save**.
4.  On the **Documents to Apply** tab, click **Add Row** and specify the following settings:

    -   **Document Type**: Bill
    -   **Reference Nbr.**: The reference number of the EUR 1000 bill that you created in Step 3
    -   **Amount Paid \(GBP\)**: `840`
    Notice that the **Unapplied Balance** in the Summary area is now *0*. The **Cross Rate** column on the **Documents to Apply** tab shows the value automatically recalculated by the system based on the payment amount of GBP 840.

5.  On the form toolbar, click **Remove Hold** and then click **Release** to release the payment and its application to the bill.

    Both the bill and the payment now have the *Closed* status because the payment has paid the bill in full.


**Parent topic:**[Paying Multicurrency Bills](../UserGuide/Multicurrency_FCBillPayment_Mapref.md)

