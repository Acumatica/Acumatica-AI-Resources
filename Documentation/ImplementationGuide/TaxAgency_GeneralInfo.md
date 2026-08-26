# Tax Agency: General Information {#_0f36ec83-2b1a-41cc-9c87-7d6b59e4b51f .concept}

If your company buys or sells goods or services, it must report the appropriate taxes to the responsible tax agencies by filing tax reports regularly. The tax authorities or agencies can exist at multiple levels. For example, in most European countries, the tax rates are defined at the federal level and are the same in all territories, and in other countries, there can be many zones with different taxes; this depends on the taxation system of the country. Thus, the tax agencies can have different reporting periods and different tax rates. You may need to report taxes to different tax agencies. For each tax agency, you need to create a separate tax agency account in Acumatica ERP and configure the applicable tax report.

Some taxes \(such as custom duties on imported goods\) you pay directly to the tax agencies or to the vendors authorized to collect the taxes when you receive an invoice for the taxes from a tax agency or a vendor. The taxes can be included into a tax report to be claimed from the tax authorities.

The following sections of this topic describe how you establish the general settings for a tax agency and how you set up a tax agency.

## Learning Objectives { .section}

In this chapter, you will learn how to create a tax agency in Acumatica ERP.

## Applicable Scenarios { .section}

You can configure a tax agency account in Acumatica ERP to cover either of the following purposes:

-   You want to set up tax reporting for the tax agency. For such an agency, you configure an appropriate tax report and set up automatic accumulation of tax amounts in the tax report.
-   You want to pay taxes directly to the tax agency. \(For certain taxes, such as the customs duties on imported goods, instead of filing tax reports, you must pay the taxes directly to the tax agency.\) In this case, you need to create the tax bills by using the [Tax Bills and Adjustments](../UserGuide/TX_30_30_00.md) \(TX303000\) form, and then pay the billable amounts to the vendor \(which is a tax agency\).

## Definition of a Tax Agency Account { .section}

In Acumatica ERP, you define a tax agency as a vendor \(because you make payments to it\) by using the [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form. On this form, you indicate that the vendor is a tax agency by selecting the **Vendor Is Tax Agency** check box, which causes the **Tax Agency** tab to appear on the form. On this tab, you should specify the specific settings for the tax agency.

For details, see [Tax Agency: To Set Up a Tax Agency for Sales Taxes](TaxAgency_SalesTaxes_Implem_Activity.md) and [Tax Agency: To Set Up a Tax Agency for VAT](TaxAgency_VAT_Implem_Activity.md).

## Preparation of a Tax Agency for Tax Reporting { .section}

For each tax agency to which you will report taxes, you specify the following tax report-related settings on the **Tax Agency** tab of the [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form:

-   **Default Tax Period Type**: You can specify the reporting period \(*Half a Month*, *Month*, *Two Months*, *Quarter*, *Half a Year*, *Year*, or *Financial Period*\). In many states of the United States, the reporting frequency depends on the amount of tax you collect and is subject to change if this amount significantly changes in a specific period.

    **Important:** You can change the period type after all the year's reporting periods are closed.

-   GL Accounts: You can specify the following GL accounts, which will be used for posting tax-related entries:
    -   **Tax Payable Account**: This account accumulates the tax amounts that should be paid to the tax agency \(for example, tax amounts resulting from sales that are subject to sales tax\). The account selected in this box should be configured as a control account for the taxes subledger. For more information on control accounts, see [Control Accounts: General Information](../UserGuide/Finance_Control_Accounts_GeneralInfo.md).
    -   **Tax Claimable Account**: This account accumulates the tax amounts that should be claimed from the tax agency \(for example, tax amounts resulting from purchases that are subject to VAT\). The account selected in this box should be configured as a control account for the taxes subledger. For more information on control accounts, see [Control Accounts: General Information](../UserGuide/Finance_Control_Accounts_GeneralInfo.md).
    -   **Tax Expense Account**: This account accumulates the tax-related expenses for a particular agency \(for example, tax amounts resulting from purchases that are subject to use tax\).
-   **Tax Report Precision**: You can specify the maximum number \(0 through 9\) of decimal places in the values \(tax amounts and taxable amounts\) gathered in the tax report lines. Alternatively, you can use the decimal precision of the reporting currency by selecting the **Use Currency Precision** check box \(which makes the **Tax Report Precision** box unavailable\).
-   **Tax Report Rounding**: You can specify the rounding rule for adjusting the values gathered in the tax report, so they will be rounded to the number of decimal places according to the defined precision. To do this, select one of the following options: *Mathematical*, *Ceiling*, or *Floor*. For details, see [Rounding of AP Document Amounts: General Information](../UserGuide/Finance_AP_Doc_Amount_Rounding_GeneralInfo.md).

After you have specified and saved the settings on the **Tax Agency** tab of the [Vendors](../UserGuide/AP_30_30_00.md) form, you configure the tax-reporting functionality for the tax agency by completing the following tasks:

1.  On the [Tax Periods](../UserGuide/TX_20_70_00.md) \(TX207000\) form, you specify the date when the tax year should start for the selected tax agency. If the tax year is already configured for the tax agency, you can change the start date of the next tax year, so that the current tax year will be shortened.

    To change the start date, you should select the required date; your current tax year will end one day before the specified date. For example, suppose that the tax year currently configured in your system ends on December 31, 2026 and that you specify the start date of the next tax year as August 1, 2026. After you save this change, your current tax year will end on July 31, 2026, and will consist of seven periods.

2.  On the [Reporting Settings](../UserGuide/TX_20_51_00.md) \(TX205100\) form, you configure the tax report for the particular tax agency. For details, see [Tax Report](Taxes_TaxReport_Mapref.md).
3.  On the [Tax Zones](../UserGuide/TX_20_60_00.md) \(TX206000\) and [Tax Categories](../UserGuide/TX_20_55_00.md) \(TX205500\) forms, you configure the tax zone \(or zones\) that will hold the taxes reported to the tax agency and the tax categories to which these taxes will be assigned. For details, see [Tax Zones and Categories: General Information](TaxZones_and_Categories_GeneralInfo.md).
4.  On the [Taxes](../UserGuide/TX_20_50_00.md) \(TX205000\) form, you create all taxes applied by this tax agency with their effective rates and effective dates \(if you haven't already created these taxes\). For each of these taxes, you select the tax agency account in the **Tax Agency ID** box of the Summary area.
5.  You set up the tax calculation. For details, see [Tax Calculation Methods: General Information](../UserGuide/Taxes_Selecting_Tax_Calc_Methods_GeneralInfo.md).

Thus, the tax report configured for a specific tax agency will accumulate only the taxes defined for that tax agency.

**Parent topic:**[Tax Agency](../ImplementationGuide/Taxes_TaxAgency_Mapref.md)

