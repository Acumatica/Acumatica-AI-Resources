# Payments with a Corporate Card: Implementation Checklist {#_e26ddfed-cffa-4e96-a857-e3770c40b9d8 .concept}

The following sections provide details you can use to ensure that the system is configured properly for processing expenses with corporate cards, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist {#section_acl_njv_vxb .section}

We recommend that before you initially process expenses with the corporate cards, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Corporate Cards](CA_20_25_00.md) \(CA202500\)|Make sure that the corporate card has been configured. For more information, see [Corporate Cards: General Information](../ImplementationGuide/Corporate_Card_GeneralInfo.md).|
|[Vendors](AP_30_30_00.md) \(AP303000\)|Make sure that a vendor that represents the bank that issued the corporate credit card have been created. For this vendor, specify the accrued liability account as the **Expense Account**.|

## Other Settings That Affect the Workflow {#section_dcl_njv_vxb .section}

You can affect the workflow of processing expenses with corporate credit cards by specifying additional settings as follows:

-   The following general ledger settings should be specified on the **Posting Settings** tab of the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form:
    -   Make sure that the **Automatically Post on Release** check box is selected. This setting causes GL batches to be immediately posted after they are released.
    -   Clear the **Generate Consolidated Batches** check box to cause every AP transaction you enter to be posted as an individual batch to the general ledger. \(When this check box is selected, the system consolidates into a single batch all transactions in the same currency posted to the same period for all documents being released.\)
-   The following accounts payable settings should be specified on the **General** tab of the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form:
    -   Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This setting gives the created payments the *On Hold* status.
    -   Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section. This setting indicates that payments will be automatically posted to the general ledger once they are released.

**Parent topic:**[Processing Payments with a Corporate Card](../UserGuide/Finance_Expenses_with_CorporateCC_Mapref.md)

