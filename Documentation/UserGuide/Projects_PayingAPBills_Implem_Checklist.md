# Vendor Payments for a Project: Implementation Checklist {#_b66ba589-7eee-477e-b1e6-032d2552a14d .concept}

The following sections provide details you can use to ensure that the system is configured properly for paying AP bills for a project, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

We recommend that before you start preparing payments for AP bills, you make sure the needed settings have been specified and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\)|Make sure that the accounts payable settings have been configured as described in [Accounts Payable: To Specify Accounts Payable Preferences](../ImplementationGuide/config_Basic_Company_Implem_Activity_AP_Preferences.md).|
|[Vendors](AP_30_30_00.md) \(AR303000\)|Verify the existence of the vendor accounts for the vendors whose bills you will pay. For details, see [Vendors: Implementation Activity](Vendor_Implem_Activity.md).|
|[Cash Accounts](CA_20_20_00.md) \(CA202000\)|Make sure that the cash account to be used in the payments has been configured as described in [Cash Management: To Create Cash Accounts](../ImplementationGuide/config_Basic_Company_Implem_Activity_Cash_Accounts.md).|
|[Payment Methods](CA_20_40_00.md) \(CA204000\)|Make sure that the payment method you will use has been configured as described in [Cash Management: To Create Cash Accounts](../ImplementationGuide/config_Basic_Company_Implem_Activity_Cash_Accounts.md).|
|[Projects](PM_30_10_00.md) \(PM301000\)|Make sure that the necessary project \(that is, the project for which the vendor performed the billed work\) has been created and necessary project tasks of this project are active.|

## Payment by Line Checklist {#section_u3j_xnt_b4b .section}

If you intend to pay individual lines of the vendor's bill or bills, make sure the needed features have been enabled and settings have been specified, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form|Make sure that the *Payment Application by Line* feature is enabled.|
|**Payment** tab of the [Vendors](AP_30_30_00.md) \(AR303000\) form|Be sure the **Pay by Line** check box is selected.|

## Other Settings That Affect the Workflow {#section_lvc_zmt_b4b .section}

You can affect the workflow of processing payments for AP bills by specifying additional settings as follows:

-   To cause the system to generate separate payment documents for each bill of a particular vendor, select the **Pay Separately** check box on the **Payment** tab of the [Vendors](AP_30_30_00.md) \(AR303000\) form.
-   To cause the system to automatically post AP payments once they are released, select the **Automatically Post on Release** check box on the **General** tab of the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form.
-   To cause AP payments to be created with the *On Hold* status, select the **Hold Documents on Entry** check box on the **General** tab of the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form.
-   To cause the system to automatically post general ledger batches generated during the processing of payments, select the **Automatically Post on Release** check box on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form. For information on processing general ledger batches, see [GL Transactions: General Information](Finance_Processing_Batch_GeneralInfo.md).
-   To make the system consolidate into one batch all generated transactions posted to the same period for all documents being released, select the **Generate Consolidated Batches** check box on the [General Ledger Preferences](GL_10_20_00.md) form.

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you perform instructions similar to those described in [Vendor Payments for a Project: To Process a Payment for Multiple Bills](Projects_PayingAPBills_Process_Activity.md) and [Vendor Payments for a Project: To Process a Payment of Bill Lines](Projects_PayingAPBills_Process_Activity2.md).

**Parent topic:**[Paying AP Bills by Project](../UserGuide/Projects_PayingAPBills_Mapref.md)

