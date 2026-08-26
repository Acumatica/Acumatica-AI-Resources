# Correction of a Bill for a Subcontract: Implementation Checklist {#_21e52161-1955-41cc-afc2-daa2c008f683 .concept}

The following sections provide details you can use to ensure that the system is configured properly for correcting billed values in subcontracts, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist {#section_n24_z3p_xnb .section}

Before you begin correcting subcontracts, you should make sure the needed settings have been specified and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form|The *Construction* feature is enabled \(under *Projects* group of feature\).|
|Multiple forms|Make sure that all necessary settings related to project accounting have been specified as described in [Basic Project Configuration: Implementation Checklist](../ImplementationGuide/config_Project_Basic_Implem_Checklist.md).|
|[Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\)|Make sure the accounts payable preferences have been specified as described in [Accounts Payable: To Specify Accounts Payable Preferences](../ImplementationGuide/config_Basic_Company_Implem_Activity_AP_Preferences.md).|
|Multiple forms|Make sure that all necessary settings related to subcontract processing have been specified as described in [Subcontracts: Implementation Checklist](Construction_Subcontracts_Implem_Checklist.md).|

## Settings That Affect the Workflow {#section_syr_c3p_xnb .section}

You can affect the workflow of working with subcontracts by specifying additional settings as follows:

-   To change the format of debit adjustment identifiers, adjust the *APBILL* numbering sequence on the [Numbering Sequences](CS_20_10_10.md) \(CS201010\) form, or create a new numbering sequence and select this sequence in the **Debit Adjustment Numbering Sequence** box on the **General** tab \(**Numbering Settings** section\) of the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form. For more information on numbering sequences, see [Use of Numbering Sequences](CS__con_Multiple_Numbering_Sequences.md).
-   To cause general ledger batches generated during the processing of debit adjustments to be posted automatically, select the **Automatically Post on Release** check box on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form. For information on processing general ledger batches, see [GL Transactions: General Information](Finance_Processing_Batch_GeneralInfo.md).
-   To cause debit adjustments to be created with the *On Hold* status, select the **Hold Documents on Entry** check box on the **General** tab of the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form.
-   To cause the system require entering unique vendor reference numbers in the **Vendor Ref.** box when creating a debit adjustment on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, select the **Require Vendor Reference** check box in the **Data Entry Settings** section on the **General** tab of the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form.
-   To cause every processed accounts payable transaction to be posted as an individual batch to the general ledger, clear the **Generate Consolidated Batches** check box on the [General Ledger Preferences](GL_10_20_00.md) form. \(When this check box is selected, the system consolidates into a single batch all transactions in the same currency posted to the same period for all documents being released.\)

**Parent topic:**[Correcting Subcontract Bills](../UserGuide/Construction_Subcontract_Bill_Correction_Mapref.md)

