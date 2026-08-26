# Mapping of Multiple Bank Accounts to One Cash Account {#_5f438151-fb81-44ed-b073-b262a5181441 .concept}

You can set up bank feeds to map multiple bank accounts to one cash account in Acumatica ERP. With this functionality, users can do the following:

-   Load bank transactions for one cash account from different bank accounts and financial periods
-   Manually change the start date for importing transactions to Acumatica ERP
-   Load transactions from multiple bank feeds for one cash account

This functionality is available in the system if the *Bank Feeds* and *Mapping of Multiple Accounts for Bank Feeds* features are enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Setup Overview { .section}

To set up this functionality, you perform the following general steps:

1.  On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you enable the *Mapping of Multiple Accounts for Bank Feeds* feature under **Experimental Features**.
2.  On the [Bank Feeds](CA_20_55_00.md) \(CA205500\) form, you set up the Plaid or MX integration, selecting the **Map Multiple Bank Accounts to One Cash Account** check box in the Summary area.
3.  On the **Cash Accounts** tab, you map a cash account to a bank account.

    For details, see [To Set Up Plaid Integration](CA__HOW_Set_Up_Plaid_Integration.md) and [To Set Up MX Integration](CA__HOW_Set_Up_MX_Integration.md).


## Date Selection Rules { .section}

When you select the **Map Multiple Bank Accounts to One Cash Account** check box for a bank feed on the [Bank Feeds](CA_20_55_00.md) \(CA205500\) form, multiple bank accounts can be matched to a single cash account. With this check box selected, for each mapped bank account in the bank feed, the system does the following on the [Bank Feeds](CA_20_55_00.md) form:

-   Makes the **Import Transactions From** column available on the **Cash Accounts** tab for a particular bank account line. The system calculates the default date by using the rules described below, but you can change this date to a later one. \(The system will prevent you from specifying a date that is earlier than the calculated date.\)

    **Attention:** The **Import Transactions From** date remains unavailable and cannot be overridden if the **Map Multiple Bank Accounts to One Cash Account** check box is cleared for the bank feed.

-   Checks whether any transactions were loaded for the cash account from the bank feed for a particular bank account for which the **Bank Feed Account** column contains the bank account name and mask. If transactions were loaded, updates the **Import Start Date** column with the latest of the following dates:

    -   The date specified in the **Import Start Date** box in the Summary area
    -   The date of the most recent bank transaction loaded for the cash account from the bank feed for a particular bank account if the **Bank Feed Account** column contains the bank account name and mask.
    If no transactions were loaded for the cash account from a particular bank account, the system will update the **Import Start Date** column with the latest of the following dates:

    -   The date specified in the **Import Start Date** box in the Summary area
    -   The date of most recent bank transaction loaded for the cash account from the bank feed for which the **Bank Feed Account** column is empty
    -   The date that is one day after the most recent bank transaction that was entered manually by a user
    You can override the dates in the **Import Start Date** box of the Summary area and in the **Import Transactions From** column on the **Cash Accounts** tab.

    **Tip:** If you need to revert to the date calculated by the system, you need to manually clear the entered value in the **Import Transactions From** column. The system will recalculate the dates and populate the date in the **Import Transactions From** column.


## Transaction Retrieval of Plaid Bank Feeds { .section}

**Attention:** In the production environment for Plaid bank feeds, the Plaid data provider does not allow the same bank feed to be called more than 30 times per minute. To avoid this limitation, Acumatica ERP’s API requests combine accounts into one bank feed while the API requests new transactions from Plaid.

Transactions are retrieved for one bank feed account in either of the following cases:

-   On the [Bank Feeds](CA_20_55_00.md) \(CA205500\) form, you clicked **Load Transactions in Test Mode** on the More menu and selected one bank account in the **Load Transactions in Test Mode** dialog box.
-   On the [Import Bank Transactions](CA_30_65_00.md) \(CA306500\) or [Process Bank Transactions](CA_30_60_00.md) \(CA306000\) form, you clicked **Retrieve Transactions** on the form toolbar and both of the following conditions are met in the system:
    -   On the [Cash Management Preferences](CA_10_10_00.md) \(CA101000\) form, the **Import Bank Statement to Single Cash Account** check box is selected in the **Import Settings** section of the **Bank Statements** tab.
    -   On the [Bank Feeds](CA_20_55_00.md) form, the **Map Multiple Bank Accounts to One Cash Account** check box is cleared for the bank feed.

Transactions are retrieved for all mapped bank feed accounts in either of the following cases:

-   On the [Retrieve Bank Feed Transactions](CA_50_75_00.md) \(CA507500\) form, you selected a bank feed and clicked **Process** on the form toolbar. Alternatively, the [Automation Schedules](SM_20_50_20.md) \(SM205020\) form has been used to schedule this process to occur automatically.
-   On the [Import Bank Transactions](CA_30_65_00.md) or [Process Bank Transactions](CA_30_60_00.md) form, you clicked **Retrieve Transactions** on the form toolbar and both of the following conditions are met in the system:
    -   On the [Cash Management Preferences](CA_10_10_00.md) form, the **Import Bank Statement to Single Cash Account** check box is cleared in the **Import Settings** section of the **Bank Statements** tab.
    -   On the [Bank Feeds](CA_20_55_00.md) form, the **Map Multiple Bank Accounts to One Cash Account** check box is cleared for the bank feed.
-   On the [Import Bank Transactions](CA_30_65_00.md) or [Process Bank Transactions](CA_30_60_00.md) form, you clicked **Retrieve Transactions** on the form toolbar and the **Map Multiple Bank Accounts to One Cash Account** check box is selected for the bank feed on the [Bank Feeds](CA_20_55_00.md) form.

If the **Map Multiple Bank Accounts to One Cash Account** check box is selected for a bank feed on the [Bank Feeds](CA_20_55_00.md) form, the system uses the following rules of retrieving transactions:

-   If you select a cash account to which multiple bank accounts are mapped and click **Retrieve Transactions** on the form toolbar of the [Import Bank Transactions](CA_30_65_00.md) or [Process Bank Transactions](CA_30_60_00.md) form, the system uses the date in the **Import Transactions From** column to fetch data for each bank account within the affected feeds. Because the same cash account can be used in multiple bank feeds, all bank feeds with the *Active* or *Setup Required* status are processed.
-   The system ignores the state of the **Import Bank Statement to Single Cash Account** check box in the **Import Settings** section of the **Bank Statements** tab on the [Cash Management Preferences](CA_10_10_00.md) form. If the bank feed has the **Map Multiple Bank Accounts to One Cash Account** check box selected on the [Bank Feeds](CA_20_55_00.md) form, the system always proceeds as if the **Import Bank Statement to Single Cash Account** check box is cleared.
-   Once the download of transactions is complete, the system shows all bank feeds that were affected, all accounts, and the number of transactions that were fetched and created. This information can be reviewed in the **Bank Feed Account** column on the [Import Bank Transactions](CA_30_65_00.md) and [Process Bank Transactions](CA_30_60_00.md) form.

**Parent topic:**[Integrating Acumatica ERP with Bank Feeds](../UserGuide/CA__MNG_Bank_Feed_Integration.md)

