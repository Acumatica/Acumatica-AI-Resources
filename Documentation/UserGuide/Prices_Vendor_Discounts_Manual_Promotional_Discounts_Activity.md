# Promotional Vendor Discounts: Implementation Activity {#_be372c3d-4093-4385-85de-2df97123d819 .task}

In this activity, you will learn how to configure and apply a promotional vendor discount.

## Story { .section}

Suppose that in December 2026, procurement manager of the SweetLife Fruits &amp; Jams company attended an exhibition, where sales representatives of Blueline Advertising offered all prospective and existing customers a 15% discount on billboard design services. The discount is effective only for purchases made in December 2025 and January 2026.

On January 15, 2026 SweetLife's marketing manager wants to take advantage of this opportunity and purchases the design of 3 new billboards.

As the SweetLife's accountant, you need to define this discount in the system. Also, you need to create a bill for Blueline reflecting this purchase, and then apply the discount.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Vendor Discounts* feature has been enabled.
-   On the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, the *BILLBDESIG* non-stock item has been created.
-   On the [Vendors](AP_30_30_00.md) \(AP303000\) form, the *BLUELINE* customer has been created.

## Process Overview { .section}

You configure a discount code on the [Vendor Discount Codes](AP_20_40_00.md) \(AP204000\) form and then configure a discount sequence on the [Vendor Discounts](AP_20_50_00.md) \(AP205000\) form.

On the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, you create an AP bill with a line for the design of 3 new billboards to which the discount may be applied. You then manually apply the promotional discount to the document line.

## Before You Proceed { .section}

Before you start the activity, do the following:

1.  Launch the Acumatica ERP website, and sign in as an accountant by using the *johnson* login and the *123* password.
2.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date in your system is set to 1/30/2026. If a different date is displayed, click the Business Date menu button and select 1/30/2026. For simplicity, in this lesson, you will create and process all documents in the system on this business date.
3.  On the Company and Branch Selection menu, also on the top pane of the Acumatica ERP screen, make sure that the *SweetLife Head Office and Wholesale Center* branch is selected. If it is not selected, click the Company and Branch Selection menu to view the list of branches that you have access to, and then click *SweetLife Head Office and Wholesale Center*.

## Step 1: Configure the Manual Promotional Discount { .section}

To configure the promotional vendor discount, do the following:

1.  Open the [Vendor Discount Codes](AP_20_40_00.md) \(AP204000\) form.
2.  In the Selection area, in the **Vendor** box, select *BLUELINE*.
3.  On the form toolbar, click **Add Row**, and specify the following settings in the added row:

    -   **Discount Code**: `LIITP00000`
    -   **Description**: `Promotional discount for a specific item`
    -   **Discount Type**: *Line*
    -   **Applicable To**: *Item*
    -   **Auto-Numbering**: Selected
    -   **Last Number**: `LIITP00000`
    With these settings, discounts configured based on this discount code will be applicable to individual lines containing specific items; because the **Manual** check box is cleared, the discounts based on this code will be applied to documents automatically.

4.  On the form toolbar, click **Save**.
5.  Open the [Vendor Discounts](AP_20_50_00.md) \(AP205000\) form.
6.  On the form toolbar, click **Add New Record**, and specify the following settings in the Summary area:

    -   **Vendor**: *BLUELINE*
    -   **Discount Code**: *LIITP00000*
    -   **Discount By**: *Percent*
    -   **Break By**: *Amount*
    -   **Active**: Selected
    -   **Promotional**: Selected
    -   **Description**: `Manual promotional discount for an item - By percent`
    -   **Effective Date**: *12/1/2025*
    -   **Expiration Date**: *1/31/2026*
    These settings convey that this discount is promotional—that is, it is effective only a specified period of time \(from December 1, 2025 to January 31, 2026\) and is calculated as a percentage of the line amount.

7.  On the **Discount Breakpoints** tab, click **Add Row** on the table toolbar, and specify the following settings in the added row:

    -   **Break Amount**: `0`
    -   **Discount Amount**: `15`
    With these settings, the discount of 15% is applicable to a line regardless of the line amount.

8.  On the **Items** tab, click **Add Row** and in the **Inventory ID** select *BILLBDESIG*. Since no other items are defined on this tab, this discount will be applied only to the *BILLBDESIG* non-stock item.
9.  On the form toolbar, click **Save**.

## Step 2: Create the AP Bill for Blueline Advertising and Review Discount Application { .section}

To create the AP bill for Blueline and apply the promotional discount to it, do the following:

1.  Open the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.
2.  On the form toolbar, click **Add New Record**, and specify the following settings in the Summary area:
    -   **Type**: *Bill*
    -   **Vendor**: *BLUELINE*
    -   **Date**: *1/30/2026* \(inserted by default\)
    -   **Description**: `Billboard design: 3 designs, January`
3.  On the **Details** tab, click **Add Row**, and specify the following settings in the added row:

    -   **Branch**: *HEADOFFICE*
    -   **Inventory ID**: *BILLBDESIG*
    -   **Quantity**: `3`
    -   **UOM**: *PIECE*
    -   **Unit Cost**: 1000
    The **Discount Percent** column in the row contains the promotional 15% discount, which you configured in Step 1. The value of the discount amount, which is reflected in the **Discount Amount**, has been calculated automatically based on the discount percentage. Notice that the **Line Discounts** box of the Summary area is $450.

4.  In the Summary area, change the date in the **Date** box to *2/1/2026*.
5.  On the More menu \(under **Other**\), select **Recalculate Prices**.
6.  In the **Recalculate Prices** window, which opens, leave the default values and click **OK**.

    Notice that the **Discount Percent** and **Discount Amount** columns now show zeroes, because the promotional discount is effective only until January 31 and cannot be applied to documents created after that date.


## Step 3: Make the Created Discount Inactive { .section}

To make the discounts you created in this activity inactive so that they will not affect other documents later, do the following:

1.  Open the [Vendor Discounts](AP_20_50_00.md) \(AP205000\) form.
2.  In the **Discount Code** box, select *LIITP00000*.
3.  In the **Sequence** box, select *LIITP00000*.
4.  In the Summary area, clear the **Active** check box. Save the discount.

**Parent topic:**[Promotional Vendor Discounts](../UserGuide/Prices_Vendor_Discounts_Manual_Promotional_Discounts_Mapref.md)

