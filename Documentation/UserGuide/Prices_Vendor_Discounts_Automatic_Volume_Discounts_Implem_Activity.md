# Volume Vendor Discounts: Implementation Activity {#_8b9a2278-d51d-4ab5-ba3f-82dd0a8d6ddc .task}

In this activity, you will learn how to configure automatic vendor discounts dependent on the amounts or quantities in document lines or the amount of the entire document. It is recommended that you review the information about line vendor discounts and document vendor discounts before completing this activity.

## Story { .section}

At the end of 2025, one of SweetLife's vendors, Blueline Advertising, purchased a new facility and drastically improved its capacity for production of outdoor advertising constructions. To increase the utilization ratio of the new facility, Blueline offers discounts to its customers who order production of outdoor ad constructions in large quantities. The SweetLife Fruits &amp; Jams company purchases billboard production from Blueline, so the company is interested in the following Blueline's discounts:

-   5–9 billboards - 5%
-   10–14 billboards - 7%
-   15–19 billboards - 10%
-   20 and more billboards - 15%

Also, Blueline offers discounts to its most valued customers, which place large orders, as follows:

-   $3,000–4,999 - 3%
-   $5,000–6,999 - 5%
-   $7,000 and more - 7%

As a regular customer of Blueline, SweetLife wants to take advantage of these discounts.

On January 30, 2026 SweetLife purchases the design of a new billboard, the production and installation of 15 billboards in the new design. Blueline charges for its installation services by the hour, that is 2 billable hours for installation of a single billboard.

As the SweetLife accountant, you first define these discounts so that they are applied automatically to documents created for Blueline. Also, you need to create a bill for the purchase of the services and explore how these discounts are applied to it.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Vendor Discounts* feature has been enabled to support the manual discount functionality.
-   On the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, the *BILLBPROD* and *BILLBDESIG* non-stock items have been created.
-   On the [Vendors](AP_30_30_00.md) \(AP303000\) form, the *BLUELINE* customer has been created.

## Process Overview { .section}

You configure discount codes on the [Vendor Discount Codes](AP_20_40_00.md) \(AP204000\) form and then configure appropriate discount sequences on the [Vendor Discounts](AP_20_50_00.md) \(AP205000\) form.

On the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, you create an AP bill to which the discounts may be applied. You then review the **Details** tab of the form and review how the discounts are applied.

## Before You Proceed { .section}

Before you start the activity, do the following:

1.  Launch the Acumatica ERP website, and sign in as an accountant by using the *johnson* login and the *123* password.
2.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date in your system is set to *1/30/2026*. If a different date is displayed, click the Business Date menu button and select *1/30/2026*. For simplicity, in this lesson, you will create and process all documents in the system on this business date.
3.  On the Company and Branch Selection menu, also on the top pane of the Acumatica ERP screen, make sure that the *SweetLife Head Office and Wholesale Center* branch is selected. If it is not selected, click the Company and Branch Selection menu to view the list of branches that you have access to, and then click *SweetLife Head Office and Wholesale Center*.

## Step 1: Configure the Tiered Line Vendor Discount \(Applicable to Item, Tiered by Quantity, Calculated by Percent\) { .section}

To configure an automatic volume discount applicable to the *BILLBPROD* item, do the following:

1.  Open the [Vendor Discount Codes](AP_20_40_00.md) \(AP204000\) form.
2.  In the Selection area, in the **Vendor** box, select *BLUELINE*.
3.  On the form toolbar, click **Add Row**, and specify the following settings in the added row:

    -   **Discount Code**: `VOLIT00000`
    -   **Description**: `Automatic line discount for a specific item`
    -   **Discount Type**: *Line*
    -   **Applicable To**: *Item*
    -   **Auto-Numbering**: Selected
    -   **Last Number**: `VOLIT00000`
    With these settings, discounts configured based on this discount code will be applicable to individual document lines containing specific items; because the **Manual** check box is cleared, these discounts will be applied automatically.

4.  On the form toolbar, click **Save**.
5.  Open the [Vendor Discounts](AP_20_50_00.md) \(AP205000\) form.
6.  On the form toolbar, click **Add New Record**, and specify the following settings in the Summary area:

    -   **Vendor**: *BLUELINE*
    -   **Discount Code**: *VOLIT00000*
    -   **Discount By**: *Percent*
    -   **Break By**: *Quantity*
    -   **Active**: Selected
    -   **Description**: `Automatic line discount for specific items - By Quantity, By Percent`
    These settings convey that this discount \(of the discount code you just defined for line discounts that are applicable to specific items\) is applicable to individual lines containing specific items and is calculated as a percentage of the amount in these lines.

7.  On the **Discount Breakpoints** tab, click **Add Row** to add a row, and specify the following settings:
    -   **Pending Break Quantity**: `5`
    -   **Pending Discount Percent**: `5`
    -   **Pending Date**: *1/1/2026*
8.  Create three more rows with the following settings:

    -   **Pending Break Quantity**: `10`
    -   **Pending Discount Percent**: `7`
    -   **Pending Date**: *1/1/2026*
    -   **Pending Break Quantity**: `15`
    -   **Pending Discount Percent**: `10`
    -   **Pending Date**: *1/1/2026*
    -   **Pending Break Quantity**: `20`
    -   **Pending Discount Percent**: `15`
    -   **Pending Date**: *1/1/2026*
    With these settings, the percentage of the discount is determined based on the quantity of the item in a document line.

9.  On the **Items** tab, click **Add Row** and in the **Inventory ID** column select *BILLBPROD*.

    This setting indicated that the discount may be applied to document lines containing a certain quantity of the *BILLBPROD* item.

10. On the form toolbar, click **Save**.
11. On the form toolbar, click **Update Discounts**.
12. In the **Update Discounts** dialog box, which opens, leave the default value \(*1/30/2026*\) in the **Filter Date** box, and click **OK**.

## Step 2: Configure the Tiered Document Vendor Discount \(Tiered by Amount, Calculated by Percent\) { .section}

To configure an automatic vendor discount applicable to the entire document, do the following:

1.  Open the [Vendor Discount Codes](AP_20_40_00.md) \(AP204000\) form.
2.  In the Selection area, in the **Vendor** box, select *BLUELINE*.
3.  On the form toolbar, click **Add Row**, and specify the following settings in the added row:

    -   **Discount Code**: `VOLDOC0000`
    -   **Description**: `Automatic document discount unconditional`
    -   **Discount Type**: *Document*
    -   **Applicable To**: *Unconditional*
    -   **Auto-Numbering**: Selected
    -   **Last Number**: `VOLDOC0000`
    With these settings, discounts configured based on this discount code will be applicable to the entire document; because the **Manual** check box is cleared, these discounts will be applied automatically.

4.  On the form toolbar, click **Save**.
5.  Open the [Vendor Discounts](AP_20_50_00.md) \(AP205000\) form.
6.  On the form toolbar, click **Add New Record**, and specify the following settings in the Summary area:

    -   **Vendor**: *BLUELINE*
    -   **Discount Code**: *VOLDOC0000*
    -   **Discount By**: *Percent*
    -   **Break By**: *Amount*
    -   **Active**: Selected
    -   **Description**: `Automatic unconditional document discount tiered by document amount`
    These settings convey that this discount \(of the discount code you just defined for line discounts that are applicable to specific items\) is applicable to the entire document, calculated as a percentage of the document amount, and the discount percent depends on the document amount.

7.  On the **Discount Breakpoints** tab, click **Add Row** to add a row, and specify the following settings:
    -   **Pending Break Amount**: `3,000`
    -   **Pending Discount Percent**: `3`
    -   **Pending Date**: *1/1/2026*
8.  Add two more rows with the following settings:

    -   **Pending Break Amount**: `5,000`
    -   **Pending Discount Percent**: `5`
    -   **Pending Date**: *1/1/2026*
    -   **Pending Break Amount**: `7,000`
    -   **Pending Discount Percent**: `7`
    -   **Pending Date**: *1/1/2026*
    With these settings, the percentage of the discount is determined based on the amount of the document.

9.  On the form toolbar, click **Save**.
10. On the form toolbar, click **Update Discounts**.
11. In the **Update Discounts** dialog box, which opens, leave the default value \(*1/30/2026*\) in the **Filter Date** box, and click **OK**.

## Step 3: Create the Bill for Blueline and Explore Discount Application { .section}

To create the bill for Blueline Advertising and explore how these tiered discounts are applied, do the following:

1.  Open the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.
2.  On the form toolbar, click **Add New Record**, and specify the following settings in the Summary area:
    -   **Type**: *Bill*
    -   **Vendor**: *BLUELINE*
    -   **Date**: *1/30/2026* \(inserted by default\)
    -   **Description**: `Billboard design and installation - January 2024`
3.  On the **Details** tab, click **Add Row**, and specify the following settings in the added row:
    -   **Branch**: *HEADOFFICE*
    -   **Inventory ID**: *BILLBDESIG*
    -   **Quantity**: `1`
    -   **UOM**: *PIECE*
    -   **Unit Cost**: `1000`
4.  Add another row with the following settings:

    -   **Branch**: *HEADOFFICE*
    -   **Inventory ID**: *BILLBPROD*
    -   **Quantity**: `15`
    -   **UOM**: *PIECE*
    -   **Unit Cost**: `300`
    Notice that the **Discount Percent** column in this row contains the discount percentage that you configured in Step 1 \(which is 10% for the 15–19 tier\).

5.  On the **Discounts** tab, notice that there is one table row that corresponds to the document discount that you have configured in Step 2, which is a 5% discount applicable to documents with the amount between $5,000 and $7,000.

    Notice that the **Document Discounts** box of the Summary area of the form also displays this discount amount.

6.  On the **Details** tab, add another row with the following settings:
    -   **Branch**: *HEADOFFICE*
    -   **Inventory ID**: *BILLBINSTA*
    -   **Quantity**: `30`
    -   **UOM**: *HOUR*
    -   **Unit Cost**: `80`
7.  On the **Discounts** tab, notice that the document discount has now changed to 7%, which corresponds to the documents amounts that equal or exceed $7,000. The same amount is reflected in the **Document Discounts** box in the Summary area of the form.
8.  In the form toolbar, click **Remove Hold**, then click **Release** to release the bill.
9.  On the **Financial** tab, click the link in the **Batch Nbr.** box to review the GL batch, which the system opens in a pop-up window on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

    The *20000 - Accounts Payable* account is credited and the *61000 - Advertising Expense* account is debited in the amount of the bill. Notice that the discount applied to the entire document is credited to the *49000 - Discount Taken* account.


## Step 4: Make the Created Discounts Inactive { .section}

To make the discounts you created in this activity inactive so that they will not affect other documents later, do the following:

1.  Open the [Vendor Discounts](AP_20_50_00.md) \(AP205000\) form.
2.  In the **Discount Code** box, select *VOLDOC0000*.
3.  In the **Sequence** box, select *VOLDOC0001*.
4.  In the Summary area, clear the **Active** check box. Save the discount.
5.  In the **Discount Code** box, select *VOLIT00000*.
6.  In the **Sequence** box, select *VOLIT00001*.
7.  In the Summary area, clear the **Active** check box. Save the discount.

**Parent topic:**[Volume Vendor Discounts](../UserGuide/Prices_Vendor_Discounts_Automatic_Volume_Discounts_Mapref.md)

