# Tax Periods: Synchronization with Financial Periods {#_5f65c3a9-c160-4876-b7dd-ac409492e58b .concept}

Acumatica ERP supports automatic synchronization of tax periods with financial periods. The tax periods for which *Financial Periods* is selected in the **Tax Period Type** box on the [Tax Periods](../UserGuide/TX_20_70_00.md) \(TX207000\) form can be synchronized with financial periods in the company calendar, regardless of the status of tax periods—*Prepared*, *Open*, or *Closed*.

When an administrative user changes the user-defined financial periods on the [Master Financial Calendar](../UserGuide/GL_20_10_00.md) \(GL201000\) or on the [Company Financial Calendar](../UserGuide/GL_20_11_00.md) \(GL201100\) form if the *Multiple Calendar Support* feature is enabled, if *Financial Periods* is selected in the **Tax Period Type** box for the company specified in the **Company** box and the tax agency selected in the **Tax Agency** box, you should update tax periods based on the updated financial calendar in the following ways.

## Correcting the Tax Period Structure for Tax Periods to be Prepared { .section}

On the [Prepare Tax Report](../UserGuide/TX_50_10_00.md) \(TX501000\) form, the system displays an error message if the start and end dates of the tax period to be prepared differ from those of the corresponding financial periods for the selected company or if the financial periods have been deleted.

To correct the tax period structure, do the following:

1.  Open the [Tax Periods](../UserGuide/TX_20_70_00.md) \(TX207000\) form.
2.  In the **Company** box, select the needed company.
3.  In the **Tax Agency** box, select the needed tax agency.
4.  In the **Tax Year** box, select the tax year for which you want to correct the period structure.
5.  In the **Tax Period Type** box, make sure that *Financial Period* is selected.
6.  On the More menu \(under **Period Management**\), click **Synchronize Periods with GL**.

## Correcting the Tax Period Structure for Tax Periods to be Released { .section}

On the [Release Tax Report](../UserGuide/TX_50_20_00.md) \(TX502000\) form, if the start and end dates of the tax period to be released differ from the corresponding financial period of the selected company or if the financial periods have been deleted, the system displays an error message.

To correct the tax period structure, do the following:

1.  Open the [Release Tax Report](../UserGuide/TX_50_20_00.md) \(TX502000\) form.
2.  In the Summary area, specify the settings of the needed tax report—**Company**, **Tax Agency**, **Tax Period**, and **Revision**.
3.  On the form toolbar, click **Void Report** to void the tax report.

    For more details on voiding a tax report, see [Voiding a Tax Report for Sales Taxes](../UserGuide/Taxes_Voiding_a_Tax_Report_Mapref.md).

4.  Open the [Tax Periods](../UserGuide/TX_20_70_00.md) \(TX207000\) form.
5.  In the **Company** box, select the needed company.
6.  In the **Tax Agency** box, select the needed tax agency.
7.  In the **Tax Year** box, select the tax year for which you want to correct the period structure.
8.  In the **Tax Period Type** box, make sure that *Financial Period* is selected.
9.  On the More menu \(under **Period Management**\), click **Synchronize Periods with GL**.

**Parent topic:**[Tax Periods](../ImplementationGuide/Taxes_ConfiguringTaxPeriods_Mapref.md)

