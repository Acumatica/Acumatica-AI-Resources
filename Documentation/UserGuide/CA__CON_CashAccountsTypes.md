# Cash Account Types {#_53e82ded-c693-4d69-ad58-9cb15aff45cb .concept}

In Acumatica ERP, you can configure cash accounts of different types that suit your company policy. The type of a cash account depends on the purpose you want to use this account for—for example, to record petty cash flow, or to temporarily store payments for future clearing or reclassification. Generally, cash accounts can be divided as follows:

-   General-purpose cash accounts
-   Bank cash accounts
-   Clearing cash accounts
-   Cash accounts for unknown payments
-   Cash account for a corporate card

For details on configuring a cash account, see [To Create a Cash Account](CA__How_to_Create_Cash_Account.md).

See the following sections for details about each type of a cash account, including its purpose, configuration, and maintenance.

## General-Purpose Cash Accounts {#section_wp1_kjv_vxb .section}

A general-purpose cash account, sometimes referred to as a *cash-on-hand account*, is one that you use to record transactions performed with cash you hold in a till. You record outgoing payments to vendors and incoming payments received from customers.

You link a general-purpose cash account to a General Ledger account of the *Asset* type to track transactions in the General Ledger module. To be able to record incoming and outgoing payments, you need to associate this cash account with payment methods and entry types that are configured for usage in the Accounts Receivable and Accounts Payable modules. For example, you may need entry types for cash advances, cash receipts, or customer payments.

If needed, you can create a separate general-purpose cash account to record coins and cash that the company keeps on hand for small purchases \(sometimes referred to as a *petty cash account*\). Periodically, petty cash is replenished and should be reconciled with the receipts \(that is, with any paper trail that is kept\).

## Bank Cash Accounts {#section_aq1_kjv_vxb .section}

A bank cash account is a cash account you use to record the financial transactions between your organization and the bank. You create a separate cash account for each bank account. For example, you may have a regular checking account and a savings account.

You link a bank cash account to a General Ledger account of the *Asset* type to trace transactions in the General Ledger module. To be able to record incoming and outgoing payments, you need to associate this cash account with the payment methods and entry types that are configured for use in the Accounts Receivable and Accounts Payable modules. For example, you can use an entry type to record interest income to your savings account and an entry type used to record bank charges to your regular checking account. Also, you can associate a bank \(created as a vendor\) with each bank cash account, for informational purposes.

If you plan to make deposits into this bank account, you need to associate it with a clearing cash account that is configured to temporarily hold the money before it is deposited. \(Clearing cash accounts are described in the next section.\)

Because each bank account is maintained by the bank, the bank's records over time may differ with those of your organization, so periodic reconciliations are required.

## Clearing Cash Account {#section_fq1_kjv_vxb .section}

A clearing cash account is a cash account that you use to temporarily store payments, checks, and cash that will be eventually deposited to the bank \(and, hence, transferred from these clearing accounts to the appropriate bank accounts\). Clearing accounts should not be used for payments to vendors.

You associate a clearing cash account with a General Ledger account of the *Asset* type to track transactions in the General Ledger module. To be able to record incoming payments, you need to associate this cash account with payment methods that are based on the *Cash and Check* means of payment, used in the Accounts Receivable module, and involved in creating batch deposits. Clearing accounts should be set as the default cash accounts for associated payment methods.

To be able to transfer deposits from clearing accounts to a specific cash account that represents a bank account, you need to assign these clearing accounts to the respective bank cash accounts. You can provide recognizable names, such as *Non-Deposited Checks* for clearing accounts to be used for checks and *Cash to be Deposited* for clearing accounts to be used for cash. For clearing accounts, no entry types are specified, and reconciliation is not performed.

## Cash Account for Unknown Payments {#section_jq1_kjv_vxb .section}

You use a cash account for unknown payments to temporarily hold payments that cannot be entered as valid because the customer or vendor is unknown.

We recommend that you associate such a cash account with a General Ledger account of the *Liability* type to track transactions in the General Ledger module. To be able to record such payments, you need to associate this cash account with payment methods used in the Accounts Payable and Accounts Receivable module. Note, that an entry type that has an unknown payment account specified as the reclassification account should be associated with a bank cash account, to which you may receive such payments. Since accounts that temporarily store unknown payments are cash accounts denominated in specific currencies, special entry types should be created for each currency involved.

For more details about managing accounts for unknown payments, see [Reclassification of Unknown Payments](CA__con_Reclassification_of_Payments.md).

## Cash Account for a Corporate Card {#section_nq1_kjv_vxb .section}

You can also use a cash account to accrue expenses paid by a corporate credit card. You can use the same cash account for all corporate credit cards of the same currency or create separate cash accounts. If subaccounts are defined in your system, you can use them to distinguish transactions made with different credit cards of the same currency.

We recommend that you associate a cash account for a corporate card with a General Ledger account of the *Liability* type to track transactions in the General Ledger module. To be able to record payments, you need to associate this cash account with a payment method that represents a corporate credit card. For details, see [Payment Methods for Vendors](CA__CON_PMs_for_Vendors.md).

**Parent topic:**[Configuring Cash Accounts](../UserGuide/CA__MNG_CashAccounts.md)

