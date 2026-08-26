# To Create a Cash Account {#_bc38dce7-4f0d-481d-b91b-82ffbcdffcb4 .task}

You use the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form to create a cash account.

## Before You Proceed {#section_ts1_kjv_vxb .section}

Do the following to make sure that all prerequisites are met before you create a cash account:

-   Determine which type of cash account you want to create; for details on each type, see [Cash Account Types](CA__CON_CashAccountsTypes.md).
-   Check the internal agreements your organization has about identifiers used for GL accounts and cash accounts. For information about cash account identifiers, see [Cash Account Configuration](CA__CON_CashAccount_Definition.md).
-   Review the structure of subaccounts and the meanings of their segment values in your organization, and choose the subaccounts to be used for the cash accounts to be created.
-   By using the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form, verify the existence of the GL account to which you will link new cash accounts, or create a designated GL account for this purpose. The GL account type depends on the type of cash account you have decided to create.
-   If this cash account is to be denominated to a foreign currency, review the types of exchange rates to be used for currency conversions and create a new rate if needed. For details, see [Configuration of Rate Types and Rates: General Information](../ImplementationGuide/config_Multicurrency_Configuring_Rates_GeneralInfo.md).
-   Consider how you want to restrict the visibility of the cash account. For details, see [Security of Cash Accounts](CA__CON_Access_to_CashAccounts.md).

You can perform the following operations before or after creating a cash account:

-   By using the [Entry Types](CA_20_30_00.md) \(CA203000\) form, create the entry types to be used for recording cash transactions to the cash account. For details, see [Entry Types](CA__CON_EntryTypes.md).
-   On the [Payment Methods](CA_20_40_00.md) \(CA204000\) form, create the payment methods to be used with the cash account. For details, see [Managing Payment Methods](CA__MNG_PaymentMethods.md).
-   If you are creating a bank cash account and plan to make deposits, create clearing cash accounts to associate with the bank cash account. For details, see [Cash Account Types](CA__CON_CashAccountsTypes.md).

**Note:** If you create the entry types, payment methods, and clearing cash accounts after you have created the cash account, you need to associate them with the cash account by using the table toolbars of the **Entry Types**, **Payment Methods**, and **Clearing Accounts** tabs on the [Cash Accounts](CA_20_20_00.md) form.

## To Create a Cash Account Linked to a GL Account {#section_xs1_kjv_vxb .section}

1.  Open the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form.
2.  On the form toolbar, click **Add New Record**.
3.  In the **Cash Account** box, type the identifier for the new cash account. If cash account identifiers in your system have multiple segments, type the segment values or select them from the list of allowed values.
4.  In the **Account** box, select the GL account from the list of accounts available in the chart of accounts.

    **Note:**

    -   GL accounts configured as control accounts for a subledger do not appear in this list and cannot be selected. For more information on control accounts, see [Control Accounts: General Information](Finance_Control_Accounts_GeneralInfo.md).
    -   The system automatically fills in the **Currency** box with the appropriate value.
5.  In the **Subaccount** box, select the subaccount to be used with this cash account.
6.  In the **Branch** box, select the branch that will use this cash account.
7.  If this cash account is denominated to a foreign currency, in the **Curr. Rate Type** box, select the type of exchange rate to be used for currency conversions.
8.  In the **Description** box, type a description for the cash account.
9.  Optional: Select the **Clearing Account** check box to indicate that the cash account is used to record undeposited payments.
10. Optional: Select the **Requires Reconciliation** check box to indicate that reconciliations are required for this account, and select a numbering sequence for these reconciliations in the **Reconciliation Numbering Sequence** box.
11. Optional: Select the **Restrict Visibility with Branch** check box to make this cash account visible to only a user signed in to the branch that is associated with this cash account.
12. Optional: Select the **Match Bank Transactions to Batch Payments** check box to indicate that during the processing of the imported bank transactions, the system should search for a match among Accounts Payable batch payments \(which group documents for further processing by a money transfer operator\). For details, see [Batch Payment Matching](CA__CON_BatchPaymentsMatching.md).
13. Optional: If you are creating a bank account and have configured a vendor to represent a bank your company works with, in the **Bank ID** box, specify the vendor identifier for informational purposes.
14. Optional: If you have configured the payment methods to be used to record transactions to this cash account, on the **Payment Methods** tab, add the payment methods and specify the appropriate settings in the row for each payment you add. For details on these settings, see [Payment Methods for Customers](CA__CON_PMs_for_Customers.md) and [Payment Methods for Vendors](CA__CON_PMs_for_Vendors.md).
15. Optional: If you are creating a bank account and have configured the clearing accounts to hold non-deposited payments, on the **Clearing Accounts** tab, add these accounts to the table.
16. Optional: If you have configured the entry types to be used to record transactions to this cash account, on the **Entry Types** tab, add them to the table.

    **Tip:** You can define one entry type as the default one for this cash account by selecting the **Is Default** check box for it.

    The system will fill in the default entry type on the [Cash Transactions](CA_30_40_00.md) \(CA304000\) and [Funds Transfers](CA_30_10_00.md) \(CA301000\) form, and in the **Quick Transaction** dialog box on the [Cash Account Details](CA_30_30_00.md) \(CA303000\) and [Reconciliation Statements](CA_30_20_00.md) \(CA302000\) forms, but you can override this value.

17. Optional: On the **Remittance Settings** tab, which appears if at least one of the payment methods specified for the cash account requires remittance information, in the **Value** column for each row, provide the required information. For details, see [Setup of ACH Payment Processing](CA__CON_Setup_ACH_Payments.md).
18. On the form toolbar, click **Save**.
19. Open the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form.
20. Make sure that the read-only **Cash Account** check box is selected for the GL account to which you linked the cash account you created.

    This check box indicates that the new cash account has been successfully linked to the GL account and that all transactions of the GL account will be traced in the cash management subledger.


After a cash account is configured and linked to the selected GL account, you need to run validation of the cash account balance in the cash management subledger, in case transactions were posted to the GL account before you created the cash account and linked it. For details, see [To Run Recalculation of Cash Account Balances](CA__HOW_To_ValidateCashAccountBalance.md).

**Parent topic:**[Configuring Cash Accounts](../UserGuide/CA__MNG_CashAccounts.md)

