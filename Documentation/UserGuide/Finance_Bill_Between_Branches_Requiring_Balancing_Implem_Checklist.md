# Interbranch Bills with Balancing: Implementation Checklist {#_f112de93-7142-4a8b-a7d0-170f3ae7bcdf .concept}

Before users begin processing AP bills between branches that require balancing, you must make sure that the system has been configured properly and that all required entities have been created, as described in the following table.

|Form|Settings to Check|Notes|
|----|-----------------|-----|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form|Make sure that the following features have been enabled:-   *Standard Financials*
-   *Multibranch Support*
-   *Multicompany Support*
-   *Advanced Financials*
-   *Inter-Branch Transactions*

| |
|Multiple forms|Make sure that the minimum configuration of the company has been performed.| |
|[Chart of Accounts](GL_20_25_00.md) \(GL202500\) form|Check whether the necessary accounts have been created.| |
|[Inter-Branch Account Mapping](GL_10_10_10.md) \(GL101010\) form|Be sure that the account mapping rules have been specified for the branches.|For details on defining these rules, see [Interbranch Account Mapping: General Information](../ImplementationGuide/config_InterBranch_Mapping_Rules_GeneralInfo.md).|
|[Company Financial Calendar](GL_20_11_00.md) \(GL201100\) form|Be sure that all financial periods for which AP bills for branches requiring balancing may occur have a status of *Open*.|You can generate the necessary periods on the [Master Financial Calendar](GL_20_10_00.md) \(GL201000\) form.|
|[Vendors](AP_30_30_00.md) \(AP303000\) form|Ensure that all vendors that may be specified in these AP bills are defined in the system.| |

## Settings That Can Affect the Processing Workflow {#section_nzm_njv_vxb .section}

The following settings on the [Accounts Payable Preferences](../Shared/../UserGuide/AP_10_10_00.md) \(AP101000\) form can affect the processing workflow:

-   If the **Automatically Post on Release** check box is selected, the system posts the appropriate transactions to the general ledger when AP documents are released. If this check box is cleared, you have to post the batch after you release the AP document.
-   If the **Post Summary on Updating GL** check box is selected, AP documents are posted to the general ledger with summarized row amounts if particular criteria are met. That is, if multiple lines in an AP document specify the same account and branch, then in the GL batch, these rows are combined into one row \(that is, one journal entry\) with the summarized amount. If this check box is cleared, the lines of the AP document are not combined into one journal entry in the GL batch.
-   If the **Hold Documents on Entry** check box is selected in the **Data Entry Settings** section, when new documents are entered, they are assigned the *On Hold* status. If the **Hold Documents on Entry** check box is cleared, the documents are assigned the *Balanced* status.
-   If the **Validate Document Totals on Entry** check box is selected, the system adds the **Amount** box to the Summary area of the [Bills and Adjustments](../Shared/../UserGuide/AP_30_10_00.md) \(AP301000\) form. To save a document with the *Balanced* status, you must enter the document total in this box after reviewing the document. If this check box is cleared, the system automatically validates the batch when the status of the batch is *Balanced*.
-   If the **Require Vendor Reference** check box is selected, you must fill in the **Vendor Ref.** box on the [Bills and Adjustments](../Shared/../UserGuide/AP_30_10_00.md) form. If this check box is cleared, you can leave the **Vendor Ref.** box blank.

**Parent topic:**[Processing Interbranch Bills With Balancing](../UserGuide/Finance_Bill_Between_Branches_Requiring_Balancing_Mapref.md)

