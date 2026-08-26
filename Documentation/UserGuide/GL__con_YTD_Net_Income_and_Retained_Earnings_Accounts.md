# YTD Net Income and Retained Earnings Accounts {#_d7522b11-d12d-48a2-8e30-e29c900108b0 .concept}

In Acumatica ERP, you must create two system-maintained accounts of the *Liability* type: YTD \(Year-to-Date\) Net Income and Retained Earnings. You need to create these accounts on the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form and specify them on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form before any actual data is entered.

In this topic, you will read about the YTD \(Year-to-Date\) Net Income and Retained Earnings accounts.

## YTD \(Year-to-Date\) Net Income Account {#section_bv2_mjv_vxb .section}

The YTD Net Income account tracks the net income accumulated since the beginning of the financial year—that is, the difference between the amounts posted to all income and expense accounts. The system updates this account for every transaction posted to an income or expense account. When the system updates the balance of the YTD Net Income account, it also updates the beginning balance of the Retained Earnings account in the next financial years for which the financial periods are defined. For a new financial year, the system resets the balance of YTD Net Income to zero for a new financial year.

**Note:** Users cannot post transactions directly to the YTD Net Income account. After any transaction has been posted to an income or expense account, the selected YTD \(Year-to-Date\) Net Income account cannot be changed in the **YTD Net Income Account** box on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form.

## Retained Earnings Account {#section_ev2_mjv_vxb .section}

The Retained Earnings account accumulates the company’s net income or loss that is retained by the company. Retained earnings are summarized over the years since the first year of company operations. You can also post direct transactions to this account, such as dividends paid to shareholders. This account is normally reported in the Shareholders' Equity section of the balance sheet.

**Parent topic:**[Managing the Chart of Accounts](../UserGuide/GL__MNG_Managing_Accounts_and_Subaccounts.md)

