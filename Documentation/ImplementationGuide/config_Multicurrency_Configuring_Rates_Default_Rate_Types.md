# Configuration of Rate Types and Rates: Assignment of Default Rate Types {#_f386e6bb-4749-491e-b89c-825d964c9e89 .concept}

In Acumatica ERP, you can assign the default rate types that are used for documents in different functional areas of the system, as well as the default rate types for documents of a particular cash account, customer, or vendor of a particular class, customer, or vendor. If you have specified the appropriate default rate types, when you create a document, the system uses the default rate type to fill in the **Exchange Rate** box \(right of the **Currency** box in the Summary area of the data entry form of the document\) with the effective currency rate that is related to this rate type, the currency of the document, and the date of the document.

**Tip:** When you enter a currency in Acumatica ERP, you use a currency box, which is a special type of lookup box with the following controls:

-   The selector button, which you can click to open the currency lookup table
-   The **Exchange Rate** box, where the system inserts the default rate \(or you can select another rate\)
-   The Currency Toggle button, which you can click to switch the currency of the amounts between the base currency and the selected foreign currency

## Default Rate Type for GL Transactions and Translations { .section}

For transactions in a foreign currency in the general ledger and for translations, you can assign the default rate type in the **GL Rate Type** box in the **Default Rate Types** section of the [Currency Management Preferences](../UserGuide/CM_10_10_00.md) \(CM101000\) form. By default, the *SPOT* rate type is used for GL transactions and for translation-related transactions.

## Default Rate Type for Cash Entries and Funds Transfers { .section}

For all cash entries and funds transfers in a foreign currency, by default, the *SPOT* rate type is specified in the **CA Rate Type** box in the **Default Rate Types** section of the [Currency Management Preferences](../UserGuide/CM_10_10_00.md) \(CM101000\) form. You can override the rate type, if necessary.

If you will generally use a particular currency rate in cash entries and funds transfers that include a particular cash account, you assign this rate to a particular rate type and specify this rate type as the default for the cash account. To do this, you assign the default currency rate type in the **Curr. Rate Type** box on the [Cash Accounts](../UserGuide/CA_20_20_00.md) \(CA202000\) form. The system will use the assigned currency rate as the default currency rate \(which can be overridden\) in the cash entries and funds transfers created for the cash account in the system.

## Default Rate Type for AR Documents { .section}

For all documents in a foreign currency in the accounts receivable subledger, by default, the *SPOT* rate type is specified in the **AR Rate Type** box of the **Default Rate Types** section of the [Currency Management Preferences](../UserGuide/CM_10_10_00.md) \(CM101000\) form. You can override the rate type, if necessary.

If you will generally use a particular currency rate in documents for customers of a particular class, you enter the rate for a particular rate type and specify the rate type as the default for the customer class. You specify the default currency rate type in the **Currency Rate Type** box on the **General** tab \(**Default Financial Settings** section\) of the [Customer Classes](../UserGuide/AR_20_10_00.md) \(AR201000\) form.

If you will generally use a particular currency rate in documents for a particular customer, you can assign this rate to a particular rate type and specify this rate type as the default for the customer. You assign the default currency rate type in the **Curr. Rate Type** box in the **Financial Settings** section of the **Financial** tab on the [Customers](../UserGuide/AR_30_30_00.md) \(AR303000\) form.

## Default Rate Type for AP Documents { .section}

For all documents in a foreign currency in the accounts payable subledger, by default, the *SPOT* rate type is specified in the **AP Rate Type** box in the **Default Rate Types** section of the [Currency Management Preferences](../UserGuide/CM_10_10_00.md) \(CM101000\) form. You can override the rate type, if necessary.

If you will generally use a particular currency rate in documents for vendors of a particular class, you assign the rate to a particular rate type and specify the rate type as the default for the vendor class. You specify the default currency rate type in the **Curr. Rate Type** box on the **General** tab \(**Default Financial Settings** section\) of the [Vendor Classes](../UserGuide/AP_20_10_00.md) \(AP201000\) form.

If you want the system to insert a particular default currency rate in documents for a particular vendor, you can assign this rate to a particular rate type and specify this rate type as the default for the vendor. You specify the default currency rate type in the **Curr. Rate Type** box in the **Financial Settings** section of the **Financial** tab on the [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form.

## Ability to Override a Class, Customer, or Vendor Currency Rate { .section}

If you want users to have the ability to override the default currency rate and exchange rate of a customer class, vendor class, customer, or vendor in the documents of the customer class, vendor class, customer, or vendor, respectively, you select the **Enable Rate Override** check box on the corresponding form: [Customer Classes](../UserGuide/AR_20_10_00.md) \(AR201000\), [Vendor Classes](../UserGuide/AP_20_10_00.md) \(AP201000\), [Customers](../UserGuide/AR_30_30_00.md) \(AR303000\) or [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form.

If this check box is selected, you can override the currency rate type and the exchange rate by clicking the **Exchange Rate** box when you enter a document on the data entry form. When you click this button, the **Rate Selection** dialog box opens. In this dialog box, you can select another currency rate type for the document, the effective date of the rate, and the currency rates.

## Default Rate Types for Revaluations { .section}

To perform revaluations, you have to specify the default rate types for revaluations in the **Default Rate Types** section of the [Currency Management Preferences](../UserGuide/CM_10_10_00.md) \(CM101000\) form as follows:

-   To perform GL revaluation for accounts denominated in a foreign currency, you specify the rate type in the **GL Revaluation Rate Type** box.
-   To perform revaluation of open AR documents, you specify the rate type in the **AR Revaluation Rate Type** box.
-   To perform revaluation of open AP documents, you specify the rate type in the **AP Revaluation Rate Type** box.

**Parent topic:**[Currency Rate Types and Current Rates](../ImplementationGuide/config_Multicurrency_Configuring_Rates_Mapref.md)

