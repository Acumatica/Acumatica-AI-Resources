# Manual Vendor Discounts: Implementation Activity {#_c9a136a2-8394-4e42-afea-9bad7985515e .task}

In this activity you will manually apply a discount that one of the vendors offers to your organization.

## Story { .section}

The SweetLife Fruits &amp; Jams company regularly buys billboard design, production, and installation services from one of its vendors, Blueline Advertisement agency \(*BLUELINE*\). The Blueline account manager has notified you that, as Blueline's preferred customer, you can now order the design of one billboard at a 10% discount.

Also, the billboards you commissioned Blueline to install before the New Year were not installed on time, so your Blueline account manager has also offered you a compensation in the amount of $200 off your next order.

On January 30, 2026, the marketing manager of SweetLife decided to order from Blueline Advertisement the design of a new billboard and the production of two billboards with the new design to be later installed in the city center. You need to create a bill for these items and manually apply the discounts offered by Blueline.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Vendor Discounts* feature has been enabled.
-   On the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, the *BILLBPROD* and *BILLBDESIG* non-stock items have been created.
-   On the [Vendors](AP_30_30_00.md) \(AP303000\) form, the *BLUELINE* customer has been created.

## Process Overview { .section}

You specify a manual line discount or a manual document discount on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form. To specify a manual line discount in the **Discount Percent** column of the **Details** tab, you will enter 10% for the line with the *BILLBDESIG* non-stock item.

To specify a manual document discount, you will enter the discount in the amount of `$200` in the **Discount Amt.** column of the **Discounts** tab.

## Before You Proceed { .section}

Before you start the exercise, do the following:

1.  Launch the Acumatica ERP website, and sign in as an accountant by using the *johnson* login and the *123* password.
2.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date in your system is set to 1/30/2026. If a different date is displayed, click the Business Date menu button and select 1/30/2026. For simplicity, in this lesson, you will create and process all documents in the system on this business date.
3.  On the Company and Branch Selection menu, which is also on the top pane of the Acumatica ERP screen, make sure that the *SweetLife Head Office and Wholesale Center* branch is selected. If it is not selected, click the Company and Branch Selection menu to view the list of branches that you have access to, and then click *SweetLife Head Office and Wholesale Center*.

## Create a Bill with Manual Line-Level and Document-Level Discounts { .section}

To create the AP bill for Blueline Advertising \(*BLUELINE*\) and apply a manual line discount and a manual document discount in it, do the following:

1.  Open the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.
2.  On the form toolbar, click **Add New Record**, and specify the following settings in the Summary area:
    -   **Type**: *Bill*
    -   **Vendor**: *BLUELINE*
    -   **Date**: *1/30/2026* \(inserted by default\)
    -   **Post Period**: *01-2026*
    -   **Description**: `Design and production of billboards - NY`2026
3.  On the **Details** tab, click **Add Row** on the table toolbar, specify the following settings in the new line, and save your changes:

    -   **Branch**: *HEADOFFICE*
    -   **Inventory ID**: *BILLBDESIG*
    -   **Quantity**: `1`
    -   **Unit Cost**: `1000`
    -   **Discount Percent**: `10`

        **Note:** The **Discount Percent** field might be hidden from the table, so you might need to select it in the **Column Configuration** window.

    Note that the **Unit Cost** is specified because no vendor price is defined for design of a billboard in the system. If you have completed other activities on configuring vendor prices, the prices you configured in those activities might be suggested automatically.

    Here you have specified a 10% discount applicable only to a billboard design service.

4.  On the **Details** tab, click **Add Row** on the table toolbar, specify the following settings in the new line, and save your changes:

    -   **Branch**: *HEADOFFICE*
    -   **Inventory ID**: *BILLBPROD*
    -   **Quantity**: `2`
    -   **Unit Cost**: `300`
    Note that the **Unit Cost** is specified because no vendor price is defined for the production of billboards in the system. If you have completed other activities on configuring vendor prices, the prices you configured in those activities might be suggested automatically.

5.  On the **Discounts** tab, add the row and enter `200` in the **Discount Amt.** column.

    Notice that the **Document Discounts** box in the Summary area now displays $300, which is the sum of the manual line discount and manual document discount that you have just applied.

    **Note:** You can also enter a manual document discount in the **Document Discounts** box of the Summary area if the *Vendor Discounts* feature is disabled.


You do not have to save or release the bill. You have started creating it only to see how manual discounts are applied.

**Parent topic:**[Manual Vendor Discounts](../UserGuide/Prices_Vendor_Discounts_Manual_Discounts_Mapref.md)

