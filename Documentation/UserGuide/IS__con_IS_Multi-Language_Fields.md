# Multilanguage Fields in Import and Export Scenarios {#_480c1c3c-754e-4e51-a01e-60fedc7feb6b .concept}

For some text boxes on Acumatica ERP forms, users can type values in multiple languages if multiple locales are configured in Acumatica ERP. For example, if your Acumatica ERP instance has the English and French locales activated and multilingual user input configured, you can specify the value of the **Description** box on the [Stock Items](../Shared/../UserGuide/IN_20_25_00.md#) \(IN202500\) form in English or French.

## Import of Localized Field Values { .section}

As you perform mapping for an import scenario on the [Import Scenarios](SM_20_60_25.md) \(SM206025\) form, when you need to import localized values of a field, you map this field to a source field that contains a string in JSON format with the localized values. In this string, you use the two-letter ISO code of the language with which the value should be associated.

In the example that is mentioned at the beginning of the topic, if you need to import the values in English and French to the **Description** element of stock item records on the [Stock Items](IN_20_25_00.md#) form, you map the **Description** field to a source field that contains data in the following format: `[{en:English description},{fr:French description}]`. The mapping example below presumes that the *DescriptionsInJSONFormat* source field contains a string in JSON format.

|Field or Action|Target Object|Source Field or Value|
|---------------|-------------|---------------------|
|*Description*|*Stock Item Summary*|*DescriptionsInJSONFormat*|

**Important:** In the string, you should specify the actual values of the field in all languages that are configured for multilingual user input. If you specify the values of the field in particular languages, the values of the field in other languages configured for multilingual user input become empty. For example, suppose that in your instance of Acumatica ERP, multilingual fields can have values in English and French. If you pass the value of a field in the following format `[{en:English description}]`, the French value of the field becomes empty.

If a source field that you map to a multilanguage field contains plain text, this text is saved as the value of the field in the current language of Acumatica ERP \(that is, the language that you selected on the Sign-In page of Acumatica ERP\).

## Export of Localized Field Values { .section}

Each text field that supports multiple input languages has a corresponding field with the suffix *Translations* in its native name. This corresponding field contains all localized values of the text field. For example, the **Description** box on the [Stock Items](IN_20_25_00.md#) form corresponds to the field with native name *Descr*. The *Descr* field has the *DescrTranslations* corresponding field, which contains the localized descriptions of a stock item.

If you want to export localized values of a text box, on the **Mapping** tab of the [Export Scenarios](SM_20_70_25.md) \(SM207025\) form, you map the needed *Translations* field, which contains localized values, to a target field. The *Translations* fields are not available in the list of fields in the Field or Action**** column on the **Mapping** tab; you should type the needed name manually.

For example, suppose that you need to export the localized values of the **Description** element of the [Stock Items](IN_20_25_00.md#) form. You should find out the native name of the **Description** field, which is *Descr*, and map the *DescrTranslations* field to the target field, as shown in the following mapping example.

**Tip:** To find out the native name of a field, on the title bar of the target Acumatica ERP form, click **Customization** &gt; **Inspect Element**, and then click the target element on the form. In the **Element Properties** dialog box, which opens, find the value of the **Data Field** element, which is the native name of the field.

|Source Object|Field or Action|Target Field or Value|
|-------------|---------------|---------------------|
|*Stock Item Summary*|*DescrTranslations*|*DESCRIPTION*|

As a result of the export of localized field values, the target field contains a string in JSON format with the available localized values of the field. The language to which the value belongs is identified by the two-letter ISO code of the language. For example, suppose that the **Description** element of the [Stock Items](IN_20_25_00.md#) form has value *Item* in English and *Pièce* in French. In this case, the target field contains the following string: `[{en:Item},{fr:Pièce}]`.

**Parent topic:**[Configuring Scenario Mapping](../UserGuide/IS__mng_Scenario_Mapping.md)

