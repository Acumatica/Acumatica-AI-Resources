# Financial Period Closing in the Inventory Subledger {#_8e12cb48-8772-47eb-8f89-f152642f473a .concept}

If your organization prepares financial reports on a regular basis, accountants should close financial periods in all subledgers that your organization uses in Acumatica ERP. Before the reports can be prepared for a financial period, the accountants have to verify the account balances, process all necessary transactions for the period, and then close the financial period for further transaction processing.

In this topic, you will read about the process of closing financial periods in Inventory.

## Closing Financial Periods in Inventory { .section}

Closing a financial period in a subledger is a technical procedure that prevents the posting of new transactions from this subledger to the closed period, which is undesirable or might be even forbidden after all figures have been verified and disclosed in the reports.

The closed periods cannot be selected in the **Post Period** box on inventory transaction data entry forms. However, a closed period can be typed manually in a transaction and the inventory transaction can still be processed to the period if the **Restrict Access to Closed Periods** check box is cleared on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form. The **Restrict Access to Closed Periods** setting applies to the transactions that are produced by all subledger that post transactions to the general ledger. Only users assigned to the *Financial Supervisor* role on the [User Roles](SM_20_10_05.md) \(SM201005\) form can post transactions to closed periods; this is the case even when the **Restrict Access to Closed Periods** check box is selected.

Closing a financial period in the inventory subledger includes the following procedures:

-   Inventory clerks count the physical inventory, and the warehouse manager makes the necessary inventory adjustments to make the book quantities of items equal to the physical quantities of items in the warehouse. For details on physical inventory counting, see [Physical Inventory Counts](IN__con_Physical_Inventory_Counts.md).
-   The warehouse manager verifies and processes the necessary inventory transactions for the period. For details, see [To Review Unprocessed Inventory Transactions](IN__how_Review_Unprocessed_Inventory_Transactions.md).
-   The accountant reconciles the inventory account balance in the inventory and general ledger subledgers for the period. For more information, see [Reconciliation of the Cost of Inventory with the Account Balance](IN__con_Reconciliation_IN_Account_GL_Account.md).
-   The accountant closes the financial period in the inventory subledger. During the process of closing the period, the system verifies that there are no unprocessed inventory transactions entered for these periods, and marks the periods as closed in the inventory subledger. For details, see [To Close Financial Periods in Inventory](IN__how_Close_Financial_Period.md).

After the financial period is closed in all subledgers, the accountant can prepare the financial reports.

**Parent topic:**[Closing Inventory Periods](../UserGuide/IN__mng_Closing_Inventory_Periods.md)

