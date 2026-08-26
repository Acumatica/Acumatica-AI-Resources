# Invoices with Sales Taxes: Implementation Checklist {#_bb917624-ed6d-47fa-a228-e8c66b72c461 .concept}

To ensure that the system is configured properly for creating an AR invoice with a sales tax applied automatically, make sure that the criteria listed in the table have been met in the system as described.

|Form|Criteria to Check|Notes|
|----|-----------------|-----|
|[Taxes](TX_20_50_00.md) \(TX205000\)|You should create the sales tax that your company uses. The settings for the tax include the tax rate, the tax calculation method, the tax validity period \(if any\), and other required parameters.|For details, see [Sales Taxes: To Create a Sales Tax for Use in AR](../ImplementationGuide/SalesTaxes_Implem_Activity_AR.md).|
|[Tax Zones](TX_20_60_00.md) \(TX206000\)|You should create all needed tax zones and include the taxes applied in the corresponding location in each tax zone. You then associate an appropriate tax zone with each of your customers according to their locations.|For details, see [Tax Zones and Categories: To Review Tax Categories and Create a Tax Zone for Sales Taxes](../ImplementationGuide/TaxZones_and_Categories_SalesTax_Implem_Activity.md).|
|[Tax Categories](TX_20_55_00.md) \(TX205500\)|You should create the needed tax categories for all goods or services \(which are represented as stock items and non-stock items in Acumatica ERP\) that your company sells. For each tax category, you should add all taxes that are applied to the corresponding category of goods and services in all geographical locations where your company conducts business.|For details, see [Tax Zones and Categories: To Review Tax Categories and Create a Tax Zone for Sales Taxes](../ImplementationGuide/TaxZones_and_Categories_SalesTax_Implem_Activity.md).|
|[Vendors](AP_30_30_00.md) \(AP303000\)|For each tax agency to which you will submit tax reports, you should create a vendor account with the **Vendor is Tax Agency** check box selected.|For details, see [Tax Agency: To Set Up a Tax Agency for Sales Taxes](../ImplementationGuide/TaxAgency_SalesTaxes_Implem_Activity.md).|
|[Stock Items](IN_20_25_00.md)\(IN202500\), [Non-Stock Items](IN_20_20_00.md) \(IN202000\)|To calculate tax amounts in the documents in which you specify inventory IDs, you should create stock items \(for goods\) and non-stock items \(for services\) and associate each item with the appropriate tax category.| |
|[Customers](AR_30_30_00.md) \(AR303000\)|You should create needed customers in the Accounts Receivable subledger if they don't already exist. Depending on the geographical location of the sale transaction, different taxes can be applied to the document. To define which taxes are applied in the location of your customer, you should assign the appropriate tax zone to each new or existing customer.| |

## Settings That Affect the Workflow {#section_ob3_fjv_vxb .section}

The following settings and entities should be specified and defined, respectively:

-   The following general ledger settings should be specified on the **Posting Settings** tab of the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form:
    -   Make sure that the **Automatically Post on Release** check box is selected. This setting causes GL batches to be immediately posted after they are released.
    -   Clear the **Generate Consolidated Batches** check box to cause every AR transaction you enter to be posted as an individual batch to the general ledger. \(When this check box is selected, the system consolidates into a single batch all transactions in the same currency posted to the same period for all documents being released.\)
-   The following accounts receivable settings should be specified on the **General Settings** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form:
    -   Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This setting gives the created AR invoices the *On Hold* status.
    -   Clear the **Require Payment Reference on Entry** check box in the **Data Entry Settings** section. This setting means that you do not have to enter a payment reference number in the **Payment Ref.** box when creating an AR invoice on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.
    -   Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section. This setting causes AR invoices to be automatically posted to the general ledger once they are released.
-   On the **Company Details** tab of the [Companies](CS_10_15_00.md) \(CS101500\) form, *Document Amount* is selected in the **Cash Discount Base** box. This setting indicates that the cash discount percent will be applied to the total amount of a document plus the tax amount.

With these settings specified and entities defined, users in your company can record and process documents in Acumatica ERP quickly and accurately, with a minimum of manual actions.

**Parent topic:**[Processing Invoices with Sales Taxes](../UserGuide/Taxes_Processing_Invoice_with_SalesTax_Mapref.md)

