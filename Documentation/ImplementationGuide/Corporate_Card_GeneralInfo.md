# Corporate Cards: General Information {#_9df9da7e-0d88-46bb-8c01-e73729cc660b .concept}

By using Acumatica ERP, you can track payments to vendors, which your company or employees of your company have made by using a corporate credit card.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Create a GL account, cash account, and payment method for a corporate card
-   Create a vendor that represents the card issuer in the system
-   Create a corporate credit card in the system
-   Assign the corporate card to employees

## Applicable Scenarios { .section}

If the *Expense Management* feature is not included in your license, you configure a card issuer as a vendor; then you can track the corporate credit card payments and reconcile the credit card balance in the system with the card statement balance.

If the *Expense Management* feature is included in your license, you configure a corporate credit card to provide your employees with ability to pay work-related expenses from a corporate account.

## Configuration of Accounts and Payment Methods { .section}

To track payments that have been made by using a corporate credit card, you need to create a cash account that represents the corporate credit card in the system, link the cash account to an accrued liability account, and create a payment method.

The cash account that is used for corporate cards should be configured as follows:

-   A separate GL account should be configured for each bank \(card issuer\) and currency.

    For each corporate credit card, you define one accrued liability account in the chart of accounts. The accrued liability account must be in the same currency as the corporate credit card.

-   Each GL account has a separate cash account with the following settings specified on the [Cash Accounts](../UserGuide/CA_20_20_00.md) \(CA202000\) form:
    -   The cash account must be associated with the same branch as the corporate card is.
    -   The **Clearing Account** check box is cleared.
    -   The **Restrict Visibility with Branch** check box is cleared.
    -   The **Use for Corporate Cards** check box is selected.
    -   Only one payment method can be associated with the cash account—that is, only one payment method can be listed on the **Payment Methods** tab of the [Cash Accounts](../UserGuide/CA_20_20_00.md) form.
    -   Optionally, the **Requires Reconciliation** check box is selected; if it is, a numbering sequence must be specified in the **Reconciliation Numbering Sequence** box. The predefined *CARECON* numbering sequence can be selected.

Although the cash account that is used for a corporate card must have only one associated payment method, this payment method can be selected for multiple cash accounts. If a payment method is selected for a cash account that is used for a corporate card, in the Summary area of the [Payment Methods](../UserGuide/CA_20_40_00.md) \(CA204000\) form, the **Use in AP** check box is selected. Also, on the **Settings for Use in AP** tab of the form, this payment method should have the following settings:

-   **Not Required** \(**Additional Processing** section\): Selected
-   **Require Unique Payment Ref.** \(**Payment Settings** section\): Cleared

## Configuration of Corporate Cards { .section}

To finish the configuration, you need to create an entity that represents the corporate card in the system and associate this entity with the liability account. You can do this in either of the following ways:

-   If the *Expense Management* feature is disabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, on the [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form, you create a vendor that represents the bank that issued the corporate credit card. For this vendor, you specify the accrued liability account as the **Expense Account**.

    For more information about processing AP bills for expenses paid with a corporate card, see [Payments with a Corporate Card: General Information](../UserGuide/Finance_Expenses_with_CorporateCC_GeneralInfo.md).

-   If the *Expense Management* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, on the [Corporate Cards](../UserGuide/CA_20_25_00.md) \(CA202500\) form, you create a corporate card that company employees will use to process expenses. You enter the card number for matching transactions on a bank statement. In the table on the form, you add the employees that are allowed to use the corporate card; multiple employees can use a single corporate card.

    If the card currency differs from the currency of an employee who uses the corporate card, for this employee, the **Enable Currency Override** and **Enable Rate Override** check boxes must be selected on the **General** tab \(**Employee Settings** section\) of the [Employees](../UserGuide/EP_20_30_00.md) \(EP203000\) form. \(This section of the form also contains the **Currency ID** box, where the employee currency is specified.\)

    **Attention:** If the *Multiple Base Currency* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) form, the base currency of the cash account that corresponds to corporate card must be the same as base currency of the employee. For more information on configuring multiple base currencies, see [Multiple Base Currencies: General Information](config_Multicurrency_MultipleBaseCurrencies_GeneralInfo.md).

    For more information about processing expense receipts and expense claims paid with a corporate card, see [Expense Receipts with Corporate Cards: General Information](../UserGuide/TimeExpenses_Expense_Receipts_GeneralInfo.md). For information about processing refunds to corporate cards, see [Expense Returns to Corporate Cards: General Information](../UserGuide/TimeExpenses_Expense_Returns_GeneralInfo.md).


**Parent topic:**[Corporate Cards](../ImplementationGuide/Corporate_Card_Mapref.md)

