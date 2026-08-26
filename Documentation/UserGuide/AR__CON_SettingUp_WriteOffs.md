# Direct Write-Offs: Write-Off Setup {#_7ccc5a43-dbd8-4d44-80f2-5ef857163e6d .concept}

To use the write-off functionality, you need to configure the following entities:

-   GL accounts to record balance and credit write-offs
-   Reason codes to point to the GL account and subaccount where write-offs are to be recorded
-   Customer accounts with the write-off functionality enabled and write-off limits specified; if these accounts already exist, you just need to change their settings

In this topic, you will read about setting up write-off functionality and additional information that you may need during configuration. For a description of how to configure automatic write-offs for SO invoices, see [Configuration of Automatic Write-Offs in Invoices](SO__con_Config_Write_Offs.md).

## Write-Off Process Setup {#section_cm2_hjv_vxb .section}

To use the write-off functionality, you perform the following steps:

1.  You configure the GL accounts and subaccounts to be used for writing off expenses by using the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form as follows:
    -   For the direct write-off method, you configure an expense account \(for instance, the Balance Write-Off account\) and subaccounts \(if needed\).
    -   For the allowance method, you configure a contra asset account to accounts receivable \(for instance, Allowance for Doubtful Accounts\) and an expense account \(for example, Bad Debts Expense\) and subaccounts \(if needed\).
2.  On the [Reason Codes](CS_21_10_00.md) \(CS211000\) form, you configure reason codes that point to the GL accounts you have configured in Step 1:
    -   For the direct write-off method, you create a reason code that points to the expense account and subaccount to be used for writing off expenses. You can configure different reason codes to distribute write-offs to different accounts or use one reason code for all such expenses.
    -   For the allowance method, you create a reason code that points to the contra asset account \(Allowance for Doubtful Accounts\) and subaccount. Then you write off bad debts by using this reason code directly from an invoice and make the entries manually for the contra asset account on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.
3.  You enable the write-off functionality for a group of customer accounts by using the [Customer Classes](AR_20_10_00.md) \(AR201000\) form or individually for a customer account by using the [Customers](AR_30_30_00.md)\(AR303000\) form.

After configuration is done, you can:

-   Write off balances directly from an invoice when you apply a payment to it by using the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form. For details, see [Payments with Write-Offs: General Information](Finance_ProcessingCustomerPayment_GeneralInfo.md).
-   Write off balances or credits of several documents at once by using the [Write Off Balances and Credits](AR_50_50_00.md) \(AR505000\) form.
-   Write off balances directly from an invoice when you apply a payment \(created to match a bank transaction\) to it by using the [Process Bank Transactions](CA_30_60_00.md) \(CA306000\) form.

## Default Reason Codes {#section_gm2_hjv_vxb .section}

By using the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form, you can specify the reason codes to be used by default for writing off credits and balances. The system will fill in the reason codes specified here in the **Reason Code** box on the [Write Off Balances and Credits](AR_50_50_00.md) \(AR505000\) form, as well as on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, when you select the type of write-off operation.

**Parent topic:**[Processing Direct Write-Offs](../UserGuide/Finance_Direct_Write-Offs_Mapref.md)

