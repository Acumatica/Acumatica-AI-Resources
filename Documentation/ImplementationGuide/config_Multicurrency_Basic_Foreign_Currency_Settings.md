# Multicurrency Functionality: Foreign Currency Settings {#_b3794b18-1ee7-4526-9d72-1c338f228b5d .concept}

You edit the settings of a foreign currency on the [Currencies](../UserGuide/CM_20_20_00.md) \(CM202000\) form. On this form, you can edit the currency identifier, currency symbol, decimal precision, and description. To be able to use a particular foreign currency in transactions, you need to specify the accounts to be used in operations with this currency and define the currency exchange rates.

**Tip:** We recommend that you assign currency identifiers and currency symbols according to the ISO 4217 international standard. Otherwise, you will not be able to use the online update functionality for the currency rates.

## Realized Gain and Realized Loss Accounts { .section}

When you activate a currency for use in accounting on the [Currencies](../UserGuide/CM_20_20_00.md) \(CM202000\) form, you specify the GL accounts to be used to record the realized gains or losses in the **Realized Gain and Loss Accounts** section of the form. When a payment or credit memo is applied to an AR document or a payment or debit adjustment is applied to an AP document, the system calculates the realized gains and losses.

## Unrealized Gain and Unrealized Loss Accounts { .section}

The exchange rates of foreign currencies change over time; thus, to determine the current value of open documents in foreign currencies on a certain date, you need to revalue them by using the exchange rate effective on that date. For details, see [Revaluation of AP Documents: General Information](../UserGuide/Multicurrency_RevaluationAP_General_Info.md) and [Revaluation of AR Documents: General Information](../UserGuide/Multicurrency_RevaluationAR_GeneralInfo.md).

As a result of the revaluation process, the system calculates the unrealized gains and losses and creates an auto-reversing revaluation batch. The GL accounts that you specify on the [Currencies](../UserGuide/CM_20_20_00.md) \(CM202000\) form for each foreign currency, which you specify as follows, determine the resulting unrealized gains and losses:

-   You specify the accounts to which unrealized gains and losses are posted in the **Unrealized Gain Account** and **Unrealized Loss Account** boxes.

    **Tip:** If subaccounts are used in your system, you specify the corresponding subaccounts in the **Unrealized Gain Subaccount** and **Unrealized Loss Subaccount** boxes. The system determines the specific subaccounts that will be used for recording unrealized gains and losses according to the rule specified in the **Combine Gain/Loss Sub. From** box on the [Currency Management Preferences](../Shared/../UserGuide/CM_10_10_00.md) \(CM101000\) form.

-   To post unrealized gains and losses to a separate account instead of the AP account of the vendor or the AR account of the customer, you specify accounts in the **AP Provisioning Account** and **AR Provisioning Account** boxes.

    **Important:**

    -   If the provisioning account is not specified for the currency for which you are performing a revaluation, the resulting unrealized gain or loss is posted directly to the vendor's AP account or the customer's AR account.
    -   If subaccounts are used in your system, you specify the corresponding subaccounts in the **AP Provisioning Subaccount** and **AR Provisioning Subaccount** boxes.

If needed, you can select specific unrealized gain and loss accounts \(and subaccounts\) to be used for customers of a particular customer class on the [Customer Classes](../UserGuide/AR_20_10_00.md) \(AR201000\) form and for vendors of a particular class on the [Vendor Classes](../UserGuide/AP_20_10_00.md) \(AP201000\) form. The system will generate a separate transaction in the batch for each customer account of the customer class or each vendor account of the vendor class, respectively.

## Revaluation Gain and Unrealized Loss Accounts { .section}

If your company performs operations in multiple currencies, you may need to maintain accounts denominated in a foreign currency. Because of the changes in currency rates over time, you have to perform revaluations of denominated accounts. For details, see [Revaluation of AP Documents: General Information](../UserGuide/Multicurrency_RevaluationAP_General_Info.md), [Revaluation of AR Documents: General Information](../UserGuide/Multicurrency_RevaluationAR_GeneralInfo.md), and [Revaluation of Bank Accounts: General Information](../UserGuide/Multicurrency_RevaluationGL_GeneralInfo.md).

Gains or losses resulting from revaluation are posted to the revaluation gain or loss account \(and subaccount, if subaccounts are used in your system\) that is specified in the **Revaluation Gain and Loss Accounts** section on the [Currencies](../UserGuide/CM_20_20_00.md) \(CM202000\) form.

## Rounding Gain and Loss Accounts { .section}

Any differences between the exact amounts and the rounded amounts that occur in operations with a foreign currency are accumulated in the Rounding Gain and Rounding Loss accounts and the respective subaccounts \(if applicable\), which you specify for the foreign currency in the **Rounding Gain and Loss Accounts** section on the [Currencies](../Shared/../UserGuide/CM_20_20_00.md) \(CM202000\) form.

Rounding differences for the base currency may occur if the conversion of journal entries made in a foreign currency results in differences between the debit amounts and the credit amounts of the batch. You specify the accounts for posting rounding gains and losses in the base currency on the [General Ledger Preferences](../Shared/../UserGuide/GL_10_20_00.md) \(GL102000\) form.

**Parent topic:**[Multicurrency Functionality](../ImplementationGuide/config_Multicurrency_Basic_Mapref.md)

