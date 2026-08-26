# To Reconcile AP Accounts and AR Accounts with the General Ledger Accounts {#_f8234bf6-7fbd-4636-9923-dc26d3317a15 .task}

You use the [Discrepancies by Account](AP_40_90_10.md) \(AP409010\) and [Discrepancies by Account](AR_40_90_10.md) \(AR409010\) forms to find discrepancies between the balances of AP accounts and AR accounts in the GL and in a subledger \(AP or AR\) with the accounts listed for a particular range of financial periods.

**Attention:** To open any form, you can navigate to it or search for it \(by its name or by its form ID without periods\).

## To Reconcile AP Accounts and AR Accounts with General Ledger Accounts {#section_ykm_mjv_vxb .section}

1.  Open the [Discrepancies by Account](AP_40_90_10.md) \(AP409010\) or [Discrepancies by Account](AR_40_90_10.md) \(AR409010\) form.
2.  In the **Branch** box, select the branch for which you want to view data.
3.  In the **From Period** and **To Period** boxes, specify the start and end of the range of financial periods where you want to find discrepancies.
4.  In the **Account** box, select the AP or AR account in which you want to find discrepancies.
5.  Optional \(if subaccounts are used in your system\): In the **Subaccount** box, do one of the following:
    -   Specify a subaccount to view account information, including any discrepancy, for the account-subaccount pair.
    -   Specify a mask to view information on a group of subaccounts. To define a mask, specify the values for only some of the segments. The system will list a row for each account-subaccount pair that meets the selection criteria.
    -   Leave this box blank to view the balances of the account detailed by all relevant subaccounts of the account.
6.  Select the **Show Only Documents with Discrepancies** check box.
7.  In the table, view the list of accounts displayed by the system and the discrepancies in them \(shown in the **Discrepancy** column\). Notice the records with nonzero amounts in the **Non-AP Transactions** or **Non-AR Transactions** column.
8.  Optional: Click the link in the **Discrepancy** column for a particular row to open the [Discrepancies by Vendor](AP_40_90_20.md) \(AP409020\) or [Discrepancies by Customer](AR_40_90_20.md) \(AR409020\) form to view more details.

## Notes About the Procedure {#section_zkm_mjv_vxb .section}

The notes in this section describe the nuances of the UI elements available on the form, such as when an element is required and when it is not, and when the system fills in settings by default. This section can include other notes.

Note the following about the Summary area of the form:

-   The **Branch** box is available only if the *Multibranch Support* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
-   The **Subaccount** box is available only if the *Subaccounts* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form.

**Parent topic:**[Troubleshooting Balance Discrepancies](../UserGuide/FIN__MNG_Troubleshooting_Balance_Discrepancies.md)

