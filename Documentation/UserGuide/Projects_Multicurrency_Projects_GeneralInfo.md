# Multicurrency Projects: General Information {#_0f2b7c35-f61e-497c-99e9-70eddd47e6db .concept}

In Acumatica ERP, you can track projects in the project currency, which can differ from the base currency of the company that manages the project. You can review project costs and revenues both in the project currency and in the base currency. You can also calculate project profitability in both currencies, and present costs to the customer in the customer’s currency, which you can specify as the billing currency. In addition, if the company uses multiple base currencies, you can easily manage multicurrency documents that originate from different company branches.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Configure a project to use multiple currencies
-   Track documents that originate from branches with different base currencies in the scope of a single project
-   Define the exchange rates to be used in projects
-   Process project-related documents in multiple currencies
-   Review and collect project information in different currencies

## Applicable Scenarios { .section}

You use projects with multiple currencies in the following cases:

-   A project is managed in one currency, and related project costs are recorded in other currencies.
-   A project is managed in one currency, and the customer needs to be billed in another currency.
-   A project involves employees that report their expenses in different currencies.
-   A project involves related companies with different base currencies. One of these companies re-bills the project expenses to another company.

## Multiple Currencies in Projects {#section_wwf_ljj_lsb .section}

If the *Multicurrency Projects* and *Multicurrency Accounting* features are enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you can specify different currencies to be used for a project's accounting and its billing as follows:

-   In the **Project Currency** box on the **Summary** tab \(**Project Properties** section\) of the [Projects](PM_30_10_00.md) \(PM301000\) form, you specify the project currency. For a new project, the system fills in this box with the customer's currency, which is specified in the **Currency ID** box on the **Financial** tab of the [Customers](AR_30_30_00.md) \(AR303000\) form. If the customer has no currency defined, the base currency is inserted as the **Project Currency**. On the **Revenue Budget** and **Cost Budget** tabs of the [Projects](PM_30_10_00.md) form, you can enter the project amounts in the project currency only. You can change the project currency if the project has no transactions, commitments, or change orders.
-   In the **Billing Currency** box on the **Summary** tab of the [Projects](PM_30_10_00.md) form, you specify the currency in which the invoices to the customer will be prepared during project billing procedure.

In addition, if the *Multiple Base Currencies* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form, you can specify the base currency of the project in the **Base Currency** box on the **Summary** tab of the [Projects](PM_30_10_00.md) form. If a branch is selected in the **Branch** box on the **Summary** tab \(indicating that the project is related to a particular company branch\), the system verifies that the base currency of the project matches the base currency of the selected branch. You can change the base currency of the project only if no project transactions have been posted to the project yet.

## Currency Rates in Projects {#section_ebq_2tj_lsb .section}

If the project currency differs from the base currency, you can track the project amounts in both the base currency and the project currency. By default, on the **Revenue Budget**, **Cost Budget**, and **Balances** tabs of the [Projects](PM_30_10_00.md) \(PM301000\) form, the system shows the project amounts in the project currency. The system uses the value in the **Budget Currency Rate** box \(in the Summary area\) to calculate project amounts in the base currency.

You can click the exchange rate value in the **Budget Currency Rate** box in the Summary area of the [Projects](PM_30_10_00.md) form. Then in the **Rate Selection** dialog box, which is opened, you can override the exchange rate for the project if the **Enable Rate Override** check box is selected on the **General** tab \(**Financial Settings** section\) of the [Customers](AR_30_30_00.md) form.

If you click the **View Base** button in the **Budget Currency Rate** box in the Summary area, the system shows the budgeted amounts and balances in the base currency converted based on the rate shown in the **Budget Currency Rate** box. To show the amounts in the project currency, you click the **View Cury** button in the **Budget Currency Rate** box in the Summary area.

**Attention:** If the currency of project documents is different from the project currency, the system converts the currency rates by using direct rates only. Direct rates are those specified in the **Currency Rate** column on the **Currency Rate Entry** tab of the [Currency Rates](CM_30_10_00.md) \(CM301000\) form.

The rate shown in the **Rate Reciprocal** box when you enter a rate for translating Currency 1 to Currency 2 cannot be used for the conversion of amounts from Currency 2 to Currency 1. This is because **Rate Reciprocal**, which is calculated automatically, may be different from the direct rate of Currency 2 to Currency 1. If this is the case, there is no way for the system to determine which of the rates should be used for conversion.

## Project Billing {#section_qkf_yjj_lsb .section}

During project billing, the system creates pro forma or accounts receivable invoices in the billing currency of the project, which is specified in the **Billing Currency** box on the **Summary** tab \(**Billing and Allocation Settings** section\) of the [Projects](PM_30_10_00.md) \(PM301000\) form.

In the created pro forma invoice on the [Pro Forma Invoices](PM_30_70_00.md) \(PM307000\) form or in the accounts receivable invoice on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, the system uses the default exchange rate type of the customer and customer location that are selected in the document to determine the exchange rate for calculating the billing amounts in the base currency. All the invoice amounts can be reviewed in both the billing currency and the base currency.

You can override the exchange rate for an invoice if for the customer, the **Enable Rate Override** check box is selected on the **General** tab \(**Financial Settings** section\) of the [Customers](AR_30_30_00.md) \(AR303000\) form.

**Parent topic:**[Managing Multicurrency Projects](../UserGuide/Projects_Multicurrency_Projects_Mapref.md)

