# Invoice with Combined Subaccounts: Implementation Checklist {#_31b75319-26fd-4b11-9bd4-7630d70bbadc .concept}

To ensure that the system has been configured properly for the processing of AR invoices, make sure that the criteria listed in the table have been met in the system as described.

|Form|Criteria to Check|Notes|
|----|-----------------|-----|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form|Make sure the *Standard Financials* and *Subaccounts*\(under *Advanced Financials*\) features have been enabled.| |
|Multiple forms|Make sure that the minimum configuration of the company has been performed, as described in [Company Without Branches: General Information](../ImplementationGuide/config_Basic_Company_GeneralInfo.md), [Company with Branches that Do Not Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_No_Balancing_GeneralInfo.md), and [Company with Branches that Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_with_Balancing_GeneralInfo.md).| |
|[Segmented Keys](CS_20_20_00.md) \(CS202000\) form, [Segment Values](CS_20_30_00.md) \(CS203000\) form|Be sure that the *SUBACCOUNTS* segmented key has been configured to meet the company’s business needs, as described in [Subaccounts: General Information](../ImplementationGuide/config_Subaccounts_GeneralInfo.md).| |
|[Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form|Make sure that a proper subaccount mask has been specified for AR documents, as described in [Combined Subaccounts: To Define a Subaccount Mask for AR Documents](../ImplementationGuide/config_Combined_Subaccounts_Implem_Activity.md).| |
|[Customers](AR_30_30_00.md) \(AR303000\)|Be sure that the customer accounts have been defined for the customers for which you will create AR invoices.| |
|[Non-Stock Items](IN_20_20_00.md) \(IN202000\), [Stock Items](IN_20_25_00.md) \(IN202500\)|Verify the existence of the non-stock items or stock items \(or both\) that will be used when you are creating AR invoices. For details, see [Non-Stock Item: Implementation Activity](Non_Stock_Item_Fin_Implem_Activity.md).| |

## Settings That Affect the Workflow {#_11630ec1-c6dd-45e6-a9fc-89ac8354929a .section}

For a streamlined workflow of processing AR invoices, we recommend that you specify various settings related to the general ledger and to accounts receivable.

Do the following on the **Posting Settings** tab of the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form:

-   Make sure that the **Automatically Post on Release** check box is selected. This setting causes GL batches to be immediately posted after they are released.
-   Clear the **Generate Consolidated Batches** check box to cause every AR transaction you enter to be posted as an individual batch to the general ledger. \(When this check box is selected, the system consolidates into a single batch all transactions in the same currency posted to the same period for all documents being released.\)

Do the following on the **General Settings** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form:

-   Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This setting causes the system to assign the *On Hold* status to the created AR invoices.
-   Clear the **Require Payment Reference on Entry** check box in the **Data Entry Settings** section. With this setting, users do not have to enter a payment reference number in the **Payment Ref.** box when creating an AR invoice on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.
-   Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section. This setting causes AR invoices to be automatically posted to the general ledger once they are released.

With these settings specified, users in your company can record and process documents in Acumatica ERP quickly and accurately, with a minimum of manual actions.

**Parent topic:**[Processing an Invoice with Combined Subaccounts](../UserGuide/Finance_Invoice_with_Combined_Subs_Mapref.md)

