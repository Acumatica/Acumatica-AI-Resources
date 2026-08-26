# Automatic Line Vendor Discounts: Implementation Activity {#_3d5fe2a9-018b-40a9-9655-fdfaf7c4bc48 .task}

In this lesson you will learn how to configure line-level vendor discounts of different types \(applicable to specific items and item price classes\) and explore how these discounts are applied in AP bills.

## Story { .section}

Suppose that starting in January 2019, one of your vendors, Blueline Advertising, is offering its preferred customers, including SweetLife Fruits &amp; Jams, the following discounts:

-   A discount of $100 for the design of billboards \(that is, the discount is applicable to lines containing the *BILLBDESIG* non-stock item\)
-   A discount of 10% for all services related to the production of billboards \(that is, the discount is applicable to lines containing items of the *BILLBPROD* item price class\)

On January 30, 2019, SweetLife ordered from Blueline the design of 2 new billboards and the production of 10 billboards in the new design.

Acting as the SweetLife accountant, you need to configure the discounts and then create a bill for Blueline Advertising, noting how these discounts are applied.

## Process Overview { .section}

To configure and apply an automatic line-level vendor discount, you create a discount code on the [Vendor Discount Codes](AP_20_40_00.md) \(AP204000\) form and then configure a discount sequence on the [Vendor Discounts](AP_20_50_00.md) \(AP205000\) form.

On the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, you create an AP bill with lines to which these discounts may be applied. You then review how the discounts you have configured are applied automatically.

## Before You Proceed { .section}

Before you start the exercise, do the following:

1.  Launch the Acumatica ERP website, and sign in as an accountant by using the *johnson* login and the *123* password.
2.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date in your system is set to *1/30/2019*. If a different date is displayed, click the Business Date menu button and select *1/30/2019*. For simplicity, in this lesson, you will create and process all documents in the system on this business date.
3.  On the Company and Branch Selection menu, also on the top pane of the Acumatica ERP screen, make sure that the *SweetLife Head Office and Wholesale Center* branch is selected. If it is not selected, click the Company and Branch Selection menu to view the list of branches that you have access to, and then click *SweetLife Head Office and Wholesale Center*.

## Step 1: Create a Line Discount by Amount for a Specific Item { .section}

To configure an automatic discount by amount for the *BILLBDESIG* non-stock item purchased from Blueline, do the following:

1.  Open the [Vendor Discount Codes](AP_20_40_00.md) \(AP204000\) form.
2.  On the form toolbar, click **Add Row**, and specify the following settings in the added row:

    -   **Discount Code**: `LIITA00000`
    -   **Description**: `Automatic line discount for a specific item`
    -   **Discount Type**: *Line*
    -   **Applicable To**: *Item*
    -   **Auto-Numbering**: Selected
    With these settings, discounts configured based on this discount code will be applicable to individual lines containing specific items; because the **Manual** check box is cleared, these line discounts will be applied automatically.

3.  On the form toolbar, click **Save**.
4.  Open the [Vendor Discounts](AP_20_50_00.md) \(AP205000\) form.
5.  On the form toolbar, click **Add New Record**, and specify the following settings in the Summary area:

    -   **Vendor**: *BLUELINE*
    -   **Discount Code**: *LIITA00000*
    -   **Discount By**: *Amount*
    -   **Break By**: *Amount*
    -   **Active**: Selected
    -   **Description**: `Automatic line discount for a specific item - By Amount`
    These settings convey that this discount \(of the discount code you just defined for line discounts that are applicable to specific items\) is by amount.

6.  On the **Discount Breakpoints** tab, click **Add Row** on the table toolbar, and specify the following settings in the added row:

    -   **Pending Break Amount**: `0`
    -   **Pending Discount Amount**: `100`
    -   **Pending Date**: *1/1/2019*
    With these settings, the discount of $100 is applicable to a line containing specific item regardless of the line amount.

7.  On the **Items** tab, click **Add Row** and in the **Inventory ID** select *BILLBDESIG*. Since no other items are defined on this tab, this discount will be applied only to the *BILLBDESIG* non-stock item.
8.  On the form toolbar, click **Save**.
9.  On the form toolbar, click **Update Discounts**.
10. In the **Update Discounts** dialog box, which opens, leave the default value \(*1/30/2019*\) in the **Filter Date** box, and click **OK**.

## Step 2: Create a Line Discount by Percent for a Specific Item Price Class { .section}

To configure an automatic discount by percent for the items of the *BILLBOARD* item price class purchased from Blueline, do the following:

1.  Open the [Vendor Discount Codes](AP_20_40_00.md) \(AP204000\) form.
2.  On the form toolbar, click **Add Row**, and specify the following settings in the added row:

    -   **Vendor**: *BLUELINE*
    -   **Discount Code**: `LIITC00000`
    -   **Description**: `Automatic line discount for a specific item price class`
    -   **Discount Type**: *Line*
    -   **Applicable To**: *Item Price Class*
    -   **Auto-Numbering**: Selected
    With these settings, discounts configured based on this discount code will be applicable to individual lines containing items that belong to a particular item price class; because the **Manual** check box is cleared, these line discounts will be applied automatically.

3.  On the form toolbar, click **Save**.
4.  Open the [Vendor Discounts](AP_20_50_00.md) \(AP205000\) form.
5.  On the form toolbar, click **Add New Record**, and specify the following settings in the Summary area:

    -   **Vendor**: *BLUELINE*
    -   **Discount Code**: *LIITC00000*
    -   **Discount By**: *Percent*
    -   **Break By**: *Amount*
    -   **Active**: Selected
    -   **Description**: `Automatic line discount for an item price class - By Percent`
    These settings convey that this discount \(of the discount code you just defined for line discounts that are applicable to items of a certain item price class\) is by percent.

6.  On the **Discount Breakpoints** tab, click **Add Row** on the table toolbar, and specify the following settings in the added row:

    -   **Pending Break Amount**: `0`
    -   **Pending Discount Amount**: `10`
    -   **Pending Date**: *1/1/2019*
    With these settings, the discount of 10% is applicable to a line containing items of a specific price class regardless of the line amount.

7.  On the **Item Price Classes** tab, click **Add Row** and in the **Price Class ID** select *BILLBOARD*. Since no other items are defined on this tab, this discount will be applied only to items of the *BILLBOARD* item price class.
8.  On the form toolbar, click **Save**.
9.  On the form toolbar, click **Update Discounts**.
10. In the **Update Discounts** dialog box, which opens, leave the default value \(*1/30/2019*\) in the **Filter Date** box, and click **OK**.

## Step 3: Create the AP Bill and Explore Discount Application { .section}

To create the bill for Blueline Advertising and explore how the automatic line discounts are applied, do the following:

1.  Open the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.
2.  On the form toolbar, click **Add New Record**, and specify the following settings in the Summary area:
    -   **Type**: *Bill*
    -   **Vendor**: *BLUELINE*
    -   **Date**: *1/30/2019* \(inserted by default\)
    -   **Description**: `Design and production of billboards`
3.  On the **Document Details** tab, click **Add Row**, and specify the following settings in the added row:

    -   **Branch**: *HEADOFFICE*
    -   **Inventory ID**: *BILLBDESIG*
    -   **Quantity**: `2`
    The **Discount Amount** column contains the $100 discount that you configured in Step 1. The discount has been applied automatically because the line contains the specific item, *BILLBDESIG*. Notice that the value in the **Discount Percent** column, which is 5%, has been calculated automatically.

4.  On the table toolbar, click **Add Row**, and specify the following settings in the row:

    -   **Branch**: *HEADOFFICE*
    -   **Inventory ID**: *BILLBPROD*
    -   **Quantity**: `10`
    The **Discount Percent** column contains the 10% discount that you configured in Step 2. The discount has been applied automatically to this line, because the *BILLBPROD* item belongs to the *BILLBOARD* item price class to which this discount is applicable.

5.  In the Summary area, clear the **Hold** check box, and on the form toolbar, click **Release** to release the bill.
6.  On the **Financial Details** tab, click the link in the **Batch Nbr.** box to review the GL batch, which the system opens in a pop-up window on the Journal Transactions \(GL301000\) form.

    The *20000 - Accounts Payable* account is credited and the *61000 - Advertising Expense* account is debited in the amount of the bill.


## Step 4: Make the Created Discounts Inactive { .section}

To make the discounts you created in this activity inactive so that they will not affect other documents later, do the following:

1.  Open the [Vendor Discounts](AP_20_50_00.md) \(AP205000\) form.
2.  In the **Discount Code** box, select *LIITA00000*.
3.  In the **Sequence** box, select *LIITA00000*.
4.  In the Summary area, clear the **Active** check box; save the discount.
5.  Repeat Instructions 2–3 for the *LIITC00000* discount code.

**Parent topic:**[Automatic Line Vendor Discounts](../UserGuide/Prices_Vendor_Discounts_Automatic_Line_Discounts_Mapref.md)

