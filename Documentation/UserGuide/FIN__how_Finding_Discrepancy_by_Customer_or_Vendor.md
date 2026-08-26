# To Find Vendors and Customers with Discrepancies Between the General Ledger and a Subledger {#_807ef9c9-0f4a-4ce2-981b-78003f5e16d1 .task}

You use the [Discrepancies by Vendor](AP_40_90_20.md) \(AP409020\) and [Discrepancies by Customer](AR_40_90_20.md) \(AR409020\) forms to show vendor and customer accounts with discrepancies between the accounts' balances in the subledger \(accounts payable or accounts receivable\) and the total of the transactions posted to the general ledger by the vendor or customer documents in the selected financial period.

You can search for or navigate to these forms directly. Also, the system navigates to these forms when you click the link in the **Discrepancy** column on the [Discrepancies by Account](AP_40_90_10.md) \(AP409010\) or [Discrepancies by Account](AR_40_90_10.md) \(AR409010\) form.

**Attention:** To open any form, you can navigate to it or search for it \(by its name or by its form ID without periods\).

## To Find Vendors and Customers with Discrepancies Between the General Ledger Accounts and Subledger Accounts {#section_ulm_mjv_vxb .section}

1.  Open the [Discrepancies by Vendor](AP_40_90_20.md) \(AP409020\) or [Discrepancies by Customer](AR_40_90_20.md) \(AR409020\) form.
2.  In the **Branch** box, select the branch for which you want to view data.
3.  In the **Financial Period** box, select a financial period where you want to find documents with discrepancies for a vendor or customer.
4.  In the **Vendor** or **Customer** box, select the vendor or customer for whose account you want to view data, or leave the box empty if you want to find all vendors or customers with discrepancies between the GL accounts and AP or AR accounts.
5.  In the **Account** box, select the AP or AR account in which you want to find discrepancies.
6.  Optional \(if subaccounts are used in your system\): In the **Subaccount** box, do one of the following:
    -   Specify a subaccount.
    -   Specify a mask to view information on a group of subaccounts. To define a mask, specify the values for only some of the segments. The system will list a row for each account-subaccount pair that meets the selection criteria.
    -   Leave this box blank to view the balances of the account detailed by all relevant subaccounts.
7.  Select the **Show Only Documents with Discrepancies** check box.
8.  In the table, view the list of vendors or customers that meet the selection criteria you have specified. Notice the discrepancies between each vendor or customer's balances in the subledger and the total of the transactions posted to GL by the vendor or customer's documents in the selected period.
9.  Optional: Click the link in the **Discrepancy** column for a particular row to open the [Discrepancies by Document](AP_40_90_30.md) \(AP409030\) or [Discrepancies by Document](AR_40_90_30.md) \(AR409030\) form to view more details.

## Notes About the Procedure {#section_vlm_mjv_vxb .section}

The notes in this section describe the nuances of the UI elements available on the form, such as when an element is required and when it is not, and when the system fills in settings by default. This section can include other notes.

Note the following about the Summary area of the form:

-   The **Branch** box is available only if the *Multibranch Support* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
-   The **Subaccount** box is available only if the *Subaccounts* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form.

**Parent topic:**[Troubleshooting Balance Discrepancies](../UserGuide/FIN__MNG_Troubleshooting_Balance_Discrepancies.md)

