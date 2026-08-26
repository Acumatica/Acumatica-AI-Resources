# Rounding of AR Document Amounts: Implementation Checklist {#_e16286c5-fedf-4f23-a517-2690ce9a6d3d .concept}

The following sections provide details that you can use to ensure that the system is configured properly for the rounding of amounts in AR documents, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

We recommend that before you initially set up the functionality of document amount rounding, you make sure that the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|Make sure the minimum set of features has been enabled, as described in [Company Without Branches: General Information](../ImplementationGuide/config_Basic_Company_GeneralInfo.md), [Company with Branches that Do Not Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_No_Balancing_GeneralInfo.md), and [Company with Branches that Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_with_Balancing_GeneralInfo.md).|
|[Chart of Accounts](GL_20_25_00.md) \(GL202500\)|The accounts \(or one account\) exist that will be specified for the base currency in the **Rounding Gain Account** and **Rounding Loss Account** boxes on the **GL Accounts** tab of the [Currencies](CM_20_20_00.md) \(CM202000\) form.|
|[Customers](AR_30_30_00.md) \(AR303000\)|Make sure that the needed customer has been created, as described in [Customers: General Information](Customer_GeneralInfo.md).|

## Other Settings That Affect the Workflow { .section}

You can affect the workflow of sales by specifying additional settings:

-   The following general ledger settings should be specified on the **Posting Settings** tab of the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form:
    -   The **Automatically Post on Release** check box is selected. This setting causes GL batches to be immediately posted after they are released.
    -   The **Generate Consolidated Batches** check box is cleared to cause every AR transaction you enter to be posted as an individual batch to the general ledger. \(When this check box is selected, the system consolidates into a single batch all transactions in the same currency posted to the same period for all documents being released.\)
-   The following accounts receivable settings should be specified on the **General** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form:
    -   The **Hold Documents on Entry** check box is selected in the **Data Entry Settings** section. This setting gives the created AR invoices the *On Hold* status.
    -   Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section. This setting indicates that AR invoices will be automatically posted to the general ledger once they are released.

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you process AR documents with amount rounding by performing instructions similar to those described in [Rounding of AR Document Amounts: Process Activity](Finance_AR_Doc_Amount_Rounding_Activity.md).

## Known Process Limitations { .section}

If the *Retainage Support* or *Payment Application by Line* feature is enabled \(or both features are enabled\) on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the functionality of the *Invoice Rounding* feature is limited: Amounts in documents with retainage and documents paid by line cannot be rounded, while amounts in documents without retainage and not paid by line will be rounded.

**Parent topic:**[Rounding of AR Document Amounts](../UserGuide/Finance_Rounding_of_AR_Doc_Amounts_Mapref.md)

