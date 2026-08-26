# Tax Entry from GL: Implementation Checklist {#_76ce7d29-19b6-4da9-bfea-7d95c287215c .concept}

The following sections provide details you can use to ensure that the system is configured properly for entering taxes from the general ledger, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist {#section_yqh_fjv_vxb .section}

We recommend that before you initially create tax-related transactions, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|The *Tax Entry from GL Module* feature has been enabled.|
|[Chart of Accounts](GL_20_25_00.md) \(GL202500\)|You should make sure that the GL accounts needed for the tax have been created.|
|[Tax Categories](TX_20_55_00.md) \(TX205500\)|You should create the needed tax category for the tax that will be specified for the GL account that you will later select for the GL transaction.|
|[Taxes](TX_20_50_00.md) \(TX205000\)|You should create the tax that will be applied to the GL transaction.|

## Other Settings That Affect the Workflow {#section_arh_fjv_vxb .section}

You can affect the workflow of entering taxable transactions from the general ledger by specifying additional settings as follows:

-   To cause GL batches to be immediately posted after they are released, select the **Automatically Post on Release** check box on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form.
-   To cause every transaction you enter to be posted as an individual batch to the general ledger, clear the **Generate Consolidated Batches** check box on the [General Ledger Preferences](GL_10_20_00.md) form. \(When this check box is selected, the system consolidates into a single batch all transactions in the same currency posted to the same period for all documents being released.\)
-   To make document reference numbers required in taxable GL entries, select the **Require Ref. Numbers for GL Documents with Taxes** check box on the [General Ledger Preferences](GL_10_20_00.md) form. \(If this check box is cleared, you can create a taxable GL entry without specifying the reference number in its lines, but the taxes calculated for this GL entry will not appear in the tax report.\)
-   To make document reference numbers required in taxable GL entries, select the **Require Ref. Numbers for GL Documents with Taxes** check box \(**Data Entry Settings** section\) on the [General Ledger Preferences](GL_10_20_00.md) form. \(If this check box is cleared, you can create a taxable GL entry without specifying the reference number in its lines, but the taxes calculated for this GL entry will not appear in the tax report.\)

## Validation of Configuration {#section_crh_fjv_vxb .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you create taxable GL transactions by performing instructions similar to those described in [Tax Entry from GL: Process Activity](Taxes_Tax_Entry_from_GL_Process_Activity.md).

**Parent topic:**[Entering Taxes from the General Ledger](../UserGuide/Taxes_Entering_Taxes_from_GL_Mapref.md)

