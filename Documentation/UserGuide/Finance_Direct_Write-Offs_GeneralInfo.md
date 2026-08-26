# Direct Write-Offs: General Information {#_c5b2deca-e691-48b3-8867-4683be0551b9 .concept}

You can use the write-off functionality to implement the direct write-off and allowance methods. In this topic, you will read about how write-off methods are used and what transactions are generated when you implement the direct write-off or allowance method.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Set up the write-off functionality
-   Process a credit write-off
-   Process a balance write-off

## Applicable Scenarios { .section}

You perform direct write-offs in the following cases:

-   You need to write off small balances of customer documents. You use credit write-offs to write off the balances of payments, prepayments, and credit memos. You use balance write-offs to write off the balances of invoices, debit memos, and overdue charges.
-   You need to write off bad debts once they are recognized.

## Balance Write-Offs and Credit Write-Offs {#section_kkm_4jv_vxb .section}

The system creates documents of the *Balance WO* and *Credit WO* type when you write off balances and credits of multiple documents at once by using the [Write Off Balances and Credits](AR_50_50_00.md) \(AR505000\) mass-processing form. The system decreases the customer's balance by the written-off balance and increases the customer's balance by the written-off credit.

To identify documents of this type, the system uses the numbering sequence specified in the **Write-Off Numbering Sequence** box on the **General** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form.

## Direct Write-Off Method {#section_nl2_hjv_vxb .section}

Your business may use the direct write-off method for financial reporting when you can determine that an amount will be uncollectible in the period when the sale took place and that the amount represents an insignificant amount, as with bank charges. The direct write-off method ignores tax amounts previously paid to a tax authority on the documents being written off. You may need to manually record the written-off amounts and the corresponding tax amounts to use them for adjustments to the tax return.

In the direct method, a write-off requires a journal entry that increases an expense account \(the Balance Write-Off account\) and a journal entry that decreases accounts receivable for the customer. You configure a reason code that determines the expense account and then write off an amount from a customer invoice by using this reason code.

If you write off customer credits, the amount will be recognized as income, and the customer balance of accounts receivable will be increased. You configure a reason code that determines the income account and then write off an amount from a customer invoice by using this reason code.

If a customer pays a debt that has been written off, you enter the payment as usual and do not apply it to any document. You then write off the payment by using a document of the *Credit WO* type.

## Allowance Method {#section_sl2_hjv_vxb .section}

The allowance method is based on the idea that some of customer debts will not be paid, although companies do not know in advance which customers will not pay. This method involves using two special accounts:

-   Allowance for Doubtful Accounts: This contra asset account to accounts receivable contains the estimated amount of the debts that will not be collected. The estimate may be a percentage of sales or an amount based on an aging analysis of accounts receivable.
-   Bad Debts Expense: This is a temporary expense account that reports credit losses for only the period shown on the income statement.

The allowance method is used as follows: At the end of the accounting period, you estimate the amount to become uncollectible in accounts receivable and manually update accounts by using the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form. Accounts are affected as shown below.

|Account|Debit|Credit|
|-------|-----|------|
|Bad Debts Expense|Amount|0.00|
|Allowance for Doubtful Accounts|0.00|Amount|

You configure a reason code that points to the Allowance for Doubtful Accounts account. When a specific customer's account is identified as uncollectible, you write off debts by using this reason code. Accounts are affected as shown below.

|Account|Debit|Credit|
|-------|-----|------|
|Allowance for Doubtful Accounts|Amount|0.00|
|AR Account \(customer account\)|0.00|Amount|

Under the allowance method, a write-off does not change the net realizable value of accounts receivable. It simply reduces accounts receivable and the allowance for bad debts by equivalent amounts.

## Write-Offs in Sales Invoices {#section_xl2_hjv_vxb .section}

When sales orders and their applied payments are imported to Acumatica ERP, a small discrepancy can occur between the payment amount applied to a sales order and the amount of the sales invoice for this sales order \(for example, because of the system recalculating the taxes in the sales invoice\). For more details on how to configure automatic write-offs in these cases, see [Configuration of Automatic Write-Offs in Invoices](SO__con_Config_Write_Offs.md).

**Parent topic:**[Processing Direct Write-Offs](../UserGuide/Finance_Direct_Write-Offs_Mapref.md)

