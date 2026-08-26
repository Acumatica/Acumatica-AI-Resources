# Purchases with Inclusive Sales Taxes: Implementation Checklist {#_001f4ac3-4ff5-4f38-b0db-b94d80fd6cf7 .concept}

The following sections provide details you can use to ensure that the system is configured properly for processing a purchase with an inclusive sales tax applied, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist {#section_nfk_fjv_vxb .section}

We recommend that before you initially process a purchase of taxable items, you make sure the needed settings have been specified and entities have been created, as summarized in the following checklist.

|Form|Tasks to Perform|
|----|----------------|
|[Taxes](TX_20_50_00.md) \(TX205000\)|Make sure that each inclusive document-level sales tax your company intends to use have been created as described in [Invoices with Inclusive Sales Taxes: Implementation Activity](Taxes_Invoices_with_InclusiveSalesTax_Implem_Activity.md).|
|[Tax Preferences](TX_10_30_00.md) \(TX103000\)|Make sure that the tax rounding gain and loss accounts have been defined; the system will post tax rounding gains and losses that may occur when posting tax amounts to these accounts.|
|[Stock Items](IN_20_25_00.md) \(IN202500\)|Make sure that the needed stock items have been configured.|

## Other Settings That Affect the Workflow {#section_pfk_fjv_vxb .section}

You can affect the workflow of processing purchases with an inclusive sales tax by specifying additional settings as follows:

-   On the **Posting Settings** tab of the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form, specify the following general ledger settings:
    -   To cause GL batches to be immediately posted after they are released, select the **Automatically Post on Release** check box.
    -   Clear the **Generate Consolidated Batches** check box to cause every AP transaction you enter to be posted as an individual batch to the general ledger. \(When this check box is selected, the system consolidates into a single batch all transactions in the same currency posted to the same period for all documents being released.\)
    -   In the **Rounding Settings** section, specify a rounding limit in the **Rounding Limit** box. This setting causes the system to post any discrepancy between the document-level tax and the total of tax amount of each document line, which is under the specified value to a special account.
-   On the **General Settings** tab of the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form, specify the following accounts payable preferences:
    -   To give AP bills the *On Hold* status when they are created, select the **Hold Documents on Entry** check box in the **Data Entry Settings** section.
    -   Select the **Require Vendor Reference** check box in the **Data Entry Settings** section, if you want users to enter a payment reference number in the **Vendor Ref.** box when creating an AP bill on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.
    -   Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section. This setting causes AP bills to be automatically posted to the general ledger once they are released.
-   On the [Tax Preferences](TX_10_30_00.md) \(TX103000\) form, specify the following tax settings:
    -   In the **Tax Rounding Gain Account** box, an account where the system will post amounts resulting from tax rounding gains
    -   In the **Tax Rounding Loss Account** box, an account where the system will post amounts resulting from tax rounding losses

## Testing of Settings {#section_rfk_fjv_vxb .section}

To make sure that all settings are configured correctly, we recommend that you process a purchase with an inclusive sales tax by performing instructions similar to those described in [Purchases with Inclusive Sales Taxes: Process Activity](Taxes_Purchases_with_InclusiveSalesTax_Process_Activity.md).

**Parent topic:**[Processing Purchases with Inclusive Sales Taxes](../UserGuide/Taxes_Purchases_with_InclusiveSalesTax_Mapref.md)

