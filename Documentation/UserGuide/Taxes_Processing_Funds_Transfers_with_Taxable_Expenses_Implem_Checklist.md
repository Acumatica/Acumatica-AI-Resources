# Funds Transfers with Taxable Fees: Implementation Checklist {#_8e6474f4-c7f8-45a0-b8da-09a3328ad1ba .concept}

The following sections provide details you can use to ensure that the system is configured properly for performing funds transfers with taxable fees, and to understand \(and change, if needed\) the settings that affect the workflow of funds transfers processing.

## Implementation Checklist {#section_c3j_fjv_vxb .section}

We recommend that before you initially perform funds transfers, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|Make sure that the *Standard Financials* feature has been enabled.|
|[Chart of Accounts](GL_20_25_00.md) \(GL202500\)|Check whether the necessary accounts have been created.|
|[Entry Types](CA_20_30_00.md) \(CA203000\)|Make sure that a needed entry type has been created.|
|[Cash Accounts](CA_20_20_00.md) \(CA202000\)|Check whether the necessary cash accounts have been configured and the *Disbursement* entry type has been added to the cash accounts on the **Entry Types** tab.|
|[Company Financial Calendar](GL_20_11_00.md) \(GL201100\)|Make sure that the periods during which funds transfers may occur have a status of *Open*.

 You can generate the necessary periods on the [Master Financial Calendar](GL_20_10_00.md) \(GL201000\) form.

 For details on opening financial periods, see [Opening Financial Periods: Process Activity](Finance_OpeningFinPeriods_Process_Activity.md).

|
|[Taxes](TX_20_50_00.md) \(TX205000\)|Make sure that the taxes that your company uses have been created. The settings for the tax include the tax rate, the tax calculation method, the tax validity period \(if any\), and other required parameters.

 For an example of creating a sales tax, see [Sales Taxes: To Create a Sales Tax for Use in AR](../ImplementationGuide/SalesTaxes_Implem_Activity_AR.md).

|
|[Tax Zones](TX_20_60_00.md) \(TX206000\)|Make sure that the needed tax zone has been created and include the needed tax, as described in [Tax Zones and Categories: To Review Tax Categories and Create a Tax Zone for Sales Taxes](../ImplementationGuide/TaxZones_and_Categories_SalesTax_Implem_Activity.md).|
|[Tax Categories](TX_20_55_00.md) \(TX205500\)|Make sure that the needed tax category has been created and includes the needed tax, as described in [Tax Zones and Categories: To Review Tax Categories and Create a Tax Zone for Sales Taxes](../ImplementationGuide/TaxZones_and_Categories_SalesTax_Implem_Activity.md).|

## Other Settings That Affect the Workflow {#_d12da6f9-e39c-4312-9d70-4acc75556d96 .section}

The following settings on the [Cash Management Preferences](CA_10_10_00.md) \(CA101000\) form can affect the processing workflow:

-   If the **Automatically Post to GL on Release** check box is selected, the system posts transactions to the general ledger when cash management documents are released. If this check box is cleared, you have to post the batch after you release the document.
-   If the **Hold Transactions on Entry** check box is selected in the **Data Entry Settings** section, when new transactions and funds transfers are entered, they are assigned the *On Hold* status. If the **Hold Transactions on Entry** check box is cleared, the transactions and funds transfers are assigned the *Balanced* status.
-   If the **Require Document Ref. Nbr. on Entry** check box is selected, you must fill in the **Document Ref.** box on the [Funds Transfers](CA_30_10_00.md) \(CA301000\) form for new funds transfers. If this check box is cleared, you can decide whether to leave the **Document Ref.** box blank or fill it in.

## Testing of Settings {#section_l3j_fjv_vxb .section}

To make sure that all settings are configured correctly, we recommend that you perform funds transfers with taxable fees by performing similar steps to those described in [Funds Transfers with Taxable Fees: Process Activity](Taxes_Processing_Funds_Transfers_with_Taxable_Expenses_Activity.md).

**Parent topic:**[Processing Funds Transfers with Taxable Fees](../UserGuide/Taxes_Processing_Funds_Transfers_with_Taxable_Expenses_Mapref.md)

