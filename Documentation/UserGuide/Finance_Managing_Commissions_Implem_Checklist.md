# Managing Commissions: Implementation Checklist {#_76fc087f-a500-4832-81b6-2229a8056ff9 .concept}

The following sections provide details you can use to ensure that the system is configured properly for calculating salesperson commissions, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

We recommend that before you initially set up commissions, you make sure that the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|Make sure that the minimum set of features has been enabled, as described in [Company Without Branches: General Information](../ImplementationGuide/config_Basic_Company_GeneralInfo.md), [Company with Branches that Do Not Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_No_Balancing_GeneralInfo.md), and [Company with Branches that Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_with_Balancing_GeneralInfo.md).|
|[Customers](AR_30_30_00.md) \(AR303000\)|Make sure that the needed customer has been created, as described in [Customers: General Information](Customer_GeneralInfo.md).|

## Other Settings That Affect the Workflow { .section}

You can affect the workflow of sales by specifying additional settings:

-   The following general ledger settings should be specified on the **Posting Settings** tab of the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form:
    -   The **Automatically Post on Release** check box should be selected. This setting causes GL batches to be immediately posted after they are released.
    -   The **Generate Consolidated Batches** check box should be cleared to cause every AR transaction you enter to be posted as an individual batch to the general ledger. \(When this check box is selected, for all documents being released, the system consolidates into a single batch all transactions in the same currency posted to the same period.\)
-   The following accounts receivable settings should be specified on the **General** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form:
    -   The **Hold Documents on Entry** check box should be selected in the **Data Entry Settings** section. This setting gives the created AR invoices the *On Hold* status.
    -   The **Automatically Post on Release** check box should be selected in the **Posting Settings** section. This setting indicates that AR invoices will be automatically posted to the general ledger once they are released.

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you prepare and calculate commissions by performing instructions similar to those described in [Managing Commissions: Process Activity](Finance_Managing_Commissions_Activity.md).

## Known Process Limitations { .section}

Although commission is calculated on invoices or on full or partial payments for invoices, the corresponding commission transactions are not included in the transactions generated for invoices or payments. Commission amounts are stored with the appropriate documents. To actually pay commissions to the salespeople, you will need to enter all related transactions manually.

**Parent topic:**[Managing Commissions](../UserGuide/Finance_Managing_Commissions_Mapref.md)

