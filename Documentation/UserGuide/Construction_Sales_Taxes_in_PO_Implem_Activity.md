# Purchases with a Sales Tax: To Configure a Sales Tax for Project Purchases {#_5e8e0da6-4b59-4b30-81b2-ab6121cfdd40 .task}

This activity will walk you through the process of creating a sales tax in the system.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that the ToadGreen company buys goods from its suppliers and pays sales tax on these purchases. The rate of the sales tax is 8.875%; the tax amount must be calculated on the sum of the line amounts to which this tax is applied. You need to configure a sales tax to be calculated for AP documents; the calculated tax amounts can then be claimed from a tax agency.

## Configuration Overview { .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Tax Zones](TX_20_60_00.md#) \(TX206000\) form, the *NYZONE* tax zone has been created.
-   On the [Tax Categories](TX_20_55_00.md#) \(TX205500\) form, the *TAXABLE* category has been created.
-   On the [Chart of Accounts](GL_20_25_00.md#) \(GL202500\) form, the *24100 - Tax Payable* and *69000 - Tax Expenses* accounts have been created. The *69000 - Tax Expenses* account is included in the *MATERIAL* account group.

## System Preparation { .section}

Launch the Acumatica ERP website, and sign in as a system administrator by using the *gibbs* username and the `123` password.

## Step: Creating a Sales Tax { .section}

To create a sales tax, proceed as follows:

1.  On the [Taxes](TX_20_50_00.md) \(TX205000\) form, add a new record.
2.  In the Summary area,, specify the following settings:
    -   **Tax ID**: `NYSALESTAX`
    -   **Description**: `New York sales tax`
    -   **Tax Type**: *Sales*
    -   **Calculation Rule**: *Exclusive Document-Level*

        This setting means that the tax amount is calculated on the sum of the line amounts to which this tax is applied.

    -   **Cash Discount**: *Does Not Affect Taxable Amount*
3.  On the **Tax Schedule** tab, click **Add Row** on the table toolbar, and specify the following settings:
    -   **Start Date**: *1/1/2026*
    -   **Tax Rate**: `8.875`
    -   **Reporting Group**: *Default Input Group*
    -   **Group Type**: *Input* \(specified automatically\)

        An *Input* group is specified for a tax that can be claimed from a tax agency.

4.  On the **Categories** tab, click **Add Row** on the table toolbar, and select *TAXABLE* in the **Tax Category** column.
5.  On the **Zones** tab, click **Add Row** on the table toolbar, and select *NYZONE* in the **Tax Zone ID** column.
6.  On the **GL Accounts** tab, specify the following settings:
    -   **Tax Payable Account**: *24100 - Tax Payable*

        The Tax Payable account is the liability account that accumulates the tax amounts to be paid to the tax agency. The account is credited in the tax amount when taxable invoices are released.

    -   **Use Tax Expense Account**: Selected
    -   **Tax Expense Account**: *69000 - Project Tax Expenses*

        The *Project Tax Expenses* account \(*69000*\) is included in the *MATERIAL* account group so that tax expenses will be posted to the project specified for the AP document lines.

7.  On the form toolbar, click **Save** to save your changes.

You have configured a sales tax.

**Parent topic:**[Working with Sales Taxes in Purchase Orders](../UserGuide/Construction_Sales_Taxes_in_PO_Mapref.md)

