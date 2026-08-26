# To Find Documents with Discrepancies Between the General Ledger and a Subledger {#_543513d7-d37d-4000-8b13-697645902aa0 .task}

You use the [Discrepancies by Document](AP_40_90_30.md) \(AP409030\) and [Discrepancies by Document](AR_40_90_30.md) \(AR409030\) forms to view a list of the documents associated with a particular vendor or customer that caused discrepancies between AP and GL accounts or AR and GL accounts.

You can search for or navigate to these forms directly. Also, the system navigates to these forms when you click the link in the **Discrepancy** column on the [Discrepancies by Vendor](AP_40_90_20.md) \(AP409020\) or [Discrepancies by Customer](AR_40_90_20.md) \(AR409020\) form.

**Attention:** To open any form, you can navigate to it or search for it \(by its name or by its form ID without periods\).

## To Find Documents with Discrepancies Between the General Ledger and a Subledger {#section_nmm_mjv_vxb .section}

1.  Open the [Discrepancies by Document](AP_40_90_30.md) \(AP409030\) or [Discrepancies by Document](AR_40_90_30.md) \(AR409030\) form.
2.  In the **Branch** box, select the branch for which you want to view data.
3.  In the **Financial Period** box, select the financial period where you want to find discrepancies in the documents posted in this period.
4.  In the **Vendor** or **Customer** box, select the vendor or customer whose documents you want to view.
5.  In the **Account** box, select the AP or AR account in which you want to find discrepancies. Leave this box blank if you want to view data on all accounts.
6.  Optional \(if subaccounts are used in your system\): In the **Subaccount** box, do one of the following:
    -   Specify a subaccount.
    -   Specify a mask to view information on a group of subaccounts. To define a mask, specify the values for only some of the segments. The system will list a row for each account-subaccount pair that meets the selection criteria.
    -   Leave this box blank to view balances of transactions on the account detailed by all relevant subaccounts.
7.  Select the **Show Only Documents with Discrepancies** check box.
8.  In the table, view the list of documents displayed by the system and the discrepancies between the GL account and subledger \(AP or AR\) account caused by the documents, which is shown in the **Discrepancy** column.
9.  Optional: Click the link in the **Reference Nbr.** column for a particular row to open and view the document in a separate window.
10. Optional: Click the link in the **Batch Nbr.** column for a particular row to open the GL batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\).

## Notes About the Procedure {#section_omm_mjv_vxb .section}

The notes in this section describe the nuances of the UI elements available on the form, such as when an element is required and when it is not, and when the system fills in settings by default. This section can include other notes.

Note the following about the Summary area of the form:

-   The **Branch** box is available only if the *Multibranch Support* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
-   The **Subaccount** box is available only if the *Subaccounts* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form.

**Parent topic:**[Troubleshooting Balance Discrepancies](../UserGuide/FIN__MNG_Troubleshooting_Balance_Discrepancies.md)

