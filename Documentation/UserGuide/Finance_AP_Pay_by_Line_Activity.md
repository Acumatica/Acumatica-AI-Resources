# Applying Payments to Particular Lines: Process Activity {#_cd40504a-d7b9-4620-8b31-b1d7f0e22457 .task}

The following activity will walk you through the process of creating an AP bill to be paid by line and partially paying some of its lines.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that on 1/30/2026, the SweetLife Fruits &amp; Jams company ordered billboards from Blueline Advertisement for $6,649. The vendor wants SweetLife to pay $2,300 for billboard design first. The other bill lines can be paid later. On 2/5/2026, SweetLife partially paid the bill in the amount of $2,300.

Acting as a SweetLife accountant, you need to create the AP bill and create a partial payment for one of its lines.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   The following features have been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form:
    -   *Standard Financials*, which provides the standard financial functionality
    -   *Multibranch Support*, which supports multiple branches in your instance of Acumatica ERP
    -   *Multicompany Support*, which supports multiple companies within one tenant
    -   *Payment Application by Line*, which enables the functionality of paying specific lines of AP documents

On the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form, the **Hold Documents on Entry** check box has been selected in the **Data Entry Settings** section.

On the [Vendors](AP_30_30_00.md) \(AP303000\) form, the *BLUELINE \(Blueline Advertisement\)* vendor has been configured. This vendor has the *CHECK* payment method specified as the default one.

## Process Overview { .section}

In this activity, you will first create a bill with three lines on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form. The bill will have the **Pay by Line** check box selected, indicating that payments can be applied to separate lines of the bill. On the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form, you will pay one line of the bill. Finally, you will review the original bill on the [Bills and Adjustments](AP_30_10_00.md) form and its application to the payment on the [Checks and Payments](AP_30_20_00.md) form.

## System Preparation { .section}

Before you begin processing documents that are paid by line, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as Anna Johnson by using the *johnson* username and the *123* password.
2.  In the info area at the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date is set to *1/30/2026*. If a different date is displayed, click the Business Date menu button and select *1/30/2026* from the calendar. For simplicity, you'll create and process all documents in this activity using this business date.
3.  On the Company and Branch Selection menu on the top pane of the Acumatica ERP screen, select the *SweetLife Head Office and Wholesale Center* branch.

## Step 1: Creating an AP Bill { .section}

To create an AP bill that can be paid by line, do the following:

1.  On the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, add a new record.
2.  In the Summary area, specify the following settings:
    -   **Type**: *Bill*
    -   **Vendor**: *BLUELINE*
    -   **Date**: *1/30/2026* \(inserted automatically\)
    -   **Post Period**: *01-2026*
    -   **Pay by Line**: Selected
    -   **Description**: `Billboards`
3.  On the table toolbar of the **Details** tab, click **Add Row**; specify the following settings in the added row:
    -   **Branch**: *HEADOFFICE* \(inserted by default\)
    -   **Line Nbr.**: *1* \(inserted automatically\)
    -   **Inventory ID**: *BILLBDESIG*
    -   **Quantity**: `2`
    -   **Unit Cost**: `1150`
    -   **Ext. Cost**: *2,300* \(calculated automatically\)
    -   **Account**: *61000 - Advertising Expense* \(inserted automatically\)
4.  Click **Add Row** again and specify the following settings for the second row:
    -   **Branch**: *HEADOFFICE* \(inserted by default\)
    -   **Line Nbr.**: *2* \(inserted automatically\)
    -   **Inventory ID**: *BILLBPROD*
    -   **Quantity**: `2`
    -   **Unit Cost**: `2000`
    -   **Ext. Cost**: *4,000* \(calculated automatically\)
    -   **Account**: *61000 - Advertising Expense* \(inserted automatically\)
5.  Click **Add Row** again and specify the following settings for the third row:
    -   **Branch**: *HEADOFFICE* \(inserted by default\)
    -   **Line Nbr.**: *3* \(inserted automatically\)
    -   **Transaction Descr.**: `Consulting`
    -   **Ext. Cost**: `349`
    -   **Account**: *81000 - Other Expenses*
6.  On the form toolbar, click **Save**.
7.  On the form toolbar, click **Remove Hold** and then click **Release** to release the bill.

## Step 2: Paying One Line of the Bill { .section}

To pay one line of the AP bill, do the following:

1.  On the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form, add a new record.
2.  In the Summary area, specify the following settings:
    -   **Type**: *Payment*
    -   **Vendor**: *BLUELINE*
    -   **Application Date**: *2/5/2026*
    -   **Application Period**: *02-2026* \(inserted automatically\)
    -   **Payment Method**: *CHECK* \(inserted automatically\)
    -   **Description**: `Billboard design`
3.  On the **Documents to Apply** tab, click **Load Documents**.

    The system loads the documents and document lines for the *BLUELINE* vendor.

4.  In the table, select line 1 of the bill that you created in Step 1. The line has an amount of $2,300.
5.  In the **Payment Amount** box of the Summary area, enter `2300`.
6.  Remove the other documents and document lines from the table.
7.  Click **Save** to save your changes.
8.  On the form toolbar, click **Remove Hold** and then click **Print/Process** to print the check.
9.  On the [Process Payments / Print Checks](AP_50_50_00.md) \(AP505000\) form, which opens, review the payment settings, and click **Process** on the form toolbar.
10. Review the printed form of the check, which opens in a separate browser tab.

    **Tip:** If you are paying multiple lines of a bill, the payment contains one line with the total payment amount and shows the original bill amount and the balance currently due.

11. On the [Release Payments](AP_50_52_00.md) \(AP505200\) form, make sure that the needed payment is selected in the table, and click **Process** on the form toolbar.

    The system assigns the payment the *Closed* status. If the original bill still has unpaid lines, it retains the *Open* status, and the **Balance** box in the Summary area of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form displays the balance still owed to the vendor.


## Step 3: Reviewing the Original Bill and Its Applications { .section}

To review the original bill, which has been partially paid, do the following:

1.  On the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, open the bill that you created in Step 1.

    The bill retains the *Open* status because it still has unpaid lines. The **Balance** box in the Summary area displays the balance still owed to the vendor \($4,349\).

2.  Go to the **Applications** tab.

    The payment that has been applied to one bill line is listed on the tab.

3.  Click the link in the **Reference Nbr.** column to open the payment on the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form.
4.  On the **Application History** tab, notice that line 1 of the bill has been applied to the payment.

**Parent topic:**[Applying Payments to Particular Lines of AP Documents](../UserGuide/Finance_AP_Payments_for_Particular_Lines_Mapref.md)

