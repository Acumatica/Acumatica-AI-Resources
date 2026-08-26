# Multicurrency Functionality: Base Currency and Foreign Currencies {#_fe12c8ab-b910-476d-9b5e-d3dcff72e590 .concept}

In Acumatica ERP, if the *Multicurrency Accounting* feature is disabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md#) \(CS100000\) form, only one currency, which is called the *base currency*, is used for accounting. If this feature is enabled, you can activate foreign currencies in the system, which will be used for accounting and reporting purposes. The base currency will be used for reviewing journal transactions made in foreign currencies and for calculating and converting amounts in imported records.

Regardless of whether this feature is enabled, the base currency is the company's functional currency, and it is configured when a new tenant of Acumatica ERP is created. The base currency settings include the base currency identifier, the currency symbol, and the required decimal precision. Once an administrator has created the specified base currency in the system, the base currency identifier cannot be changed.

**Tip:** In the *U100* dataset, the base currency has already been specified in the company settings on the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form.

You can view all foreign currencies \(which have been predefined based on the ISO 4217 standard\) and their settings on the [Currencies](../UserGuide/CM_20_20_00.md) \(CM202000\) form. To configure any foreign currency for use in accounting, you define this currency as active \(that is, you select the **Active** check box for it in the Summary area of the [Currencies](../UserGuide/CM_20_20_00.md) form\) and specify the accounts to be used in operations with this currency \(on the **GL Accounts** tab of this form\). If this check box is selected for the currency, you can use this currency in financial documents and transactions in the general ledger.

**Parent topic:**[Multicurrency Functionality](../ImplementationGuide/config_Multicurrency_Basic_Mapref.md)

