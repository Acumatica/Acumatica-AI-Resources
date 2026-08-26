# Value-Added Taxes: To Create a Statistical VAT and Inclusive VATs {#_3dae9d95-d53d-4d1d-813d-b747135b8039 .task}

You use the [Taxes](../UserGuide/TX_20_50_00.md) \(TX205000\) form to create a value-added tax of any modification.

## Before You Proceed { .section}

Make sure that the **VAT Reporting** feature is enabled in your system on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.

**Note:** Consider creating a convention for tax names to specify in the **Description** box. You may find it convenient to specify the tax rate percentage directly in the tax name—for instance, VAT\_16% for a tax with a 16% rate.

## To Create a Statistical VAT { .section}

1.  Open the [Taxes](../Shared/../UserGuide/TX_20_50_00.md) \(TX205000\) form.
2.  On the form toolbar, click **Add New Record**.
3.  On the **Tax Settings** tab \(Summary area\), proceed as follows:
    1.  In the **Tax ID** box, type the unique identifier to be used for the tax.
    2.  If needed, in the **Description** box, type a description of the tax, to help users easily identify tit.
    3.  In the **Tax Type** box, select *VAT*.
    4.  Select the **Statistical VAT** check box.
    5.  In the **Calculation Rule** box, select one of the following calculation methods for the tax:
        -   *Inclusive Line-Level*
        -   *Exclusive Line-Level*
        -   *Compound Line-Level*
        -   *Exclusive Document-Level*
        -   *Compound Document-Level*
    6.  If needed, select the **Exclude from Tax-on-Tax Calculation** check box if you need to exclude the tax from the taxable amount for calculating second-level taxes.
    7.  If needed, in the **Tax Agency** box, select the tax agency to which you will report the tax. Leave the box blank if you have not configured a tax agency account yet, or do not plan to prepare a tax report in Acumatica ERP.
4.  On the **Tax Schedule** tab, do the following for every set of dates and rates to be added for the tax:
    1.  In the **Start Date** column of the row, specify the date when the tax becomes effective.
    2.  In the **Tax Rate** column, specify *0* for the output tax.
    3.  In the **Reporting Group** column, select the *Output* reporting group that was defined for the tax agency and was intended for this tax.
    4.  Click **Add Row** again.
    5.  In the **Tax Rate** column of the new row, specify *0* for the input tax.
    6.  In the **Reporting Group** column, select the *Input* reporting group that was defined for the tax agency and intended for this tax.
5.  On the **GL Accounts** tab, perform the following instructions:
    1.  In the **Tax Payable Account** box, select the GL account to accumulate the tax amounts to be paid to the applicable tax agency.
    2.  In the **Tax Payable Subaccount** box, enter the number of the corresponding subaccount.
    3.  In the **Tax Claimable Account** box, select the GL account to accumulate the tax amounts to be claimed from the applicable tax agency.
    4.  In the **Tax Claimable Subaccount** box, enter the number of the corresponding subaccount.
6.  On the form toolbar, click **Save**.

The statistical VAT tax is created in the system. Now you need to set up tax calculation across the system. For details, see [Selecting Tax Calculation Methods](../UserGuide/Taxes_Selecting_Tax_Calc_Methods_Mapref.md).

## To Create an Inclusive Document-Level Output VAT {#_ca8b2224-4fa3-4b23-b5e8-8971705b1660 .section}

1.  Open the [Taxes](../UserGuide/TX_20_50_00.md) \(TX205000\) form.
2.  On the form toolbar, click **Add New Record**.
3.  On the **Tax Settings** tab, proceed as follows:
    1.  In the **Tax ID** box, type the unique identifier to be used for the tax.
    2.  Optional: In the **Description** box, type a description of the tax, to help users easily identify it.
    3.  In the **Tax Type** box, select *VAT*.
    4.  In the **Calculation Rule** box, select *Inclusive Document-Level*.
    5.  Optional: In the **Tax Agency** box, select the tax agency to which you will report the tax. Leave the box blank if you have not configured this tax agency account yet, or do not plan to prepare a tax report in Acumatica ERP.
4.  On the **Tax Schedule** tab, for every set of dates and rates to be added for the tax, add a row and do the following:
    1.  In the **Start Date** column of the row, specify the date when the tax becomes effective.
    2.  In the **Tax Rate** column, specify the rate of the VAT that generally applies to specific sales.
    3.  In the **Reporting Group** column, select the *Output* reporting group that was defined for the tax agency and intended for this tax.
5.  On the **GL Accounts** tab, perform the following instructions:
    1.  In the **Tax Payable Account** box, select the GL account to accumulate the tax amounts to be paid to the applicable tax agency.
    2.  In the **Tax Payable Subaccount** box, enter the corresponding subaccount.
    3.  In the **Tax Claimable Account** box, select the GL account to accumulate the tax amounts to be claimed from the applicable tax agency.
    4.  In the **Tax Claimable Subaccount** box, enter the number of the corresponding subaccount.
6.  On the form toolbar, click **Save**.

## To Create an Inclusive Document-Level Input VAT {#_5728024c-33f2-4219-9219-c681087831ac .section}

1.  Open the [Taxes](../UserGuide/TX_20_50_00.md) \(TX205000\) form.
2.  On the form toolbar, click **Add New Record**.
3.  On the **Tax Settings** tab, proceed as follows:
    1.  In the **Tax ID** box, type the unique identifier to be used for the tax.
    2.  Optional: In the **Description** box, type a description of the tax, to help users easily identify it.
    3.  In the **Tax Type** box, select *VAT*.
    4.  In the **Calculation Rule** box, select *Inclusive Document-Level*.
    5.  Optional: In the **Tax Agency** box, select the tax agency to which you will report the tax. Leave the box blank if you have not configured this tax agency account yet, or do not plan to prepare a tax report in Acumatica ERP.
4.  On the **Tax Schedule** tab, for every set of dates and rates to be added for the tax, add a row and do the following:
    1.  In the **Start Date** column of the row, specify the date when the tax becomes effective.
    2.  In the **Tax Rate** column, specify the rate of the VAT that generally applies to specific purchases.
    3.  In the **Reporting Group** column, select the *Input* reporting group that was defined for the tax agency and intended for this tax.
5.  On the **GL Accounts** tab, perform the following instructions:
    1.  In the **Tax Payable Account** box, select the GL account to accumulate the tax amounts to be paid to the applicable tax agency.
    2.  In the **Tax Payable Subaccount** box, enter the corresponding subaccount.
    3.  In the **Tax Claimable Account** box, select the GL account to accumulate the tax amounts to be claimed from the applicable tax agency.
    4.  In the **Tax Claimable Subaccount** box, enter the number of the corresponding subaccount.
6.  On the form toolbar, click **Save**.

**Parent topic:**[Value-Added Taxes](../ImplementationGuide/Taxes_Configuring_VAT_Mapref.md)

