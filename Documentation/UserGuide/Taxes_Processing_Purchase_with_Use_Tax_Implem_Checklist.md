# Purchases with Use Taxes: Implementation Checklist {#_8945de4b-100e-42b7-8301-89bb186543d6 .concept}

To ensure that the system is configured properly for creating an AP bill with a use tax applied automatically, make sure that the criteria listed in the table have been met in the system as described.

|Form|Criteria to Check|Notes|
|----|-----------------|-----|
|[Taxes](TX_20_50_00.md) \(TX205000\)|You should create the use tax to be applied to your documents. The settings for the tax include the tax rate, the tax calculation method, the tax validity period \(if any\), and other required parameters.|For details, see [Use Taxes: Implementation Activity](../ImplementationGuide/Taxes_Configuring_Use_Tax_Activity.md).|
|[Tax Zones](TX_20_60_00.md)\(TX206000\)|You should create all needed tax zones and include the taxes applied in the corresponding location in each tax zone. You then associate an appropriate tax zone with each of your vendors according to their locations.|For details, see [Use Taxes: Implementation Activity](../ImplementationGuide/Taxes_Configuring_Use_Tax_Activity.md).|
|[Tax Categories](TX_20_55_00.md) \(TX205500\)|You should create the needed tax categories for all goods or services \(which are represented as stock items and non-stock items in Acumatica ERP\) that your company buys. For each tax category, you should add all taxes that are applied to the corresponding category of goods and services in all geographical locations where your company conducts business.|For details, see [Use Taxes: Implementation Activity](../ImplementationGuide/Taxes_Configuring_Use_Tax_Activity.md).|
|[Vendors](AP_30_30_00.md) \(AP303000\)|For each tax agency to which you will submit tax reports, you should create a vendor account with the **Vendor is Tax Agency** check box selected.|For details, see [Tax Agency: To Set Up a Tax Agency for Sales Taxes](../ImplementationGuide/TaxAgency_SalesTaxes_Implem_Activity.md).|
|[Stock Items](IN_20_25_00.md)\(IN202500\), [Non-Stock Items](IN_20_20_00.md) \(IN202000\)|To calculate tax amounts in the documents in which you specify inventory IDs, you should create stock items \(for goods\) and non-stock items \(for services\) and associate each item with the appropriate tax category.| |
|[Vendors](AP_30_30_00.md) \(AP303000\)|You should create needed vendors in the accounts payable subledger if they don't already exist. Depending on the geographical location of the purchase transaction, you must assign an appropriate tax zone to the vendor.| |

## Settings That Affect the Workflow {#section_snk_fjv_vxb .section}

The following settings and entities should be specified and defined, respectively:

-   The following general ledger settings should be specified on the **Posting Settings** tab of the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form:
    -   Make sure that the **Automatically Post on Release** check box is selected. This setting causes GL batches to be immediately posted after they are released.
    -   Clear the **Generate Consolidated Batches** check box to cause every AP transaction you enter to be posted as an individual batch to the general ledger. \(When this check box is selected, the system consolidates into a single batch all transactions in the same currency posted to the same period for all documents being released.\)
-   The following accounts payable settings should be specified on the **General Settings** tab of the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form:
    -   Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This setting gives the created AP bills the *On Hold* status.
    -   Clear the **Require Vendor Reference** check box in the **Data Entry Settings** section. This setting means that you do not have to enter a payment reference number in the **Vendor Ref.** box when creating an AP bill on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.
    -   Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section. This setting causes AP bills to be automatically posted to the general ledger once they are released.

With these settings specified and entities defined, users in your company can record and process documents in Acumatica ERP quickly and accurately, with a minimum of manual actions.

**Parent topic:**[Processing Purchases with Use Taxes](../UserGuide/Taxes_Processing_Purchase_with_Use_Tax_Mapref.md)

