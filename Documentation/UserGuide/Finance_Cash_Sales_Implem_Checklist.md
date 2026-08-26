# Cash Sales and Cash Returns: Implementation Checklist {#_64b9bf88-2aaf-4fc4-a552-33862af84b38 .concept}

The following sections provide details you can use to ensure that the system is configured properly for performing cash sales and cash returns, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

We recommend that before you initially perform cash sales and returns, you make sure that the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|Make sure the minimal features have been enabled, as described in [Company Without Branches: General Information](../ImplementationGuide/config_Basic_Company_GeneralInfo.md), [Company with Branches that Do Not Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_No_Balancing_GeneralInfo.md), and [Company with Branches that Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_with_Balancing_GeneralInfo.md).|
|[Customers](AR_30_30_00.md) \(AR303000\)|Be sure that the customer accounts for the customers for which you will create cash sales and returns have been defined.|
|[Payment Methods](CA_20_40_00.md) \(CA204000\)|Verify the existence of the payment method that you will use when creating cash sales and cash returns.|
|[Non-Stock Items](IN_20_20_00.md) \(IN202000\), [Stock Items](IN_20_25_00.md) \(IN202500\)|Verify the existence of non-stock items or stock items that can be used when you are creating cash sales and returns. For details, see [Non-Stock Item: Implementation Activity](Non_Stock_Item_Fin_Implem_Activity.md).|

## Other Settings That Affect the Workflow { .section}

You can affect the workflow of processing cash sales and returns by specifying additional settings as follows:

-   The following general ledger settings should be specified on the **General** tab \(**Posting Settings** section\) of the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form:
    -   Make sure that the **Automatically Post on Release** check box is selected. This setting causes GL batches to be immediately posted after they are released.
    -   Clear the **Generate Consolidated Batches** check box to cause every AR transaction you enter to be posted as an individual batch to the general ledger. \(When this check box is selected, the system consolidates into a single batch all transactions in the same currency posted to the same period for all documents being released.\)
-   The following accounts receivable settings should be specified on the **General** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form:
    -   Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This setting gives the created document the *On Hold* status.
    -   Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section. This setting causes documents to be automatically posted to the general ledger once they are released.

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you process cash sales and cash returns by performing instructions similar to those described in [Cash Sales and Cash Returns: Process Activity](Finance_Cash_Sales_Activity.md).

**Parent topic:**[Processing Cash Sales and Cash Returns](../UserGuide/Finance_Processing_Cash_Sales_Mapref.md)

