# Customers: Customer Class Settings {#_9c074949-cc36-4a7c-a70f-506f04828251 .concept}

In this topic, you will read about the default currency settings for a customer class, default printing and emailing settings, and preferred locale settings for customer classes.

## Default Currency Settings {#section_lgl_4jv_vxb .section}

A customer class can hold the default currency and the default currency rate to be used for customer accounts. We recommend that you select a foreign currency for a customer class only if most customers of the class use this currency. By default, users may not override the currency on customer documents, to reduce the chance of input errors related to currency choice. If some customers may use a non-default currency and non-default rate type on individual documents, you can allow currency and rate overriding for those customers by selecting the **Enable Currency Override** and **Enable Rate Override** check boxes on the [Customers](AR_30_30_00.md) \(AR303000\) form.

If you want to allow override of the currency and the rate by default for all customers of the class, select these check boxes on the [Customer Classes](AR_20_10_00.md) \(AR201000\) form for the customer class.

## Default Printing and Emailing Settings {#section_ogl_4jv_vxb .section}

A customer class can provide the default settings that permit or deny mass-printing and emailing of invoices, memos, and statements. Settings that control printing and emailing preferences of customers are located under the **Default Print and Email Settings** section on the **General** tab of the [Customer Classes](AR_20_10_00.md) \(AR201000\) form. For instance, if you want to be able to print at once the invoices for all customers of a customer class by using the [Print/Email AR Documents](AR_50_80_00.md) \(AR508000\) form, you must select the **Print Invoices** check box for the customer class. This makes the documents of these customers available for mass-printing. You can override this setting for individual customers of the class, if needed.

## Preferred Locale Setting {#section_qgl_4jv_vxb .section}

You can group the customers who prefer the same language to one customer class. For this class, you specify a locale that is associated with the language in the **Locale** box of the [Customer Classes](AR_20_10_00.md) \(AR201000\) form.

**Note:** The system will assign the locale to the new customer accounts automatically when you select the customer class for the account on the [Customers](AR_30_30_00.md) \(AR303000\) form. For existing customers, you need to manually select the preferred locale for each account.

Assigning a locale to a customer account allows you to print documents for the customer in preferred language. For details, see [Use of User Input Translations](SM__CON_Usage_of_UserInput_Translations.md).

**Parent topic:**[Creating a Customer](../UserGuide/Customer_Mapref.md)

