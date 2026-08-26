# Credit Memos with Sales Taxes: Implementation Checklist {#_6c835e77-d3e6-40e9-b351-12a617219294 .concept}

To ensure that the system is configured properly for creating and releasing credit and debit memos, make sure that the criteria listed in the table have been met in the system as described.

|Form|Criteria to Check|Notes|
|----|-----------------|-----|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|Make sure the minimal features have been enabled as described in [Company Without Branches: General Information](../ImplementationGuide/config_Basic_Company_GeneralInfo.md).| |
|[Customers](AR_30_30_00.md) \(AR303000\)|Verify the existence of the customer accounts for the customers for which you will correct create a credit memo. For details, see [Customers: Implementation Activity](Customer_Implem_Activity.md).| |

## Settings That Affect the Workflow {#section_j4j_fjv_vxb .section}

The following settings and entities should be specified and defined, respectively:

-   The following general ledger settings should be specified on the **Posting Settings** tab of the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form:
    -   Make sure that the **Automatically Post on Release** check box is selected. This setting causes GL batches to be immediately posted after they are released.
    -   Clear the **Generate Consolidated Batches** check box to cause every AR transaction you enter to be posted as an individual batch to the general ledger. \(When this check box is selected, the system consolidates into a single batch all transactions in the same currency posted to the same period for all documents being released.\)
-   The following accounts receivable preferences settings should be specified on the **General Settings** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form:
    -   Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This setting gives the created AR invoices and credit memos the *On Hold* status.
    -   Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section. This setting indicates that AR invoices and credit memos will be automatically posted to the general ledger once they are released.

With these settings specified and entities defined, users in your company can record and process documents in Acumatica ERP quickly and accurately, with a minimum of manual actions.

**Parent topic:**[Processing Credit Memos with Sales Taxes](../UserGuide/Taxes_Processing_CM_with_SalesTax_Mapref.md)

