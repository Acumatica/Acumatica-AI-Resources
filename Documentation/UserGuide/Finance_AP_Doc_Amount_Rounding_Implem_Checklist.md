# Rounding of AP Document Amounts: Implementation Checklist {#_d286bb12-ad98-4082-99d1-afe490f0499c .concept}

The following sections provide details that you can use to ensure that the system is configured properly for the rounding of amounts in AP documents, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

We recommend that before you initially set up the functionality of document amount rounding, you make sure that the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|Make sure the minimum set of features has been enabled, as described in [Company Without Branches: General Information](../ImplementationGuide/config_Basic_Company_GeneralInfo.md), [Company with Branches that Do Not Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_No_Balancing_GeneralInfo.md), and [Company with Branches that Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_with_Balancing_GeneralInfo.md).|
|[Chart of Accounts](GL_20_25_00.md) \(GL202500\)|The accounts \(or one account\) exist that will be specified for the base currency in the **Rounding Gain Account** and **Rounding Loss Account** boxes on the **GL Accounts** tab of the [Currencies](CM_20_20_00.md) \(CM202000\) form.|
|[Vendors](AP_30_30_00.md) \(AP303000\)|Make sure that needed vendor has been created, as described in [Vendors: General Information](Vendor_GeneralInfo.md).|

## Other Settings That Affect the Workflow { .section}

You can affect the workflow of purchases by specifying additional settings:

-   The following general ledger settings should be specified on the **Posting Settings** tab of the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form:
    -   The **Automatically Post on Release** check box is selected. This setting causes GL batches to be immediately posted after they are released.
    -   The **Generate Consolidated Batches** check box is cleared to cause every AP transaction you enter to be posted as an individual batch to the general ledger. \(When this check box is selected, the system consolidates into a single batch all transactions in the same currency posted to the same period for all documents being released.\)
-   The following accounts payable settings should be specified on the **General** tab of the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form:
    -   The **Hold Documents on Entry** check box is selected in the **Data Entry Settings** section. This setting gives the created AP bills the *On Hold* status.
    -   The **Require Vendor Reference** check box is cleared in the **Data Entry Settings** section. This setting means that you do not have to enter a vendor reference number in the **Vendor Ref.** box when creating an AP bill on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.
    -   Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section. This setting indicates that AP bills will be automatically posted to the general ledger once they are released.

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you process AP documents with amount rounding by performing instructions similar to those described in [Rounding of AP Document Amounts: Process Activity](Finance_AP_Doc_Amount_Rounding_Activity.md).

## Known Process Limitations { .section}

If the *Retainage Support* or *Payment Application by Line* feature is enabled \(or both features are enabled\) on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the functionality of the *Invoice Rounding* feature is limited: Amounts in documents with retainage and documents paid by line cannot be rounded, while amounts in documents without retainage and not paid by line will be rounded.

**Parent topic:**[Rounding of AP Document Amounts](../UserGuide/Finance_Rounding_of_AP_Doc_Amounts_Mapref.md)

