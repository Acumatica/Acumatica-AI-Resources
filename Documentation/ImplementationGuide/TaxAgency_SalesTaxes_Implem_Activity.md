# Tax Agency: To Set Up a Tax Agency for Sales Taxes

By performing this implementation activity, you will learn how to create a vendor and define it as a tax agency to which you will report taxes.

## Story

Suppose that you, as an implementation manager, are configuring the tax management functionality for the Muffins &amp; Cakes company. The company's managers have decided that they want to automatically generate tax bills to report taxes to the Colorado State Department of Revenue.

You need to create a new vendor and define it as a tax agency in the system.

## Configuration Overview

In the *U100* dataset, for the purposes of this activity, on the [Vendor Classes](../UserGuide/AP_20_10_00.md) \(AP201000\) form, the *TAXAGENCY* vendor class has been configured.

## Process Overview

In this activity, to create a tax agency, you will create a new vendor on the [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form. On the tabs of this form, you will specify the vendor's details, select the **Vendor is Tax Agency** check box, and specify the needed settings on the **Tax Agency** tab.

## System Preparation

Before you begin to work with a tax agency, launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as a system administrator Kimberly Gibbs by using the *gibbs* username and the *123* password.

## Step 1: Creating a Vendor Account

To create a vendor account to be used as a tax agency, proceed as follows:

1.  Open the [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click **New** right of the title.

2.  On the form toolbar, click **Add New Record**.
3.  In the Summary area, specify the following settings:
    -   **Vendor ID**: `COTAXDEP`
    -   **Account Name**: `CO State Department of Revenue`
    -   **Vendor Status**: *Active*
4.  On the **General** tab, in the **Vendor Class** box, select *TAXAGENCY*.
5.  On the **Financial** tab \(**Vendor Properties** section\), select the **Vendor Is Tax Agency** check box.
6.  On the form toolbar, click **Save** to save your changes.

## Step 2: Setting Up the Vendor as a Tax Agency

To set up the newly created vendor as a tax agency, proceed as follows:

1.  While you are still on the [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form, open the **Tax Agency** tab.
2.  In the **Default Tax Accounts** section, specify the following settings:
    -   **Tax Payable Account**: *24100 - Tax Payable*
    -   **Tax Expense Account**: *65100 - Other Tax Expenses*
3.  In the **Tax Report Settings** section, make sure that the following settings are specified:
    -   **Default Tax Period Type**: *Month*
    -   **Automatically Generate Tax Bill**: Selected
    -   **Use Currency Precision**: Selected
4.  On the form toolbar, click **Save** to save your changes.

**Parent topic:**[Tax Agency](../ImplementationGuide/Taxes_TaxAgency_Mapref.md)

