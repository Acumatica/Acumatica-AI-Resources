# Debit and Credit Adjustments: To Process a Debit Adjustment with a Cash Discount {#_86f7c105-daa4-4982-acfa-75f33b33d1f9 .task}

The following activity will walk you through the process of processing a debit adjustment with a cash discount.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that on January 30, 2026, SweetLife Fruits &amp; Jams received a credit memo from Compulink and Co. in the amount of $160 to decrease the accounts payable balance of the vendor. Also, the vendor wants to take a 3% cash discount by paying this document within the cash discount period, which is 10 days.

Acting as a SweetLife accountant, you need to configure the system to turn on the creation of debit adjustments with cash discounts. You then need to process the vendor's credit memo as a debit adjustment and create a vendor refund for it within the cash discount period.

## Process Overview { .section}

In this activity, on the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form, you will select the **Use Credit Terms in Debit Adjustments** check box. On the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, you will create a debit adjustment and select the credit terms with a cash discount for it. On the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form, you will create a refund and apply the debit adjustment to it. You will also review the amount paid and the cash discount for the refund to make sure that the cash discount has been applied.

## System Preparation { .section}

Before you begin processing a debit memo with a cash discount, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as Anna Johnson by using the *johnson* username and the *123* password.
2.  In the info area at the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date is set to *1/30/2026*. If a different date is displayed, click the Business Date menu button and select *1/30/2026* from the calendar. For simplicity, you'll create and process all documents in this activity using this business date.
3.  On the Company and Branch Selection menu on the top pane of the Acumatica ERP screen, select the *SweetLife Head Office and Wholesale Center* branch.

## Step 1: Updating the Accounts Payable Settings { .section}

To turn on the use of credit terms and cash discounts in debit adjustments, do the following:

1.  Open the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form.
2.  On the **General** tab \(**Data Entry Settings** section\), select the **Use Credit Terms in Debit Adjustments** check box.
3.  On the form toolbar, click **Save** to save the changes.

## Step 2: Creating a Debit Adjustment { .section}

To create a debit adjustment with credit terms specified, do the following:

1.  On the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, create a new record.
2.  In the Summary area, specify the following settings:
    -   **Type**: *Debit Adj.*
    -   **Vendor**: *COMPULINK*
    -   **Date**: *1/30/2026* \(inserted automatically\)
    -   **Terms**: *310N30*

        According to these credit terms, the vendor gives a 3% cash discount if the document is paid within 10 days and no cash discount is the document is paid within 30 days.

    -   **Due Date**: *3/1/2026* \(calculated automatically based on the selected credit terms\)
    -   **Cash Discount Date**: *2/9/2026* \(calculated automatically based on the selected credit terms\)

        To take a 3% cash discount, SweetLife needs to pay the debit adjustment \(that is, create a refund\) before this date.

    -   **Description**: `Credit memo from Compulink`
3.  On the **Details** tab, click **Add Row** on the table toolbar, and specify the following settings in the added row:

    -   **Branch**: *HEADOFFICE* \(inserted by default\)
    -   **Transaction Descr.**: `Credit memo from Compulink`
    -   **Ext. Cost**: `160`
    Notice that in the Summary area, the **Cash Discount** box shows *4.80*.

4.  On the form toolbar, click **Remove Hold**, and then click **Release** to release the debit adjustment.

## Step 3: Creating a Refund to Apply to the Debit Adjustment { .section}

To create a refund for the vendor, which applies the debit adjustment to it, do the following:

1.  Click the Business Date menu button, and select *2/7/2026* on the calendar.
2.  On the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form, create a new record.
3.  In the Summary area, specify the following settings:
    -   **Type**: *Refund*
    -   **Application Date**: *2/7/2026*
    -   **Vendor**: *COMPULINK*
    -   **Payment Ref.**: `COMP0003`
4.  On the **Documents to Apply** tab, click **Add Row** on the table toolbar, and specify and review the following settings in the added row:
    -   **Document Type**: *Debit Adj.*
    -   **Reference Nbr.**: The reference number of the debit adjustment that you created in Step 2
    -   **Amount Paid \(USD\)**: *155.20* \(calculated automatically because the application date is within the cash discount period\)
    -   **Cash Discount Taken \(USD\)**: *4.80* \(calculated automatically based on the vendor's credit terms\)
5.  On the form toolbar, click **Save** to save the changes.
6.  On the form toolbar, click **Remove Hold**, and click **Release** to release the refund.

**Parent topic:**[Processing Debit and Credit Adjustments](../UserGuide/Finance_Processing_Debit_and_Credit_Mapref.md)

