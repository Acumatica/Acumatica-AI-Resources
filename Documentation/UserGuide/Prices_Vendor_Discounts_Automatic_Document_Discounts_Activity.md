# Automatic Document Vendor Discounts: Implementation Activity {#_de946a5e-1c76-43cd-b199-5bb083c8a20a .task}

In this activity, you will learn how to configure an automatic document discount, and you will explore how it is applied to a AP bill.

## Story { .section}

Suppose that starting in January 2026, Blueline Advertising provides its most valued customers, including SweetLife, an unconditional discount of 3% that is applied to any order.

On January 30, 2026 SweetLife purchased the installation of 10 billboards from Blueline \(which is equivalent to 20 hours of billable work\).

Acting as the SweetLife's accountant, you need to define the 3% discount. You then need to create a bill for Blueline for the purchased billboard installation services.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Vendor Discounts* feature has been enabled to support the discount functionality.
-   On the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, the *BILLBINSTA* non-stock item has been created.
-   On the [Vendors](AP_30_30_00.md) \(AR303000\) form, the *BLUELINE* vendor has been created.

## Process Overview { .section}

You configure a discount code on the [Vendor Discount Codes](AP_20_40_00.md) \(AP204000\) form and then configure a discount sequence on the [Vendor Discounts](AP_20_50_00.md) \(AP205000\) form.

On the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, you create an AP bill to which the discount may be applied. You then review the **Discount Details** tab of the form and review how the discount is applied.

## System Preparation { .section}

Before you start the activity, do the following:

1.  Launch the Acumatica ERP website, and sign in as an accountant by using the *johnson* login and the *123* password.
2.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date in your system is set to *1/30/2026*. If a different date is displayed, click the Business Date menu button and select *1/30/2026*. For simplicity, in this lesson, you will create and process all documents in the system on this business date.
3.  On the Company and Branch Selection menu, also on the top pane of the Acumatica ERP screen, make sure that the *SweetLife Head Office and Wholesale Center* branch is selected. If it is not selected, click the Company and Branch Selection menu to view the list of branches that you have access to, and then click *SweetLife Head Office and Wholesale Center*.

## Step 1: Create an Unconditional Document Discount by Percent { .section}

To configure an unconditional document discount by percent, do the following:

1.  Open the [Vendor Discount Codes](AP_20_40_00.md) \(AP204000\) form.
2.  In the Selection area, in the **Vendor** box, select *BLUELINE*.
3.  On the form toolbar, click **Add Row**, and specify the following settings in the added row:

    -   **Discount Code**: `DOCUN00000`
    -   **Description**: `Automatic unconditional document discount`
    -   **Discount Type**: *Document*
    -   **Applicable To**: *Unconditional*
    -   **Auto-Numbering**: Selected
    -   **Last Number**: `DOCUN00000`
    With these settings, discounts configured based on this discount code will be applicable to a document as a whole; because the **Manual** check box is cleared, these document discounts will be applied automatically.

4.  On the form toolbar, click **Save**.
5.  Open the [Vendor Discounts](AP_20_50_00.md) \(AP205000\) form.
6.  On the form toolbar, click **Add New Record**, and specify the following settings in the Summary area:

    -   **Vendor**: *BLUELINE*
    -   **Discount Code**: *DOCUN00000*
    -   **Discount By**: *Percent*
    -   **Break By**: *Amount* \(inserted by default\)
    -   **Active**: Selected
    -   **Description**: `Automatic unconditional document discount - By Percent, By Amount`
    These settings convey that this discount \(of the discount code you just defined for unconditional document discounts\) is by percent.

7.  On the **Discount Breakpoints** tab, click **Add Row** on the table toolbar, and specify the following settings in the added row:

    -   **Pending Break Amount**: `0`
    -   **Pending Discount Percent**: `3`
    -   **Pending Date**: *1/1/2026*
    With these settings, the discount of 3% is applicable to any document created for Blueline Advertising regardless of its amount.

8.  On the form toolbar, click **Save**.
9.  On the form toolbar, click **Update Discounts**.
10. In the **Update Discounts** dialog box, which opens, leave the default value \(*1/30/2026*\) in the **Filter Date** box, and click **OK**.

## Step 2: Create the AP Bill and Explore Discount Application { .section}

To create the bill for Blueline Advertising and explore how the automatic document discount is applied, do the following:

1.  Open the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.
2.  On the form toolbar, click **Add New Record**, and specify the following settings in the Summary area:
    -   **Type**: *Bill*
    -   **Vendor**: *BLUELINE*
    -   **Date**: *1/30/2026* \(inserted by default\)
    -   **Description**: `Billboard installation - January 2024`
3.  On the **Details** tab, click **Add Row**, and specify the following settings in the added row:

    -   **Branch**: *HEADOFFICE*
    -   **Inventory ID**: *BILLBINSTA*
    -   **Quantity**: `20`
    -   **UOM**: *HOUR*
    -   **Unit Cost**: 80
    Notice that the **Document Discounts** box of the Summary area of the form now has the value of $48, which is the amount of the unconditional discount which has been automatically applied to the bill as this discount is effective for any documents for Blueline.

4.  On the **Discounts** tab, notice that the **Discount Code** column contains the *DOCUN00000* value, which is the vendor discount code for the unconditional document discount that you have configured in Step 1, and the **Sequence ID** column contains the ID of the discount sequence, which you also have configured in Step 1. The **Discount Percent** is 3%, which you have specified in the discount sequence. Note that the discount amount was calculated automatically and is now reflected in the **Discount Amt.** column.
5.  On the form toolbar, click **Remove Hold**, then click **Release** to release the bill.
6.  On the **Financial** tab, click the link in the **Batch Nbr.** box to review the GL batch, which the system opens in a pop-up window on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

    The *20000 - Accounts Payable* account is credited in the amount of $1,552 and the *61000 - Advertising Expense* account is debited in the amount of the bill \($1,600\). Notice that the discount applied to the entire document is credited to the *49000 - Discount Taken* account in the amount of $48.


## Step 3: Make the Created Discounts Inactive { .section}

To make the discounts you created in this activity inactive so that they will not affect other documents later, do the following:

1.  Open the [Vendor Discounts](AP_20_50_00.md) \(AP205000\) form.
2.  In the **Discount Code** box, select *DOCUN00000*.
3.  In the **Sequence** box, select *DOCUN00001*.
4.  In the Summary area, clear the **Active** check box. Save the discount.

**Parent topic:**[Automatic Document Vendor Discounts](../UserGuide/Prices_Vendor_Discounts_Automatic_Document_Discounts_Mapref.md)

