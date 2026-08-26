# Parent-Child Relationships: Implementation Checklist {#_96e1d757-36a2-45a9-9e7b-fba9f7e001a4 .concept}

The following sections provide details you can use to ensure that the system is configured properly for setting up parent and child customer relationships and processing these customers' documents. You will also learn about the settings that affect the processing workflow.

## Implementation Checklist { .section}

We recommend that before you initially set up the parent and child relationship, you make sure that the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|Make sure the minimal features have been enabled, as described in [Company Without Branches: General Information](../ImplementationGuide/config_Basic_Company_GeneralInfo.md), [Company with Branches that Do Not Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_No_Balancing_GeneralInfo.md), and [Company with Branches that Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_with_Balancing_GeneralInfo.md).|
|[Customers](AR_30_30_00.md) \(AR303000\)|Be sure that the customer accounts for the customers for which you will set up parent and child relationships have been defined.|
|[Payment Methods](CA_20_40_00.md) \(CA204000\)|Verify the existence of the payment method that you will use when creating invoices for the customers.|
|[Statement Cycles](AR_20_28_00.md) \(AR202800\)|Verify the existence of the statement cycle that will be used for consolidated customer statements, if they are needed. For details, see [Accounts Receivable: To Create a Statement Cycle](../ImplementationGuide/config_Basic_Company_Implem_Activity_Statement_Cycles.md).|

## Other Settings That Affect the Workflow { .section}

You can affect the workflow of processing AR documents by specifying additional settings as follows:

-   The following general ledger settings should be specified on the **General** tab \(**Posting Settings** section\) of the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form:
    -   Make sure that the **Automatically Post on Release** check box is selected. This setting causes GL batches to be immediately posted after they are released.
    -   Clear the **Generate Consolidated Batches** check box to cause every AR transaction you enter to be posted as an individual batch to the general ledger. \(When this check box is selected, the system consolidates into a single batch all transactions in the same currency posted to the same period for all documents being released.\)
-   The following accounts receivable settings should be specified on the **General** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form:
    -   Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This setting gives the created documents the *On Hold* status.
    -   Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section. This setting causes documents to be automatically posted to the general ledger once they are released.

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you set up and use the parent-child relationship by performing instructions similar to those described in [Parent-Child Relationships: Process Activity](Finance_Parent-Child_Relationships_Activity.md).

**Parent topic:**[Managing Parent-Child Relationships](../UserGuide/Finance_Parent-Child_Relationship_Mapref.md)

