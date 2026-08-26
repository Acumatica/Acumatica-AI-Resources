# Revaluation of Bank Accounts: Generated Transactions {#_da86e4d8-569d-48a7-b84f-838cf68578f1 .concept}

When you perform a revaluation of a bank account, the system calculates the difference between the revalued balance and the original balance in the **Difference** column on the [Revalue GL Accounts](CM_50_60_00.md) \(CM506000\) form for each denominated account in the selected currency.

## Transaction Generated for Revaluation Gain {#section_stz_3jv_vxb .section}

If the difference between the revalued balance and the original balance is positive, the revaluation results in gains, and the system generates a batch that posts to the accounts shown in the following table.

|Account|Debit|Credit|
|-------|-----|------|
|Denominated account|Amount|00.00|
|Revaluation Gain account|00.00|Amount|

## Transaction Generated for Revaluation Loss {#section_utz_3jv_vxb .section}

If the difference between the revalued balance and the original balance is negative, the revaluation results in losses, and the system generates a batch that posts to the accounts shown in the following table.

|Account|Debit|Credit|
|-------|-----|------|
|Denominated account|00.00|Amount|
|Revaluation Loss account|Amount|00.00|

**Parent topic:**[Revaluing Bank Accounts](../UserGuide/Multicurrency_RevaluationGL_Mapref.md)

