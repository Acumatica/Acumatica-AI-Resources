# General Ledger: Actual Ledger {#_1f0bd0a0-bb42-4e75-ae57-9d8e2b9486c6 .concept}

In Acumatica ERP, a ledger of the *Actual* type is at the core of your company’s financial records. The records in the actual ledger make up the history of all financial transactions of your organization. The system updates the actual ledger every time you release and post a financial transaction in the system.

In this topic, you will read about creating actual ledgers in the system.

## Creation of an Actual Ledger { .section}

You can specify only one ledger of the *Actual* type for each company. You add a new actual ledger in either of the following ways:

-   To first add a new ledger and then associate it with existing companies and branches, you use the [Ledgers](../UserGuide/GL_20_15_00.md#) \(GL201500\) form. After you create the actual ledger, you can associate it with existing companies in the system.
-   To first create a new company and then add a new ledger, you use the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form. \(You create the ledger directly on this form.\)

If you have multiple companies, they can use the same ledger of the *Actual* type, or they can use different ledgers, depending on the transaction processing requirements of your organization and its organizational structure.

**Attention:** You cannot delete a ledger or change its currency or type if the ledger has any journal entries or other records.

**Parent topic:**[General Ledger](../ImplementationGuide/config_Mapref_GL.md)

