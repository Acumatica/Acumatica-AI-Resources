# Commands for Working with Multilingual Fields {#_0b80c59b-6b67-4193-92fb-c6f96e415e57 .concept}

For some text boxes on Acumatica ERP forms, users can type values in multiple languages if multiple locales are configured in Acumatica ERP. For example, if your Acumatica ERP instance has the English and French locales activated and multilingual user input configured, you can specify the value of the **Description** box on the [Stock Items](../Shared/../UserGuide/IN_20_25_00.md#) \(IN202500\) form in English or French.

## Specifying Localized Values of a Multilingual Field { .section}

When you need to specify localized values of a text box by using the screen-based SOAP API, you specify the value of the field that corresponds to the box as a string in JSON format with the localized values. In this string, you use the two-letter ISO code of the language with which the value should be associated.

In the example that is mentioned at the beginning of the topic, if you need to specify values in English and French in the **Description** box on the [Stock Items](../UserGuide/IN_20_25_00.md#) form, you specify the value of the Description field of the StockItem entity in the following format: `[{en:English description},{fr:French description}]`, as shown in the following code fragment.

```
//stockItemSchema is an IN202500Content object
new Value 
{
    Value = "[{en:Item},{fr:Pièce}]", 
    LinkedCommand = stockItemSchema.StockItemSummary.Description 
}
```

**Important:** In the string, you should specify the actual values of the field in all languages that are configured for multilingual user input. If you specify the values of the field in particular languages, the values of the field in other languages configured for multilingual user input become empty. For example, suppose that in your instance of Acumatica ERP, multilingual fields can have values in English and French. If you pass the value of a field in the following format `[{en:English description}]`, the French value of the field becomes empty.

If you specify the value of a multilingual field as plain text, this text is saved as the value of the corresponding box in the current language of Acumatica ERP \(that is, either the default language of the instance or the language that you have specified by using the SetLocaleName\(\) method\). For details on how to specify the locale through the screen-based SOAP API, see [SetLocaleName\(\) Method](IS__con_SB_SetLocaleName.md#).

## Retrieving Localized Values of a Multilingual Field { .section}

If you need to retrieve localized values of a text box that supports multiple input languages, you retrieve the value of an internal field that contains all localized values of the text box and has the *Translations* suffix in its field name.

To specify the field name and the object name of the needed internal field with localized values, you specify the field name and the object name of the multilingual text box and append *Translations* to the field name. For example, the following code shows the command that you should use to retrieve the localized values of the **Description** element of the [Stock Items](../UserGuide/IN_20_25_00.md#) form.

```
//stockItemSchema is an IN202500Content object
new Field
{
    ObjectName = stockItemsSchema.StockItemSummary.Description.ObjectName,
    FieldName = stockItemsSchema.StockItemSummary.Description.FieldName + 
      "Translations"
}
```

The returned value of a Translations field is a string in JSON format with the available localized values of the field. The language to which the value belongs is identified by the two-letter ISO code of the language. For example, suppose that the **Description** element of the [Stock Items](../UserGuide/IN_20_25_00.md#) form has the value *Item* in English and *Pièce* in French. In this case, the value of the DescrTranslations field, which corresponds to the **Description** element, is the following string: `[{en:Item},{fr:Pièce}]`.

**Parent topic:**[Working with Commands of the Screen-Based SOAP API](../IntegrationDevelopmentGuide/IS__mng_Screen-Based_API_Commands.md)

