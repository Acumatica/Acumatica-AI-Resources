# Reporting Ledgers {#_e3d47520-7dec-4999-a935-89aff6ad399f .concept}

A ledger of the *Reporting* type stores the results of financial translations \(that is, the results of the conversion of account balances from the base currency to any foreign currency configured for use in your system\) or data for consolidated reports. For details on translations, see [Translation of Financial Statements: General Information](Multicurrency_TranslatingFinStatements_GeneralInfo.md).

In this topic, you will read about using and updating reporting ledgers in the system.

## Reporting Ledger Usage {#section_hl2_mjv_vxb .section}

Reporting ledgers can be used by subsidiaries to hold the data translated for consolidations to be performed by the parent company, or they can be used by parent companies to keep data imported from subsidiaries. You can use the reporting ledger for preparing reports or as a source for consolidation.

You can create and use any number of reporting ledgers. When you create a reporting ledger on the [Ledgers](GL_20_15_00.md) \(GL201500\) form, the currency that you specify for the reporting ledger is the destination currency to which translations of financial data will be performed. For details on how to create a ledger, see [To Add a Reporting Ledger](GL__HOW_To_Add_Reporting_Ledger.md).

## Entry Update in a Reporting Ledger {#section_kl2_mjv_vxb .section}

If you use the reporting ledger to store the results of financial translations, you specify the reporting ledger as a destination ledger when you configure a translation definition on the [Translation Definition](CM_20_30_00.md) \(CM203000\) form. When you release a worksheet on the [Translation Worksheets](CM_30_40_00.md) \(CM304000\) form, the system generates a translation batch and posts it to the reporting ledger specified for the related translation definition. For details, see [Translation Definitions: General Information](../ImplementationGuide/config_Multicurrency_TranslationDefinition_GeneralInfo.md).

After the translation has been performed, the reporting ledger contains account balances translated to the currency of the reporting ledger, so that you can use it for preparing financial statements and other reports in that currency for the period specified in the translation worksheet.

If you use the reporting ledger to keep data for consolidated reports, you can upload the data by importing consolidation data or importing the trial balance. For details, see [GL Consolidation: To Import Consolidation Data from a Subsidiary](Finance_GL_Consolidation_To_Import_Data_From_Subsidiary.md) and [Preparation for Importing Trial Balances](GL__con_Import_of_Trial_Balances.md).

**Parent topic:**[Managing Ledgers](../UserGuide/GL__MNG_Managing_Ledgers.md)

