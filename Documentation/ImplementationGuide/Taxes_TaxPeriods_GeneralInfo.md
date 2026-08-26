# Tax Periods: General Information {#_fdc10086-8449-47cc-b7fc-b0162d71501d .concept}

Each company within one tenant of Acumatica ERP may have a certain level of autonomy or can be a separate legal entity. Companies may have different durations of tax periods and even different durations of tax years. Thus, sometimes for a particular company, you may need to do one of the following:

-   Set up an individual tax period duration
-   Change the tax period duration for particular reasons \(for example, the company income has changed, so the tax periods have changed from a month to a quarter\)
-   Configure a short tax year

In Acumatica ERP, you can configure a tax year for each company and tax agency combination individually, specify the particular tax period type, and set up a short tax year. Each company can prepare, void, and release its own tax reports and close the company's own tax periods separately from one another.

## Learning Objectives { .section}

From reading the topics in this chapter and completing the implementation activity, you will learn how to configure tax periods for a particular combination of company and tax agency.

## Applicable Scenarios { .section}

You configure tax years and tax periods for a particular company if you want this company to have the settings of tax periods different from those specified as the default ones for the tax agency.

## Specifying the Default Tax Period Type { .section}

The default tax period type is specified for each tax agency in the **Default Tax Period Type** box on the **Tax Agency** tab of the [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form. The system uses this tax period by default for each newly added company and branch. You can override this setting for a particular tax agency and company by using the [Tax Periods](../UserGuide/TX_20_70_00.md) \(TX207000\) form.

## Setting Up Tax Periods { .section}

On the [Tax Periods](../UserGuide/TX_20_70_00.md) \(TX207000\) form, you can set up tax periods for the selected company and tax agency. The duration of these tax periods may differ from the default tax period type specified for a tax agency on the [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form.

**Note:** You can change the tax period type only if all of the periods of the selected year have the *Open* status.

To set up tax periods for a particular company, in the **Company** and **Tax Agency** boxes in the Summary area of the [Tax Periods](../UserGuide/TX_20_70_00.md) form, you select the required company and tax agency. In the **Tax Year** box, specify the tax year for which you are going to configure the periods. Then in the **Tax Period Type** box, select the required type of a tax period. Once you select a tax period type, the system displays the list of tax periods in the table on the form.

**Note:** By default, a legal entity has a tax year that starts on January 1, has a duration of one calendar year, and has the period duration specified for the tax agency on the [Vendors](../UserGuide/AP_30_30_00.md) form. If you do not need to modify these default settings, you can proceed with tax report preparation without performing any additional configuration on the [Tax Periods](../UserGuide/TX_20_70_00.md) form.

For details, see [Tax Periods: Implementation Activity](TaxPeriods_Implem_Activity.md).

## Viewing Tax Periods { .section}

On the [Tax Periods](../UserGuide/TX_20_70_00.md) \(TX207000\) form, you can select the needed company, tax agency, and tax year in the Summary area. Once you do, the system displays the list of tax periods in the table so that you can review tax periods and their statuses for the current tax year and or a past tax year. In the table, you can also view the net tax amounts for the closed tax periods.

## Shortening a Tax Year { .section}

In Acumatica ERP, you can configure a short tax year—a tax year of a duration that is less than 12 months. On the [Tax Periods](../UserGuide/TX_20_70_00.md) \(TX207000\) form, once you select the required combination of the company and tax agency, you select a needed tax year in the **Tax Year** box, and, next to this box, you select the **Short Tax Year** check box. Once you do, the **Add Period** and **Delete Period** buttons become available on the table toolbar so that you can delete and add periods as needed. You save this modified tax year configuration by clicking **Save** on the form toolbar.

**Note:** Only a tax year for which at least one period has the *Open* status can be shortened.

**Parent topic:**[Tax Periods](../ImplementationGuide/Taxes_ConfiguringTaxPeriods_Mapref.md)

