# Splitting Transactions: Reports and Inquiries {#_bb8bf6c6-f9a5-46b1-8c5c-0828c8916c71 .concept}

In this topic, you can find the list of reports and inquiries related to splitting transactions.

## Finding Reclassification Transactions for a Particular Account {#section_wm3_mjv_vxb .section}

On the [Account Details](GL_40_40_00.md) \(GL404000\) form, to include in the list of entries the journal entries that have been reclassified for a selected GL account within the specified period, select the **Include Reclassified** check box in the Summary area. In the **Reclass. Batch Number** column, each of the reclassified entries has a link to the appropriate *Reclassification* transaction.

You can also view a list of transactions that includes the reclassified journal entries by preparing the [Transactions for Account](GL_63_35_00.md) \(GL633500\) or [Transactions for Period](GL_63_30_00.md) \(GL633000\) report with the **Include Reclassified Transactions** check box selected. In the reports, the original transaction that was split is marked as a reclassified transaction.

## Finding Split Transactions for a Particular Account {#section_zm3_mjv_vxb .section}

You can find and view split transactions on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form or on the [Account Details](GL_40_40_00.md) \(GL404000\) form. These transactions have the *Reclassification* type. On this form, in the **Orig. Batch Nbr.** column of the table, the reclassified journal entries contain the links to the original GL transactions \(that is, to the batches generated for the transactions\).

## Viewing a Reclassification History of a Transaction {#section_bn3_mjv_vxb .section}

You can view the reclassification history for a transaction on the [Reclassification History](GL_40_50_00.md) \(GL405000\) form. You can open this form by clicking the **Reclassification History** button in either of the following situations:

-   On the form toolbar of the [Account Details](GL_40_40_00.md) \(GL404000\) form for the transaction you have selected \(if it has been reclassified\)
-   On the table toolbar of the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form for the transaction you have selected in the GL batch, if it has the *Reclassification* type

You can reclassify only the last transaction in the list of transactions on the [Reclassification History](GL_40_50_00.md) form by clicking **Reclassify** on the form toolbar.

**Parent topic:**[Splitting Transactions](../UserGuide/Finance_Splitting_a_Transaction_Mapref.md)

