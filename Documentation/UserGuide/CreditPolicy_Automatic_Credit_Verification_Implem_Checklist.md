# Automatic Credit Verification: Implementation Checklist {#_f64e2463-1b1f-4bcb-b17e-fd5d52243698 .concept}

The following sections provide details you can use to ensure that the system is configured properly for analyzing automatic credit verification, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist {#section_ovc_hjv_vxb .section}

We recommend that before you initially analyze automatic credit verification and release documents from credit hold, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|Make sure the minimal features have been enabled, as described in [Company Without Branches: General Information](../ImplementationGuide/config_Basic_Company_GeneralInfo.md), [Company with Branches that Do Not Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_No_Balancing_GeneralInfo.md), and [Company with Branches that Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_with_Balancing_GeneralInfo.md).|
|[Customers](AR_30_30_00.md) \(AR303000\)|Be sure that the customer accounts for the customers for which you will create AR invoices have been defined.|

## Other Settings That Affect the Workflow {#section_qvc_hjv_vxb .section}

You can affect the workflow of automatic credit verification by specifying additional settings as follows:

-   To cause GL batches to be immediately posted after they are released, make sure that the **Automatically Post on Release** check box is selected on the **General** tab of the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form.
-   To cause every AR transaction you enter to be posted as an individual batch to the general ledger, make sure that the **Generate Consolidated Batches** check box on the [General Ledger Preferences](GL_10_20_00.md) form is cleared. \(When this check box is selected, the system consolidates into a single batch all transactions in the same currency posted to the same period for all documents being released.\)
-   The following accounts receivable settings should be specified on the **General** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form:
    -   Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This setting gives the created AR invoices the *On Hold* status.
    -   Make sure that the **Hold Document on Failed Credit Check** check box is selected. This setting gives a document for a customer that failed a credit check the *Credit Hold* status.
    -   Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section. This setting causes AR invoices to be automatically posted to the general ledger once they are released.

## Validation of Configuration {#section_svc_hjv_vxb .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you process documents of customers that failed a credit check by performing instructions similar to those described in [Automatic Credit Verification: Process Activity](CreditPolicy_Automatic_Credit_Verification_Activity.md).

**Parent topic:**[Analyzing Automatic Credit Verification for Customers](../UserGuide/CreditPolicy_Automatic_Credit_Verification_Mapref.md)

