# Multiple Ledger Support {#_156c4748-632a-46a5-bda8-3644450c61f0 .concept}

Acumatica ERP supports the following types of ledgers: *Actual*, *Budget*, *Reporting*, and *Statistical*. You can create ledgers of any type on the [Ledgers](GL_20_15_00.md) \(GL201500\) form.

**Important:** You cannot delete a ledger or change its currency or type if the ledger has any journal entries or other records.

## Actual Ledgers {#section_gk2_mjv_vxb .section}

In Acumatica ERP, a ledger of the *Actual* type is the core of your company’s financial records, and every transaction flows through the actual ledger. The records in the actual ledger keep the history of all financial transactions since day one of the life of your company. You must create at least one ledger with the *Actual* type on the [Ledgers](GL_20_15_00.md) form and define it as the default posting ledger before you can start live operations in Acumatica ERP.

The system supports only one actual ledger per branch. You can assign actual ledgers to branches by using the [Inter-Branch Account Mapping](GL_10_10_10.md) \(GL101010\) form.

Multiple branches can use the same actual ledger. For each ledger, you can select one branch which consolidates the data of other branches in the same ledger as *consolidation branch*. To indicate that the ledger is shared by multiple branches that are separate legal entities, select no consolidation branch.

For each actual ledger that is used by multiple branches, specify whether inter-branch transactions should be automatically generated. You can specify the rules for generating inter-branch transactions by using the [Inter-Branch Account Mapping](GL_10_10_10.md) form.

## Budget Ledgers {#section_lk2_mjv_vxb .section}

A ledger of the *Budget* type is a special ledger that is used to store budget information. Such a ledger is updated on the [Budgets](GL_30_20_10.md) \(GL302010\) form. An organization can use an unlimited number of budget ledgers. Entering journal transactions for a budget ledger is not allowed. For details, see [Budget Ledger](../ImplementationGuide/BudgetLedger_Mapref.md).

## Statistical Ledgers {#section_nk2_mjv_vxb .section}

A *statistical ledger* is a ledger that can be used to store statistical information about branch's operations. Each organization can have multiple statistical ledgers, each for a different type of information. Statistical ledgers can be used as a data source for reporting, to calculate allocations based on statistical data, or for other purposes. For more information, see [Statistical Ledgers](GL__con_Statistical_Ledgers.md).

## Reporting Ledgers {#section_pk2_mjv_vxb .section}

A *reporting ledger* is a ledger that is used to store translated financial information and consolidation information. Reporting ledgers are mainly used by organizations that are subsidiaries of a parent company to hold the data translated for consolidations performed by the parent company. An organization can use any number of reporting ledgers. Journal transactions for a reporting ledger can be entered on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) and [Allocations](GL_20_45_00.md) \(GL204500\) forms. For details, see [Reporting Ledgers](GL__CON_Reporting_Ledger.md) and [Translation of Financial Statements: General Information](Multicurrency_TranslatingFinStatements_GeneralInfo.md).

**Parent topic:**[Managing Ledgers](../UserGuide/GL__MNG_Managing_Ledgers.md)

