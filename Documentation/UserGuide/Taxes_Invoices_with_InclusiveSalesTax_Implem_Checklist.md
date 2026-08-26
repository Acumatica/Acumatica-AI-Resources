# Invoices with Inclusive Sales Taxes: Implementation Checklist {#_df33611d-3a0a-4afd-9bf7-66a626dd9dd2 .concept}

The following sections provide details you can use to ensure that the system is configured properly for processing invoices with an inclusive sales tax, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist {#section_kk3_fjv_vxb .section}

We recommend that before you initially process invoices with an inclusive sales tax, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Tasks to Perform|
|----|----------------|
|[Taxes](TX_20_50_00.md) \(TX205000\)|You should create each inclusive sales tax that your company uses. The settings for each tax include the tax rate, the tax calculation method, and the tax validity period \(if any\). For details, see [Invoices with Inclusive Sales Taxes: Implementation Activity](Taxes_Invoices_with_InclusiveSalesTax_Implem_Activity.md).|
|[Tax Zones](TX_20_60_00.md)\(TX206000\)|You should create all needed tax zones and include the taxes that should be applied in the corresponding location in each tax zone. You then associate an appropriate tax zone with each of your customers according to their locations. For details, see [Tax Zones and Categories: To Review Tax Categories and Create a Tax Zone for Sales Taxes](../ImplementationGuide/TaxZones_and_Categories_SalesTax_Implem_Activity.md).|
|[Tax Categories](TX_20_55_00.md) \(TX205500\)|You should create the needed tax categories for all goods or services \(which are represented as stock items and non-stock items in Acumatica ERP\) that your company sells. For each tax category, you should add all taxes that should be applied to the corresponding category of goods and services in all geographical locations where your company conducts business. For details, see [Tax Zones and Categories: To Review Tax Categories and Create a Tax Zone for Sales Taxes](../ImplementationGuide/TaxZones_and_Categories_SalesTax_Implem_Activity.md).|
|[Vendors](AP_30_30_00.md) \(AP303000\)|For each tax agency to which you will submit tax reports, you should create a vendor account with the **Vendor is Tax Agency** check box selected.|
|[Stock Items](IN_20_25_00.md) \(IN202500\), [Non-Stock Items](IN_20_20_00.md) \(IN202000\)|To calculate tax amounts in the documents in which you specify inventory IDs, you should create stock items \(for goods\) and non-stock items \(for services\) and associate each item with the appropriate tax category.|
|[Customers](AR_30_30_00.md) \(AR303000\)|You should create needed customers if they don't already exist. Depending on the geographical location of the sale transaction, different taxes can be applied to the document. To define which taxes are applied in the location of your customer, you should assign the appropriate tax zone to each new or existing customer.|
|[Chart of Accounts](GL_20_25_00.md) \(GL202500\)|You should make sure that the following GL accounts that you will use for tax reporting purposes have been added:-   A liability account that will be used for accumulating the tax amounts to be paid to the tax agency in a tax period.
-   Expense accounts that will be used to record tax adjustments and expenses for the tax agency, and tax rounding gains and losses.

|

## Other Settings That Affect the Workflow {#section_mk3_fjv_vxb .section}

You can affect the workflow of processing invoices with an inclusive sales tax by specifying additional settings as follows:

-   On the **Posting Settings** tab of the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form, specify the following general ledger settings:
    -   To cause GL batches to be immediately posted after they are released, select the **Automatically Post on Release** check box.
    -   Clear the **Generate Consolidated Batches** check box to cause every AR transaction you enter to be posted as an individual batch to the general ledger. \(When this check box is selected, the system consolidates into a single batch all transactions in the same currency posted to the same period for all documents being released.\)
    -   In the **Rounding Settings** section, specify a rounding limit in the **Rounding Limit** box. This setting causes the system to post any discrepancy between the document-level tax and the total of tax amount of each document line, which is under the specified value to a special account.
-   On the **General Settings** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form, specify the accounts receivable settings as follows:
    -   To give AR invoices the *On Hold* status when they are created, select the **Hold Documents on Entry** check box in the **Data Entry Settings** section.
    -   Select the **Require Payment Reference on Entry** check box in the **Data Entry Settings** section, if you want users to enter a payment reference number in the **Payment Ref.** box when they create an AR invoice on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.
    -   Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section. This setting causes AR invoices to be automatically posted to the general ledger once they are released.
-   On the [Tax Preferences](TX_10_30_00.md) \(TX103000\) form, specify the following tax settings:
    -   In the **Tax Rounding Gain Account** box, an account where the system will post amounts resulting from tax rounding gains
    -   In the **Tax Rounding Loss Account** box, an account where the system will post amounts resulting from tax rounding losses

## Testing of Settings {#section_ok3_fjv_vxb .section}

To make sure that all settings are configured correctly, we recommend that you process invoices with an inclusive sales tax by performing instructions similar to those described in [Invoices with Inclusive Sales Taxes: Process Activity](Taxes_Invoices_with_InclusiveSalesTax_Process_Activity.md).

**Parent topic:**[Processing Invoices with Inclusive Sales Taxes](../UserGuide/Taxes_Invoices_with_InclusiveSalesTax_Mapref.md)

