# Credit Card Refunds: Implementation Checklist {#_5560ff96-35af-4385-8fcb-992c28840b40 .concept}

The following sections provide details you can use to ensure that the system is configured properly for creating a credit card refund, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist {#section_gyp_4jv_vxb .section}

We recommend that before you initially create a credit card refund, you make sure the features have been enabled, the settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|Notes|
|----|-----------------|-----|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|Make sure the minimal features have been enabled as described in [Preparing a Company for Implementation](../ImplementationGuide/config_Mapref_Basic_Company.md).| |
|[Customers](AR_30_30_00.md) \(AR303000\)|Verify the existence of the customer accounts for the customers whose credit card payment you will refund. For details, see [Customers: Implementation Activity](Customer_Implem_Activity.md).| |
|[Payments and Applications](AR_30_20_00.md) \(AR302000\)|Make sure that the credit card payment, a part of which you are going to refund, has been created for the needed customer.| |

## Other Settings That Affect the Workflow {#section_jyp_4jv_vxb .section}

You can affect the workflow of processing credit card refunds by specifying additional settings as follows:

-   The following general ledger settings should be specified on the **Posting Settings** tab of the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form:
    -   Make sure that the **Automatically Post on Release** check box is selected. This setting causes GL batches to be immediately posted after they are released.
    -   Clear the **Generate Consolidated Batches** check box to cause every AR transaction you enter to be posted as an individual batch to the general ledger. \(When this check box is selected, the system consolidates into a single batch all transactions in the same currency posted to the same period for all documents being released.\)
-   The following accounts receivable settings should be specified on the **General** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form:
    -   Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This setting gives the created AR invoices and credit memos the *On Hold* status.
    -   Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section. This setting indicates that AR invoices and credit memos will be automatically posted to the general ledger once they are released.
    -   Clear the **Require Payment Reference on Entry** check box in the **Data Entry Settings** section. With this check box cleared, you do not have to fill in payment reference information in the **Payment Ref.** box on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form.

## Validation of Configuration {#section_lyp_4jv_vxb .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you process credit card refunds by performing instructions similar to those described in [Credit Card Refunds: Process Activity](Finance_Credit_Card_Refunds_Process_Activity.md).

**Parent topic:**[Processing Credit Card Refunds](../UserGuide/Finance_Credit_Card_Refunds_Mapref.md)

