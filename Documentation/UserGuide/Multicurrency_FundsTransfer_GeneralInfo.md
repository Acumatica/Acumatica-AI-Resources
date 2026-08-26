# Multicurrency Funds Transfers: General Information {#_c431dd23-9bc9-47f6-9980-bce64f61a0fa .concept}

In Acumatica ERP, you can record cash transfers in foreign currencies from one bank account to another, or between cash accounts that are linked to the same GL account and represent the same bank account.

## Learning Objectives {#section_ekw_3jv_vxb .section}

You will learn how to record a funds transfer in a foreign currency between cash accounts.

## Applicable Scenarios {#section_gkw_3jv_vxb .section}

You record a funds transfer when you need to redistribute funds in foreign currencies between different companies or branches of your organization. You can also move funds from one bank account to another—for example, when you want to deposit funds from one of the company's checking accounts to a savings account.

## Processing of a Funds Transfer {#section_ikw_3jv_vxb .section}

To process a funds transfer, you first create it on the [Funds Transfers](../Shared/../UserGuide/CA_30_10_00.md) \(CA301000\) form. Then you release the transfer on any of the following forms:

-   [Funds Transfers](../Shared/../UserGuide/CA_30_10_00.md) \(CA301000\): You release the funds transfer you are viewing by clicking **Release** on the form toolbar.
-   [Release Cash Transactions](../Shared/../UserGuide/CA_50_20_00.md) \(CA502000\): You use this form to release a particular funds transfer or multiple funds transfers. On this form, funds transfers have the *Transfer* type, and transactions that correspond to the same transfer have the same transaction number. To release all transactions of a particular funds transfer, you need to select only one transaction of the funds transfer by selecting the unlabeled check box in the row of the transaction; you then release it by clicking **Release** on the form toolbar. The system releases the other transactions of the funds transfer automatically.
-   [Cash Account Details](../Shared/../UserGuide/CA_30_30_00.md) \(CA303000\): You can use this form to release a particular funds transfer or multiple funds transfers. On this form, you first select the cash account that is the source account or destination account of your funds transfer, and then the system displays a list of transactions that includes the funds transfer transaction of the *Transfer Out* or *Transfer In* type, depending on whether the account you selected is a source account or destination account. To release all transactions of the funds transfer, you need to select only one transaction of the funds transfer by selecting the unlabeled check box in the row of the transaction; you then click **Release** on the form toolbar. The system releases the other transactions of the funds transfer automatically.

During processing, a funds transfer can have the following statuses.

|Status|Description|
|------|-----------|
|*On Hold*|The transfer is being edited and cannot be released.|
|*Balanced*|The transfer is balanced and can be released.|
|*Released*|The transfer has been released.|

## Currency Conversion in Funds Transfers {#section_jkw_3jv_vxb .section}

If you transfer funds between accounts denominated in different currencies, the system performs currency conversion by using the base currency and the cash-in-transit account and subaccount \(if subaccounts are in use in your system\) that are specified in the **Cash-In-Transit Account** and **Cash-In-Transit Subaccount** boxes on the [Cash Management Preferences](CA_10_10_00.md) \(CA101000\) form.

For transfers maintained in different currencies, you can change the exchange rate for a particular transfer, and you can change the amount received to the destination account if the exchange rate of the system differs from the exchange rate of the bank. If you change the received amount, the system calculates the realized gain or loss \(RGOL\) for the transfer.

**Parent topic:**[Processing Funds Transfers in Foreign Currencies](../UserGuide/Multicurrency_FundsTransfer_Mapref.md)

