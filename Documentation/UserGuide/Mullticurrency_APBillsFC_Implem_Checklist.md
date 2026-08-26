# AP Bills in Foreign Currencies: Implementation Checklist {#_eb30bd09-8bbb-4e7f-a28d-9fea9f76ffce .concept}

The following sections provide details you can use to ensure that the system is configured properly for processing AP bills in a foreign currency, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist {#section_mxx_3jv_vxb .section}

We recommend that before you initially process AP bills in a foreign currency, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Steps to Perform|
|----|----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|Make sure that the *Standard Financials* and *Multicurrency Accounting* features have been enabled.

 For details on configuring the multicurrency functionality, see [Multicurrency Functionality: Implementation Activity](../ImplementationGuide/config_Multicurrency_Basic_Implem_Activity.md).

|
|[Vendors](AP_30_30_00.md) \(AP303000\)|Make sure that the vendor accounts for the vendors for which you will create AP documents have been defined.|
|[Currency Rates](CM_30_10_00.md) \(CM301000\)|Make sure that the effective currency rate for the currency of the AP document has been defined.

 For details, see [Configuration of Rate Types and Rates: To Configure Rates](../ImplementationGuide/config_Multicurrency_Configuring_Rates_Activity1.md) and [Configuration of Rate Types and Rates: To Set Up Refreshing of Rates](../ImplementationGuide/config_Multicurrency_Configuring_Rates_Activity2.md).

|

## Other Settings That Affect the Workflow {#section_sxx_3jv_vxb .section}

You can affect the workflow of processing AP bills by specifying additional settings as follows:

-   On the **Posting Settings** tab of the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form:
    -   To cause GL batches to be immediately posted after they are released, select the **Automatically Post on Release** check box.
    -   To cause every AP transaction you enter to be posted as an individual batch to the general ledger, clear the **Generate Consolidated Batches** check box. If this check box is selected, the system consolidates into a single batch all transactions in the same currency posted to the same period for all documents being released.
-   On the **General Settings** tab of the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form:
    -   To cause all created AP bills to have the *Balanced* status, clear the **Hold Documents on Entry** check box in the **Data Entry Settings** section. If this check box is selected, the created AP bills are assigned the *On Hold* status.
    -   To make entering a vendor reference number in the **Vendor Ref.** box mandatory when creating an AP bill on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, select the **Require Vendor Reference** check box in the **Data Entry Settings** section. If this check box is cleared, you can leave the **Vendor Ref.** box empty when creating an AP bill.
    -   To cause AP bills to be automatically posted to the general ledger once they are released, select the **Automatically Post on Release** check box in the **Posting Settings** section. If this check box is cleared, you have to post the batch after you release the document.

## Validation of Configuration {#section_uxx_3jv_vxb .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you process AP bills in a foreign currency by performing instructions similar to those described in [AP Bills in Foreign Currencies: Process Activity](Mullticurrency_APBillsFC_Process_Activity.md).

**Parent topic:**[Processing Bills in Foreign Currencies](../UserGuide/Multicurrency_APBillsFC_Mapref.md)

