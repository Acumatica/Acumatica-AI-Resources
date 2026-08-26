# Control Accounts: General Information {#_29cf6881-e21f-4130-94fb-f10bfd511ff7 .concept}

A control account is a general ledger account that aggregates the balances of entities in a subledger; it can be used for analytical purposes as well as for the reconciliation of balances between subledgers and the general ledger.

## Learning Objectives {#section_igf_mjv_vxb .section}

In this chapter, you will learn how control accounts are defined in Acumatica ERP and how the system restricts the use of control accounts.

## Applicable Scenarios {#section_kgf_mjv_vxb .section}

The functionality of control accounts is available in Acumatica ERP by default. We recommend that control accounts be configured for the general ledger and all applicable subledgers.

It is possible, although not recommended, that you could configure no GL accounts as control accounts. In this case, when a non-control account is selected in a box where the system expects a control account for the applicable subledger to be selected, a warning is displayed.

## Control Account Configuration {#section_ngf_mjv_vxb .section}

You indicate that an account is used as a control account for a particular subledger by selecting the subledger in the **Control Account Module** column for this account on the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form.

The options that are displayed in the drop-down box depend on the features enabled on the [Enable/Disable Features](CS_10_00_00.md#) \(CS100000\) form, as shown in the following table.

|Value|Subledger|Availability|
|-----|---------|------------|
|*AP*|Accounts payable|Always displayed|
|*AR*|Accounts receivable|Always displayed|
|*TX*|Taxes|Always displayed|
|*FA*|Fixed assets|Displayed if the *Fixed Asset Management* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md#) \(CS100000\) form|
|*DR*|Deferred revenue|Displayed if the *Deferred Revenue Management* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md#) form|
|*IN*|Inventory|Displayed if the *Inventory and Order Management* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md#) form|
|*PO*|Purchase orders|
|*SO*|Sales orders|

## Restricted Use of Control Accounts {#section_qgf_mjv_vxb .section}

The following limitations apply to the definition of an account as a control account on the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form and to the selection of a control account in a box or column in which an account is selected on various data entry and maintenance forms:

-   If a particular subledger has been selected in the settings of a control account on the [Chart of Accounts](GL_20_25_00.md) form, you can select the account in a box or column \(for selecting an account\) only if it is related to the same subledger. If you try to select the control account in a box or column related to any other subledger, an error occurs. For example, suppose a control account has the accounts payable subledger selected. The system generates an error if you try to select this account in the **AR Account** box of the **GL Accounts** tab of the [Customers](AR_30_30_00.md) \(AR303000\) form, which is related to the accounts receivable subledger.
-   By default, users cannot post transactions directly to a control account. If you try to select a control account in a box or column where the system expects a non-control account to be selected \(for example, a sales account or an expense account\), an error occurs. You can allow direct posting to the control account by selecting the **Allow Manual Entry** check box in the settings of the account on the [Chart of Accounts](GL_20_25_00.md) form. With this check box selected for the control account, if you select the control account in a box where a non-control account should be selected, the system displays a warning instead of an error.
-   A control account cannot be selected as a cash account. That is, on the [Chart of Accounts](GL_20_25_00.md) form, the **Cash Account** check box is unavailable for accounts for which a subledger is selected in the **Control Account Module** column.

    Similarly, you cannot select a cash account as a control account. That is, if the **Cash Account** check box is selected for an account, the **Control Account Module** column is unavailable. Accordingly, control accounts are not displayed for selection in the **Account** box on the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form.


A non-control account can be selected in a lookup box in which the system expects a control account to be selected. In this case, the system displays a warning that this account is not configured as a control account.

For documents that the system generates automatically, except for transactions generated on the [Journal Vouchers](GL_30_40_00.md) \(GL304000\) form, the system does not verify that accounts of the expected types \(that is, control accounts or non-control accounts\) are selected in lookup boxes and columns.

On the [Journal Vouchers](GL_30_40_00.md) \(GL304000\) form, when a new AR or AP document is added to a batch, the system expects a control account configured for the AR or AP subledger in the **Debit Account** or **Credit Account** column, depending on the transaction code selected in the **Tran. Code** column, as follows:

-   **Debit Account**:
    -   If a code that you have selected in the **Tran. Code** column is configured for the AR subledger and the *Invoice* or *Debit Memo* transaction type, the account selected in the **Debit Account** column is expected to be a control account for the AR subledger.
    -   If a code that you have selected in the **Tran. Code** column is configured for the AP subledger and the *Debit Adjustment*, *Payment*, or *Prepayment* transaction type, the account selected in the **Debit Account** column is expected to be a control account for the AP subledger.
-   **Credit Account**:
    -   If a code that you have selected in the **Tran. Code** column is configured for the AR subledger and the *Credit Memo*, *Payment*, or *Prepayment* transaction type, the account selected in the **Credit Account** column is expected to be a control account for the AR subledger.
    -   If a code that you have selected in the **Tran. Code** column is configured for the AP subledger and the *Bill* or *Credit Adjustment* transaction type, the account selected in the **Credit Account** column is expected to be a control account for the AP subledger.

**Parent topic:**[Managing Control Accounts](../UserGuide/Finance_Control_Accounts_Mapref.md)

