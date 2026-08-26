# Automatic Group Vendor Discounts: Implementation Activity {#_203a1351-0558-489a-92e9-d71665bc13f5 .task}

In this activity, you will learn how to configure and apply an automatic vendor discount that is based on the amount or quantity in one line or in a group of document lines.

## Story { .section}

Starting in January 2026, Blueline Advertising introduced a new discounting policy, offering its customers a 10% discount if they order billboard production and installation services worth of $3000 or more.

On January 30, 2026 SweetLife Fruits &amp; Jams company purchased the development of two new billboard designs as well as the production and installation of 6 billboards. Blueline charges 2 billable hours per installation of a single billboard.

Acting as the SweetLife's accountant, you first create the group vendor discount. Then you create a bill for Blueline reflecting the purchase, and after that you review how the group discount is applied to the bill.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Vendor Discounts* feature has been disabled to support the discount functionality.
-   On the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, the *BILLBDESIG*, *BILLBPROD*, and *BILLBINSTA* non-stock items have been created.
-   On the [Vendors](AP_30_30_00.md) \(AR303000\) form, the *BLUELINE* vendor has been created.

## Process Overview { .section}

To configure a group-level vendor discount, you create a discount code on the [Vendor Discount Codes](AP_20_40_00.md) \(AP204000\) form and then configure a discount sequence on the [Vendor Discounts](AP_20_50_00.md) \(AP205000\) form.

On the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, you create an AP bill with lines to which these discounts may be applied. You then review how the discounts you have configured are applied automatically.

## System Preparation { .section}

To prepare the system, do the following:

1.  Launch the Acumatica ERP website, and sign in as an accountant by using the *johnson* login and the *123* password.
2.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date in your system is set to *1/30/2026*. If a different date is displayed, click the Business Date menu button and select *1/30/2026*. For simplicity, in this lesson, you will create and process all documents in the system on this business date.
3.  On the Company and Branch Selection menu, also on the top pane of the Acumatica ERP screen, make sure that the *SweetLife Head Office and Wholesale Center* branch is selected. If it is not selected, click the Company and Branch Selection menu to view the list of branches that you have access to, and then click *SweetLife Head Office and Wholesale Center*.

## Step 1: Configure the Group Vendor Discount by Percent { .section}

To configure an automatic group discount by amount for the *BILLBPROD* and *BILLBINSTA* non-stock items purchased from Blueline, do the following:

1.  Open the [Vendor Discount Codes](AP_20_40_00.md) \(AP204000\) form.
2.  In the Selection area, in the **Vendor** box, select *BLUELINE*.
3.  On the form toolbar, click **Add Row**, and specify the following settings in the added row:

    -   **Discount Code**: `GRIT00000`
    -   **Description**: `Automatic group discount for specific items`
    -   **Discount Type**: *Group*
    -   **Applicable To**: *Item*
    -   **Auto-Numbering**: Selected
    -   **Last Number**: `GRIT00000`
    With these settings, discounts configured based on this discount code will be applicable to groups of lines containing specific items; because the **Manual** check box is cleared, these group discounts will be applied automatically.

4.  On the form toolbar, click **Save**.
5.  Open the [Vendor Discounts](AP_20_50_00.md) \(AP205000\) form.
6.  On the form toolbar, click **Add New Record**, and specify the following settings in the Summary area:

    -   **Vendor**: *BLUELINE*
    -   **Discount Code**: *GRIT00000*
    -   **Discount by**: *Percent*
    -   **Break By**: *Amount*
    -   **Active**: Selected
    -   **Description**: `Automatic group discount for specific items - By Percent`
    These settings convey that this discount \(of the discount code you just defined for group discounts that are applicable to specific items\) is applicable to multiple lines containing specific items and is calculated as a percentage of the amount in these lines.

7.  On the **Discount Breakpoints** tab, click **Add Row** on the table toolbar, and specify the following settings in the added row:

    -   **Pending Break Amount**: `3000`
    -   **Pending Discount Percent**: `10`
    -   **Pending Date**: *1/1/2026*
    With these settings, the discount of 10% is applicable to the document if the amount of a line or a group of lines containing specific items is equal to or more than $3000.

8.  On the **Items** tab, click **Add Row** and in the **Inventory ID** column select *BILLBPROD*. Then add another row and in the **Inventory ID** column, select *BILLBINSTA*.

    These settings imply that the discount will be applied to a document if the amount in all lines containing the *BILLBPROD* and *BILLBINSTA* non-stock items is larger than $3000.

9.  On the form toolbar, click **Save**.
10. On the form toolbar, click **Update Discounts**.
11. In the **Update Discounts** dialog box, which opens, leave the default value \(*1/30/2026*\) in the **Filter Date** box, and click **OK**.

## Step 2: Create the AP Bill for Blueline and Explore Discount Application { .section}

To create the bill for Blueline Advertising and explore how the automatic group discount is applied, do the following:

1.  Open the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.
2.  On the form toolbar, click **Add New Record**, and specify the following settings in the Summary area:
    -   **Type**: *Bill*
    -   **Vendor**: *BLUELINE*
    -   **Date**: *1/30/2026* \(inserted by default\)
    -   **Description**: `Design, production, and installation of billboards - January 2024`
3.  On the **Details** tab, click **Add Row**, and specify the following settings in the added row:
    -   **Branch**: *HEADOFFICE*
    -   **Inventory ID**: *BILLBDESIG*
    -   **Quantity**: `2`
    -   **Unit Cost**: `1000`
4.  While you are still on **Details** tab, add two more rows with the following settings:

    -   **Branch**: *HEADOFFICE*
    -   **Inventory ID**: *BILLBPROD*
    -   **Quantity**: `6`
    -   **Unit Cost**: `300`
    -   **Branch**: *HEADOFFICE*
    -   **Inventory ID**: *BILLBINSTA*
    -   **Quantity**: `12`
    -   **Unit Cost**: `80`
    Notice that the sum of amounts for the *BILLBPROD* and *BILLBINSTA* items is $2,760, which is less than the break point of the group discount you defined in Step 1, so the discount has not been applied.

5.  On the **Details** tab, change the quantity of the *BILLBPROD* item to `8`.
6.  On the form toolbar \(under **Other**\), click **Recalculate Prices**.
7.  In the **Recalculate Prices** window, which opens, leave the default values and click **OK**.
8.  On the **Discounts** tab, notice that there is now a row corresponding to the group discount you configured in Step 1, with the discount code and discount sequence specified in the **Discount Code** and **Sequence ID** columns. The **Discount Percent** column contains the discount percentage that you have configured in the discount sequence, and the **Discount Amt.** is the amount of the discount calculated based on this percentage. The value in the **Discountable Amt.** column is $3,360 \(the sum of amounts in the lines containing the *BILLBPROD* and *BILLBINSTA* items\), to which the discount has been applied. Notice also that the **Discount Total** box of the Summary area is $336.
9.  On the More menu, click **Remove Hold** check box, then click **Release** to release the bill.
10. On the **Financial** tab, click the link in the **Batch Nbr.** box to review the GL batch, which the system opens in a pop-up window on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

    The *20000 - Accounts Payable* account is credited and the *61000 - Advertising Expense* account is debited in the amount of the bill. Notice that the discount applied to the group of lines is credited to the *49000 - Discount Taken* account.


## Step 3: Make the Created Discounts Inactive { .section}

To make the discounts you created in this activity inactive so that they will not affect other documents later, do the following:

1.  Open the [Vendor Discounts](AP_20_50_00.md) \(AP205000\) form.
2.  In the **Discount Code** box, select *GRIT00000*.
3.  In the **Sequence** box, select *GRIT00001*.
4.  In the Summary area, clear the **Active** check box. Save the discount.

**Parent topic:**[Automatic Group Vendor Discounts](../UserGuide/Vendor_Discount_Auto_Group_Mapref.md)

