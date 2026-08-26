# Managing Ledgers {#_3d13cf61-bd54-4f32-ba51-8899e1ff8df2 .concept}

Acumatica ERP supports the use of multiple ledgers. Each company that has been created in the system may have one actual ledger and an unlimited number of ledgers of other types. Because you can keep ledgers of multiple types, you can record actual financial information and can store budgets, forecasts, and statistical and reporting information for all companies and branches \(if any\) of your organization.

## Ledger Types {#section_c32_mjv_vxb .section}

Depending on the processes you are going to perform, you can create ledgers of different types in Acumatica ERP as follows:

-   To post all financial transactions that your company performs, you create a ledger of the *Actual* type. For details, see [General Ledger: Actual Ledger](../ImplementationGuide/config_Basic_Company_Actual_Ledger.md).
-   To store the results of financial translations or consolidation data imported to a parent company from consolidation units, you create a ledger of the *Reporting* type. For more information, see [Reporting Ledgers](GL__CON_Reporting_Ledger.md).
-   To store statistical information about a company's operations, you create a ledger of the *Statistical* type. For details, see [Statistical Ledgers](GL__con_Statistical_Ledgers.md).
-   To store budget information, you create a ledger of the *Budget* type, as described in [Budget Ledger: General Information](../ImplementationGuide/BudgetLedger_GeneralInfo.md).

To start live operations in the system, you have to create at least one ledger of the *Actual* type. You can create other ledgers depending on your business needs.

## Ledger Creation {#section_f32_mjv_vxb .section}

You can create ledgers of any type on the [Ledgers](GL_20_15_00.md) \(GL201500\) form; when you create a ledger, you have to specify a ledger identifier, type, and currency \(if the *Multicurrency Accounting* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form\). On the [Companies](CS_10_15_00.md) \(CS101500\) form, for a new company, you can create a ledger of the *Actual* type by clicking **Create Ledger** on the form toolbar.

To use a ledger as a source for consolidations, you select the **Consolidation Source** check box. This column is available only if the *General Ledger Consolidation* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form. For details on consolidations, see [GL Consolidation Configuration: To Configure a Consolidation Unit](Finance_GL_Consolidation_Config_To_Configure_Consol_Unit.md).

-   **[Multiple Ledger Support](../UserGuide/GL__con_Multiple_Ledger_Support.md)**  

-   **[Reporting Ledgers](../UserGuide/GL__CON_Reporting_Ledger.md)**  

-   **[Statistical Ledgers](../UserGuide/GL__con_Statistical_Ledgers.md)**  

-   **[To Add an Actual Ledger](../UserGuide/GL__HOW_To_Add_a_Ledger.md)**  

-   **[To Associate a Ledger with at Least One Company](../UserGuide/GL__HOW_To_Associate_Ledger.md)**  

-   **[To Add a Reporting Ledger](../UserGuide/GL__HOW_To_Add_Reporting_Ledger.md)**  

-   **[To Add a Statistical Ledger](../UserGuide/GL__HOW_To_Add_Statistical_Ledger.md)**  

-   **[To Change a Ledger ID](../UserGuide/GL__HOW_To_Change_Ledger_ID.md)**  


