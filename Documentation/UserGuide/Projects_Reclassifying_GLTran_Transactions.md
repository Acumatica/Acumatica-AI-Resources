# Transaction Reclassification: Generated Transactions {#_4e0294bb-296b-4003-816d-4ac5caeae75d .concept}

When a reclassification batch is released, the system moves the incorrectly posted amount to the correct branch, account, subaccount, project, project task, or cost code.

## Reclassification Batch {#section_rd4_fnk_2qb .section}

The following table shows the journal entries of the GL transaction of the *Reclassification* type.

|Corrected columns|Debit amount|Credit amount|
|-----------------|------------|-------------|
|Original value|0.00|–\(Amount\)|
|Destination value|Amount|0.00|

You can find and view transactions of the *Reclassification* type on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form. On this form, in the **Orig. Batch Nbr.** column of the table, the reclassified journal entries contain links to the original general ledger transactions \(that is, to the batches generated for the transactions\).

## Project Transaction Generated on Reclassification Batch Release {#_7f9dc79b-95dc-460d-b73a-31c065929f39 .section}

On release of a batch created on release of the reclassification GL batch, the system generates a project transaction with the following information.

|Project transaction columns|Source of value|
|---------------------------|---------------|
|**Project**|GL batch line|
|**Project task**|GL batch line|
|**Cost code**|GL batch line|
|**Branch**|GL batch line|
|**Account**|GL batch line|
|**Subaccount**|GL batch line|
|**Account group**|Account in the GL batch line|
|**Date**|GL batch line|
|**Fin. period**|GL batch line|

You can review the created project transaction on the [Project Transaction Details](PM_40_10_00.md) \(PM401000\) form.

**Parent topic:**[Reclassifying Project-Related GL Transactions](../UserGuide/Projects_Reclassifying_GLTran_Mapref.md)

