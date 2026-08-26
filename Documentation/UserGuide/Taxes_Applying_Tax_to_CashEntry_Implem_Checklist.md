# Cash Entries with Taxes: Implementation Checklist {#_a5aa1ed5-bab8-4ef6-90eb-8b402ddda0d2 .concept}

To ensure that the system is configured properly for creating a cash entry a sales tax applied automatically, make sure that the criteria listed in the table have been met in the system as described.

|Form|Criteria to Check|Notes|
|----|-----------------|-----|
|[Enable/Disable Features](CS_10_00_00.md)\(CS100000\)|If you are going to apply a VAT to a cash entry, make sure that the *VAT Reporting* feature has been enabled.| |
|[Taxes](TX_20_50_00.md) \(TX205000\)|You should create the sales tax or VAT that your company uses. The settings for the tax include the tax rate, the tax calculation method, the tax validity period \(if any\), and other required parameters.|For details, see [Sales Taxes: To Create a Sales Tax for Use in AR](../ImplementationGuide/SalesTaxes_Implem_Activity_AR.md) and [Value-Added Taxes: To Create a General VAT and Exempt VAT](../ImplementationGuide/Taxes_Configuring_VAT_Impem_Activity_General_VAT.md).|
|[Tax Zones](TX_20_60_00.md)\(TX206000\)|You should create all needed tax zones and include the taxes applied in the corresponding location in each tax zone. You then associate an appropriate tax zone with each of your vendors according to their locations.|For details, see [Tax Zones and Categories: To Review Tax Categories and Create a Tax Zone for Sales Taxes](../ImplementationGuide/TaxZones_and_Categories_SalesTax_Implem_Activity.md) and [Tax Zones and Categories: To Create a Tax Category and Tax Zone for VAT](../ImplementationGuide/TaxZones_and_Categories_VAT_Implem_Activity.md).|
|[Tax Categories](TX_20_55_00.md) \(TX205500\)|You should create the needed tax categories for all goods or services \(which are represented as stock items and non-stock items in Acumatica ERP\) that your company buys. For each tax category, you should add all taxes that are applied to the corresponding category of goods and services in all geographical locations where your company conducts business.|For details, see [Tax Zones and Categories: To Review Tax Categories and Create a Tax Zone for Sales Taxes](../ImplementationGuide/TaxZones_and_Categories_SalesTax_Implem_Activity.md) and [Tax Zones and Categories: To Create a Tax Category and Tax Zone for VAT](../ImplementationGuide/TaxZones_and_Categories_VAT_Implem_Activity.md).|
|[Vendors](AP_30_30_00.md) \(AP303000\)|For each tax agency to which you will submit tax reports, you should create a vendor account with the **Vendor is Tax Agency** check box selected.|For details, see [Tax Agency: To Set Up a Tax Agency for Sales Taxes](../ImplementationGuide/TaxAgency_SalesTaxes_Implem_Activity.md) and [Tax Agency: To Set Up a Tax Agency for VAT](../ImplementationGuide/TaxAgency_VAT_Implem_Activity.md).|
|[Stock Items](IN_20_25_00.md)\(IN202500\), [Non-Stock Items](IN_20_20_00.md) \(IN202000\)|To calculate tax amounts in the documents in which you specify inventory IDs, you should create stock items \(for goods\) and non-stock items \(for services\) and associate each item with the appropriate tax category.| |
|[Entry Types](CA_20_30_00.md) \(CA203000\)|An entry type for taxable sales must be available in the system.| |
|[Cash Accounts](CA_20_20_00.md)\(CA202000\)|The entry type for taxable sales must be assigned to the needed tax account. This entry type must be assigned the needed tax zone.| |

## Settings That Affect the Workflow {#section_tw3_fjv_vxb .section}

The following settings and entities should be specified and defined, respectively:

-   The following general ledger settings should be specified on the **Posting Settings** tab of the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form:
    -   Make sure that the **Automatically Post on Release** check box is selected. This setting causes GL batches to be immediately posted after they are released.
    -   Clear the **Generate Consolidated Batches** check box to cause every AP transaction you enter to be posted as an individual batch to the general ledger. \(When this check box is selected, the system consolidates into a single batch all transactions in the same currency posted to the same period for all documents being released.\)

With these settings specified and entities defined, users in your company can record and process documents in Acumatica ERP quickly and accurately, with a minimum of manual actions.

**Parent topic:**[Processing Cash Entries with Taxes](../UserGuide/Taxes_Applying_SalesTax_to_CashEntry_Mapref.md)

