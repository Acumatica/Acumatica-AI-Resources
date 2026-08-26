# Revaluation of AR Documents: Generated Transactions {#_9e0bbff4-615d-4329-988d-936efc3edd1d .concept}

When you perform a revaluation of open AR documents, the system creates a revaluation batch with the results of the revaluation. This auto-reversing batch is automatically reversed on the date at the beginning of the next financial period.

The batch updates the unrealized gain or loss account with the calculated gain or loss amount. The account updated by the batch is selected by the system in the following order of priority:

1.  The account for the customer class, which is specified in the **Unrealized Gain Account** or **Unrealized Loss Account** box on the **GL Accounts** tab of the [Customer Classes](AR_20_10_00.md) \(AR201000\) form
2.  If the applicable box on the [Customer Classes](AR_20_10_00.md) form is empty, the account for the currency, which is specified in the **Unrealized Gain Account** or **Unrealized Loss Account** box on the **GL Accounts** tab of the [Currencies](CM_20_20_00.md) \(CM202000\) form

The system calculates the difference between the revalued balance and the original balance in the **Difference** column for each account in the selected currency.

Revaluation gains and losses are included in the net income on the period-end reports.

## Transactions Generated for Revaluation Loss {#section_ijz_3jv_vxb .section}

If the difference between the revalued balance and the original balance is negative, the revaluation has resulted in losses, and the system generates a batch that posts to the accounts shown in the following tables.

Depending on whether the provisioning account has been specified, the system generates either of the following batches.

|Account|Debit|Credit|
|-------|-----|------|
|Accounts Receivable account|00.00|Amount|
|Unrealized Loss account|Amount|00.00|

|Account|Debit|Credit|
|-------|-----|------|
|Accounts Receivable Provisioning account|00.00|Amount|
|Unrealized Loss account|Amount|00.00|

## Transactions Generated for Revaluation Gains {#section_ljz_3jv_vxb .section}

If the difference between the revalued balance and the original balance is positive, the revaluation has resulted in gains, and the system generates a batch that posts to the accounts shown in the following tables.

Depending on whether the provisioning account has been specified, the system generates either of the following batches.

|Account|Debit|Credit|
|-------|-----|------|
|Accounts Receivable account|Amount|00.00|
|Unrealized Gain account|00.00|Amount|

|Account|Debit|Credit|
|-------|-----|------|
|Accounts Receivable Provisioning account|Amount|00.00|
|Unrealized Gain account|00.00|Amount|

**Parent topic:**[Revaluing Open AR Documents](../UserGuide/Multicurrency_RevaluationAR_Mapref.md)

