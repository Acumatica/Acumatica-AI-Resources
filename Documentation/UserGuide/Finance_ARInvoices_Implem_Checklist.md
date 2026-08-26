# AR Invoices: Implementation Checklist {#_03123a62-51f7-4476-82c1-424a098c100d .concept}

To ensure that the system has been configured properly for the processing of AR invoices, make sure that the criteria listed in the table have been met in the system as described.

## Implementation Checklist {#section_jcn_4jv_vxb .section}

We recommend that before you initially process AR invoices, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|Notes|
|----|-----------------|-----|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|Make sure the minimal features have been enabled, as described in [Company Without Branches: General Information](../ImplementationGuide/config_Basic_Company_GeneralInfo.md), [Company with Branches that Do Not Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_No_Balancing_GeneralInfo.md), and [Company with Branches that Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_with_Balancing_GeneralInfo.md).| |
|[Customers](AR_30_30_00.md) \(AR303000\)|Be sure that the customer accounts for the customers for which you will create AR invoices have been defined.| |
|[Non-Stock Items](IN_20_20_00.md) \(IN202000\), [Stock Items](IN_20_25_00.md) \(IN202500\)|Verify the existence of non-stock items or stock items that can be used when you are creating AR invoices. For details, see [Non-Stock Item: Implementation Activity](Non_Stock_Item_Fin_Implem_Activity.md).| |

## Settings That Affect the Workflow {#section_lcn_4jv_vxb .section}

In general, you use accounts receivable forms specifically for sales made on credit. The following settings and entities should be specified and defined, respectively:

-   The following general ledger settings should be specified on the **General** tab \(**Posting Settings** section\) of the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form:
    -   Make sure that the **Automatically Post on Release** check box is selected. This setting causes GL batches to be immediately posted after they are released.
    -   Clear the **Generate Consolidated Batches** check box to cause every AR transaction you enter to be posted as an individual batch to the general ledger. \(When this check box is selected, the system consolidates into a single batch all transactions in the same currency posted to the same period for all documents being released.\)
-   The following accounts receivable settings should be specified on the **General** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form:
    -   Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This setting gives the created AR invoices the *On Hold* status.
    -   Clear the **Require Payment Reference on Entry** check box in the **Data Entry Settings** section. This setting means that you do not have to enter a payment reference number in the **Payment Ref.** box when creating a payment on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form.
    -   Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section. This setting causes AR invoices to be automatically posted to the general ledger once they are released.

With these settings specified and entities defined, users in your company can record and process documents in Acumatica ERP quickly and accurately, with a minimum of manual actions.

**Parent topic:**[Processing AR Invoices](../UserGuide/Finance_ARInvoices_Mapref.md)

