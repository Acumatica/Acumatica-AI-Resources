# To Add Entry Types for Charges {#_eac5286a-3e52-4868-89aa-2dc84ecf2621 .task}

You use the [Entry Types](CA_20_30_00.md) \(CA203000\) form to configure entry types that you will use to register finance charges. For the steps of the configuration process, see [Registration of Finance Charges](CA__CON_FinCharges.md).

## To Add Entry Types for Charges {#section_v1d_kjv_vxb .section}

1.  Open the [Entry Types](CA_20_30_00.md) \(CA203000\) form.
2.  On the table toolbar, click **Add Row** to append a new row to the table.
3.  In the **Entry Type ID** column of the new row, type an identifier for the new entry type.
4.  In the **Description** column, provide a description that will let users easily identify the entry type.
5.  In the **Disb./Receipt** column, select *Disbursement*.
6.  In the **Module** column, select *CA* to specify that a transaction based on this entry type will affect the balances of GL accounts only.
7.  In the **Default Offset Account** column, select the general ledger account of the expense type to keep records of the bank charges of this specific type.
8.  In the **Offset Subaccount** column, select the subaccount for recording charges of this specific type.
9.  If the bank will deduct finance charges of this entry type from the accounts receivable payment amount, select the **Deduct From Payment** check box.

Once bank charges have been configured, you can apply them to payments by using the following forms:

-   [Checks and Payments](AP_30_20_00.md) \(AP302000\): To add charges to payments, prepayments, adjustments, and refunds
-   [Cash Purchases](AP_30_40_00.md) \(AP304000\): To add charges to cash purchases
-   [Payments and Applications](AR_30_20_00.md) \(AR302000\): To add charges to payments, prepayments, refunds, and returns
-   [Cash Sales](AR_30_40_00.md) \(AR304000\): To add charges to cash sales
-   [Funds Transfers](CA_30_10_00.md) \(CA301000\): To add expenses to funds transfers
-   [Bank Deposits](CA_30_50_00.md) \(CA305000\): To add charges to bank deposits

**Parent topic:**[Registration of Finance Charges](../UserGuide/CA__CON_FinCharges.md)

