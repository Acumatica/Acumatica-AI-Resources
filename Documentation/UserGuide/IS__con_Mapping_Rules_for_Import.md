# Types of Target Fields in Import Scenarios {#_25cf0571-598c-4259-af61-100758762f15 .concept}

You perform mapping of an import scenario on the **Mapping** tab of the [Import Scenarios](SM_20_60_25.md) \(SM206025\) form. For each target field on an Acumatica ERP form, you need to know the type of the target field and be sure the source field values have the appropriate format for the type, so that the system can insert the value of the field correctly. The type of the target field depends on the type of UI element that represents it on the form to which you are importing data. This type can be a text box of several types, a date selection, a check box, a drop-down list, a radio button, or an command on the More menu or on the toolbar. Also, the target field might be in a dialog box rather than on the form itself.

In most cases, it is clear which format of the value you need for the mapping. However, if you are not sure which format of the value you need, you can create one record manually in Acumatica ERP, specify the needed value of a field of this record, compose an export scenario, and export the value of this field. Make sure that the export scenario has output the value in the appropriate format. For more information on export scenarios, see [Configuring Export Scenarios](IS__mng_Configuring_Export_Scenarios.md#).

## Text Box with Text { .section}

The target field on the Acumatica ERP form can be a text box into which a user types text. For example, the **Email** box on the **General** tab of the [Customers](AR_30_30_00.md) \(AR303000\) form is a text box in which the user types an email address.

A text box can have a mask, which is denoted by the underscore symbol \(*\_*\). If the text box has a mask, you cannot insert the underscore symbol because this symbol is reserved for masked input in the system. If the text box has no mask, you can insert any characters into the box, including any letters and symbols. The length of the string that you insert into a text box should not exceed the maximum length of the underlying target element. \(To check the maximum length, find the maximum string that can be manually inserted into the box on the form. For details, see [Managing Segmented Keys](SM__con_Managing_Segmented_Keys.md)\)

For some text boxes, you can type text in multiple languages. \(For the list of these text boxes, see [Boxes That Have Multilanguage Support](SM__CON_Boxes_MultiLanguage.md#).\) To import the values of a text box in multiple languages, you should specify a string in JSON format that contains values in the needed languages. For details, see [Multilanguage Fields in Import and Export Scenarios](IS__con_IS_Multi-Language_Fields.md#).

## Text Box with Currency Amount { .section}

The target field on the Acumatica ERP form can be a text box that holds a currency amount. For example, the **Amount** box in the Summary area of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form is a text box with a currency amount.

You have to provide currency amounts in the format that you specified for the import scenario in the **Format Locale** box in the Summary area of the [Import Scenarios](SM_20_60_25.md) \(SM206025\) form. For example, if you specified the English \(United States\) locale for an import scenario, you have to provide amounts where the decimal part is separated by a decimal point: *12.34*.

By default, Acumatica ERP imports currency amounts with a decimal precision of 2, which is specified in the **Decimal Precision** box on the [Branches](CS_10_20_00.md) \(CS102000\) form. When you import the currency amounts of Account Payable or Account Receivable documents, make sure that the sum of imported lines is equal the imported document total, taking into account the rounding accuracy as follows:

-   The decimal precision of line amounts must be equal to the decimal precision of document total.
-   The decimal precision of all amounts must be less than or equal to the decimal precision that is specified in Acumatica ERP. For example, if the decimal precision in Acumatica ERP is 2 and you import an amount with a decimal precision of 3, such as *10.345*, the imported value will be rounded by arithmetical rules to *10.35*.

If you import data from an Excel file, you can use the *Round\(x,y\)* function to round the amounts, and then you can copy the values to a column from which you will import data.

## Text Box with a Key Value { .section}

The target field on the Acumatica ERP form can be a text box that holds a key value. Two examples of key fields are **Customer ID** on the [Customers](AR_30_30_00.md) \(AR303000\) form, and **Reference Nbr** on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.

The way you specify the value for key fields depends on your goal and the auto-numbering settings of the records that you are importing. For more information and examples of mapping key fields, see [Key Fields and Search in Import Scenarios](IS__con_Key_Fields_and_Search_in_Import_Scenarios.md#).

## Date Selection { .section}

The target field on the Acumatica ERP form can be a date selection menu that is used to select the date. For example, the **Date** element in the Summary area of the [Invoices and Memos](AR_30_10_00.md) form is a date selection menu.

The date values in a source file must be in the same format that is specified for the import scenario in the **Format Locale** box of the [Import Scenarios](SM_20_60_25.md) \(SM206025\) form. If no format locale is set in the source file, the system treats the dates in this file as having an invariant \(that is, independent\) locale, which is based on the *English \(United States\)* locale. If you do not set the format and the locale-dependent data in the file has a format other than *English \(United States\)*, the system may read the data incorrectly. Therefore, you need to set the format locale so that the dates are read correctly. For example, if you specify the English \(United States\) locale for the import scenario, you need to provide dates in the *MM/DD/YYYY* format. Thus, September 1, 2025 will be *09/01/2025*.

## Check Boxes { .section}

The target field on the Acumatica ERP form can be a check box the user can select or clear. For example, the **Pay by Line** element in the Summary area of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form is a check box. To select a check box, map the corresponding target field to the value *True*. To clear a check box, map the target field to the value *False*.

## Drop-Down List { .section}

The target field on the Acumatica ERP form may be a drop-down list from which the user selects an option. For example, the **Type** element in the Summary area of the [Invoices and Memos](AR_30_10_00.md) form is a drop-down list.

To insert a value into a drop-down list, you have to specify the value as it is displayed in the list. For example, on the [Invoices and Memos](AR_30_10_00.md) form, you can insert the value *Invoice* into the **Type** field. If you specify a value that is not supported in the list, the system displays an error during import.

## Option Buttons { .section}

The target field on the Acumatica ERP form may be a group of option buttons. For example, a group of option buttons is in the **Additional Processing** group of the **Settings for Use in AP** tab of the [Payment Methods](CA_20_40_00.md) \(CA204000\) form.

In the system, a group of option buttons is treated as one field, which can have as the values the names of the option buttons. Therefore, to select an option button by using an import scenario, you should select the name of the group that contains the option button in the **Field or Action** column of the [Import Scenarios](SM_20_60_25.md) form \(SM206025\), and specify the name of the radio button in the **Source Field or Value** column. For example, to select the **Print Checks** option button in the **Additional Processing** section of the **Settings for Use in AP** tab of the [Payment Methods](CA_20_40_00.md) form, you should select the *Settings for Use in AP* target object and the *APAdditionalProcessing* field, and specify the source value as `='Print Checks'`.

## Buttons and Commands { .section}

The target field on the Acumatica ERP form can be a button on the form toolbar or a command on the More menu \(under a category\). Such buttons and commands are associated with actions in code. For example, the More menu of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form contains the **Release** command \(under **Actions**\) and the form toolbar contains the **Release** button, which correspond to the same action.

To reflect a user clicking a button or a command in the scenario mapping, you need to insert the corresponding action in the proper position in the mapping, and you don't have to map the action to any value. For more information and examples, see [Actions in Import Scenarios](IS__con_Actions_in_Import_Scenarios.md#).

## Dialog Boxes { .section}

The target field can be on a dialog box invoked by a user action on the Acumatica ERP form. Dialog boxes usually appear on a form to request confirmation from the user. For example, when you update the **Customer Class** value on the [Customers](AR_30_30_00.md) \(AR303000\) form for an existing customer, the system displays a **Warning** dialog box. The **Add Sales Order** dialog box appears when you click **Add Order** on the table toolbar of the **Details** tab of the [Shipments](SO_30_20_00.md) \(SO302000\) form.

In a similar way as you specify values for fields on forms and invoke actions, you can specify values and click buttons in pop-up panels that users can invoke.

For more information on handling dialog boxes in import scenarios, see [Dialog Boxes in Import Scenarios](IS__con_PopUp_Dialog_Boxes_in_Import_Scenarios.md#).

**Parent topic:**[Configuring Scenario Mapping](../UserGuide/IS__mng_Scenario_Mapping.md)

