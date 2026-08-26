# Project Invoice Correction: Reversing AR Documents {#_c17cd276-5ac4-3e1e-a238-fa3ccdaa1e16 .concept}

In Acumatica ERP, the amount of a released accounts receivable invoice cannot be changed directly in the released document. If you have found out that you have undercharged or overcharged the customer, you first need to reverse the accounts receivable invoice to correct the customer balance.

**Attention:** If the accounts receivable invoice has been created based on the pro forma invoice, you should not reverse the accounts receivable invoice manually. You create a new revision of the pro forma invoice by using the **Correct** command on the form toolbar of the [Pro Forma Invoices](PM_30_70_00.md) \(PM307000\) form. On release of this pro forma invoice, the corrected accounts receivable invoice will be created. For more information, see [Correcting Pro Forma Invoices](Construction_PF_Correction_Mapref.md).

## Reversal of AR Invoice { .section}

You reverse an account receivable invoice by clicking **Reverse** on the More menu of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form. When you reverse a released accounts receivable invoice that was created based on a project transaction, the system creates the credit memo in the same amount. When you release this reversing credit memo, the system automatically creates project transactions that clear the project revenue budget, adjust the customer balance, and make the amount billable again.

**Attention:** Project transactions generated on release of the reversing credit memos are excluded from further allocations.

After you have reversed the invoice, you can run billing procedure for the project again and make changes to the newly created accounts receivable invoice.

## Generated Project Transactions { .section}

As a result of reversal of the accounts receivable invoice that was created during billing of a project, the system generates the following project transactions:

-   The project transaction that have *PM* in the **Module** box in the Summary area on the [Project Transactions](PM_30_40_00.md) \(PM304000\) form. This transaction originated from credit memo and includes the following lines:

    -   The line with non-billable reversing project transaction. This line has the amount opposite to the amount of the original project transaction and the same expense account group. That is, this project transaction line reverses the impact of the original project transaction.

        **Attention:** The system reverses only the project transactions that have been billed with the invoice being reversed. If you have processed any additional allocations for the original cost transaction, the system does not reverse them automatically. You need to reverse such allocation transactions manually by opening them on the [Project Transactions](PM_30_40_00.md) form and clicking **Reverse** on the form toolbar.

    -   The line with billable project transaction, which is the copy of the original project transaction with the same quantity and amount. This project transaction is ready for billing.
    The date and the financial period in both lines are copied from the original project transaction if the financial period is not locked or closed. If the financial period of the original transaction is locked or closed, the financial period of the created transactions is copied from the credit memo.

-   The non-billable project transaction that have *AR* in the **Module** box in the Summary area on the [Project Transactions](PM_30_40_00.md) \(PM304000\) form. This line has the amount opposite to the amount of the project transaction that was generated on release of the AR invoice and the same revenue account group.

    This transaction reverses the impact of the AR invoice to the project budget. The date and the financial period of this project transaction are the date and period of reversal, that is the system copies these values from the credit memo.

    Notice that after reversal of the AR invoice, the original project transaction remains billed.


**Parent topic:**[Correcting Project Invoices](../UserGuide/Projects_Correcting_Project_Invoices_Mapref.md)

