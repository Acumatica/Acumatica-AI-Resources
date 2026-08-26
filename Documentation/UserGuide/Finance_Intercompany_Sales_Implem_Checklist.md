# Intercompany Sales: Implementation Checklist {#_c5e9f33a-28c1-47dd-a125-3c5bcf9985bd .concept}

The following sections provide details you can use to ensure that the system is configured properly for performing intercompany sales, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist {#section_czr_4jv_vxb .section}

We recommend that before you initially perform intercompany sales, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|Make sure that the following features have been enabled:-   *Standard Financials*
-   *Multibranch Support*
-   *Multicompany Support*
-   *Advanced Financials*
-   *Inter-Branch Transactions*

|
|[Companies](CS_10_15_00.md) \(CS101500\)|If you are going to extend as a customer or vendor any company that has the *Without Branches* company type, make sure that the company has been configured. For details, see [Company Without Branches: To Configure a Company Without Branches](../ImplementationGuide/config_Basic_Company_Implem_Activity_Enabling_Features.md).|
|[Branches](CS_10_20_00.md) \(CS102000\)|If you are going to extend as a customer or vendor any branches of companies with the *With Branches Not Requiring Balancing* or *With Branches Requiring Balancing* company type, make sure that the companies have been configured. For details, see [Company with Branches that Do Not Require Balancing: Implementation Activity](../ImplementationGuide/config_Company_with_Branches_No_Balacing_Implem_Activity.md) and [Company with Branches that Require Balancing: Implementation Activity](../ImplementationGuide/config_Company_with_Branches_with_Balacing_Implem_Activity.md).|
|[Customer Classes](AR_20_10_00.md) \(AR201000\)|Make sure that the customer class to be used for a customer extended from a company or branch has been defined. For details, see [Accounts Receivable: To Create a Customer Class](../ImplementationGuide/config_Basic_Company_Implem_Activity_Customer_Classes.md).|
|[Vendor Classes](AP_20_10_00.md) \(AP201000\)|Make sure that the vendor class to be used for a vendor extended from a company or branch has been defined. For details, see [Accounts Payable: To Create a Vendor Class](../ImplementationGuide/config_Basic_Company_Implem_Activity_Vendor_Classes.md).|

## Other Settings That Affect the Workflow {#section_fzr_4jv_vxb .section}

You can affect the workflow of intercompany sales by specifying additional settings as follows:

-   To cause AR documents to be posted automatically, select the **Automatically Post on Release** check box on the **General Settings** tab \(**Posting Settings** section\) of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form.
-   To cause the ID of the default customer class to be inserted automatically when a company or branch has been extended to be a customer, select a customer class ID in the **Default Customer Class ID** box on the **General Settings** tab \(**Data Entry Settings** section\) of the [Accounts Receivable Preferences](AR_10_10_00.md) form. If this box is empty, you will have to specify a customer class for the new customer on the [Customers](AR_30_30_00.md) \(AR303000\) form.
-   To cause the system to insert a sales account from the customer location to an AR invoice, in the **Use Intercompany Sales Account From** box, select *Customer Location*. If *Inventory Item* is selected in this box, the system will insert the sales account specified in the **Sales Account** box on the **GL Accounts** tab of the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form for non-stock items.
-   To cause new documents to be assigned the *On Hold* status when they are created, select the **Hold Documents on Entry** check box on the **General Settings** tab \(**Data Entry Settings** section\) of the [Accounts Receivable Preferences](AR_10_10_00.md) form. If the **Hold Documents on Entry** check box is cleared, the documents are assigned the *Balanced* status.
-   To cause AP documents to be posted automatically, select the **Automatically Post on Release** check box on the **General Settings** tab \(**Posting Settings** section\) of the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form.
-   To cause the ID of the default vendor class to be inserted automatically when a company or branch has been extended to be a vendor, select a vendor class ID in the **Default Vendor Class ID** box on the **General Settings** tab \(**Data Entry Settings** section\) of the [Accounts Payable Preferences](AP_10_10_00.md) form. If this box is empty, you will have to specify a vendor class for the new vendor on the [Vendors](AP_30_30_00.md) \(AP303000\) form.
-   To cause the system to insert an expense account from the vendor location to an AP bill created from an AR invoice, in the **Use Intercompany Expense Account From** box, select *Vendor Location*. If *Inventory Item* is selected in this box, the system will insert the expense account specified in the **Expense Account** box on the **GL Accounts** tab of the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form for non-stock items.
-   To cause new documents to be assigned the *On Hold* status when they are created, select the **Hold Documents on Entry** check box on the **General Settings** tab \(**Data Entry Settings** section\) of the [Accounts Payable Preferences](AP_10_10_00.md) form. If the **Hold Documents on Entry** check box is cleared, the documents are assigned the *Balanced* status.

## Validation of Configuration {#section_hzr_4jv_vxb .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you process intercompany sales by performing instructions similar to those described in [Intercompany Sales: To Process an Intercompany Invoice](Finance_Intercompany_Sales_Process_Activity.md), [Intercompany Sales: To Pay an Intercompany Bill](Finance_Intercompany_Sales_Process_Activity2.md), and [Intercompany Sales: To Pay an Intercompany Invoice](Finance_Intercompany_Sales_Process_Activity3.md).

**Parent topic:**[Processing Intercompany Sales](../UserGuide/Finance_Intercompany_Sales_Mapref.md)

