# General Ledger: Chart of Accounts {#_67394d85-8e3e-4f9b-bcf0-8dfd02e2d15b .concept}

Each company has its own structured list of general ledger accounts. Acumatica ERP provides you with the ability to define a chart of accounts that suits your company's needs. To define the chart of accounts in the system, you have to perform the following tasks:

1.  Plan account identifiers if they have not yet been defined for the configured company
2.  Modify the *ACCOUNT* segmented key based on your planned structure, if necessary
3.  Add accounts to the chart of accounts \(including the Retained Earnings and YTD Net Income accounts\)
4.  Optional: Restrict user access to accounts

## Account Classes {#_45520be4-5f34-4f67-979c-7ecfaf120fcb .section}

For convenient grouping, sorting, and filtering of information associated with GL accounts in reports and inquiries, you can assign accounts to account classes on the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form. Acumatica ERP provides predefined account classes, which can be modified if needed, and you can add new account classes on the [Account Classes](../UserGuide/GL_20_20_00.md#) \(GL202000\) form. For details on how to create an account class in the system, see [To Create an Account Class](../UserGuide/GL__HOW_To_Create_an_Account_Class.md).

Before you add accounts to the chart of accounts, you should review the predefined account classes and learn about the capabilities of account classes so that you can determine which classes to assign to accounts.

## Entry of Chart of Accounts { .section}

In Acumatica ERP, you define the chart of accounts on the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form. When you define the chart of accounts, you assign to each account a name, a unique identifier, and an account type. You can prepare the chart of accounts in an `.xlsx` or `.csv` file and upload the file to the system. Alternatively, you can add accounts individually.

## Mandatory Accounts { .section}

In Acumatica ERP, you must create two system-maintained accounts of the *Liability* type: YTD \(Year-to-Date\) Net Income and Retained Earnings. Once you have created these accounts, you need to specify them on the [General Ledger Preferences](../UserGuide/GL_10_20_00.md) \(GL102000\) form.

The YTD Net Income account tracks the net income that has been accumulated since the beginning of the financial year—that is, the difference between the amounts that have been posted to all income accounts and the amounts that have been posted to all expense accounts. The system updates this account for every transaction posted to an income or expense account. For a new financial year, the system resets the balance of the YTD Net Income account to zero.

**Attention:** Users cannot post transactions directly to the YTD Net Income account. After any transaction has been posted to an income or expense account, the selected YTD Net Income account cannot be changed in the **YTD Net Income Account** box on the [General Ledger Preferences](../UserGuide/GL_10_20_00.md) form.

When the system updates the balance of the YTD Net Income account, it also updates the beginning balance of the Retained Earnings account in the next financial year for which financial periods are defined. The Retained Earnings account accumulates the net income or loss that is retained by the company. Retained earnings are summarized over all years, starting with the first year of company operations in Acumatica ERP. Users can also post direct transactions to this account, such as dividends paid to shareholders. This account is normally reported in the Shareholders' Equity section of the balance sheet.

**Parent topic:**[General Ledger](../ImplementationGuide/config_Mapref_GL.md)

