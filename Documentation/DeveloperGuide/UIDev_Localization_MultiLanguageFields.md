# UI Localization: Multilanguage Fields {#_a1de7d38-cd06-4497-a5b7-61b1a01b7d16 .concept}

With Acumatica Framework, you can create fields configured to accept values entered in multiple languages if multiple locales are defined in Acumatica ERP. For example, if the English and French locales have been set up in Acumatica ERP, a user can specify the value of the **Description** box on the [Stock Items](../Shared/../UserGuide/IN_20_25_00.md#) \(IN202500\) form in English and French.

For details about multilanguage fields on Acumatica ERP forms, see [Managing Locales and Languages](../UserGuide/SM__mng_Locales.md#).

## Configuring a Field to Have Values in Multiple Languages { .section}

You perform the following general steps to configure a field to have values in multiple languages:

1.  In the data access class \(DAC\) that you want to contain a multilanguage field, you define the NoteID field with the PXNote attribute, as shown below.

    ```language-csharp
    public abstract class noteID : IBqlField { }
    
    [PXNote]
    public virtual Guid? NoteID { get; set; }
    ```

2.  If you want to configure a field to have values in multiple languages, you annotate this field with the PXDBLocalizableString attribute. The following code shows an example of the use of the PXDBLocalizableString attribute.

    ```language-csharp
    [PXDBLocalizableString(60, IsUnicode = true)]
    ```

    The PXDBLocalizableString attribute works similarly to the PXDBString attribute, but unlike the PXDBString attribute, the PXDBLocalizableString attribute can be used instead of the PXDBText and PXString attributes.

3.  If you need to provide values in multiple languages for a field with the PXDBText attribute, you replace this attribute with the PXDBLocalizableString attribute and do not specify the length parameter, as shown in the following example.

    ```language-csharp
    [PXDBLocalizableString(IsUnicode = true)]
    ```

4.  If you need to configure a field that has the PXString attribute, which is used in conjunction with the PXDBCalced attribute, you replace the PXString attribute with the PXDBLocalizableString attribute and set the value of the NonDB parameter to `true`, as shown in the following example.

    ```language-csharp
    [PXDBLocalizableString(255, IsUnicode = true, NonDB = true, 
       BqlField = typeof(PaymentMethod.descr))] 
    [PXDBCalced(typeof(Switch<Case<Where<PaymentMethod.descr, IsNotNull>, 
       PaymentMethod.descr>, CustomerPaymentMethod.descr>), typeof(string))]
    ```


## Configuring the Default Value of a Multilanguage Field { .section}

If you want a multilanguage field to have a default value in a specific language, you use the PXLocalizableDefault attribute instead of the PXDefault attribute; in its second parameter, you specify either a BQL field or a BQL select that provides language selection.

For example, in Acumatica ERP, the default value of the `SOLine` line description is obtained from the appropriate `InventoryItem` description based on the language that is set for the selected customer. The `TransactionDesr` field of the `SOLine` DAC has the PXLocalizableDefault attribute with a second parameter that specifies the language as follows: `typeof(Customer.languageName)`. See the following example of the use of the PXLocalizableDefault attribute.

```language-csharp
[PXLocalizableDefault(typeof(Search<InventoryItem.descr,
   Where<InventoryItem.inventoryID, 
   Equal<Current<SOLine.inventoryID>>>>),
   typeof(Customer.languageName), 
   PersistingCheck = PXPersistingCheck.Nothing)]        
```

## Obtaining the Value of a Multilanguage Field in the Current Locale { .section}

If you want to obtain the value of a multilanguage field in the current locale, you use the PXDatabase.SelectSingle\(\) or PXDatabase.SelectMulti\(\) method. You pass to the method the return value of the PXDBLocalizableStringAttribute.GetValueSelect\(\) static method instead of passing a new PXDataField object to it. \(The PXDBLocalizableStringAttribute.GetValueSelect\(\) method takes three input parameters: the table name, the field name, and a Boolean flag that indicates whether strings should be returned as text with unlimited length.\)

The following code shows an example of the use of the PXDBLocalizableStringAttribute.GetValueSelect\(\) method.

```language-csharp
foreach (PXDataRecord record in PXDatabase.SelectMulti<Numbering>(
   newPXDataField<Numbering.numberingID>(), 
   PXDBLocalizableStringAttribute.GetValueSelect("Numbering", 
      "NewSymbol", false),
   newPXDataField<Numbering.userNumbering>()))
{
   ...
}
```

**Attention:** Generally, you use the PXDatabase.SelectSingle\(\) and PXDatabase.SelectMulti\(\) methods for retrieving data within the Prefetch\(\) method of a database slot. Remember to add language code to the slot key when you obtain a slot, as shown in the following example, because with the use of PXDBLocalizableStringAttribute, the data becomes language-specific. Therefore, you need different slot instances for different languages.

```language-csharp
Numberings items = PXDatabase.GetSlot<Numberings>(
   typeof(Numberings).Name + currentLanguage, typeof(Numbering));
```

## Obtaining the Value of a Multilanguage Field in a Specific Language { .section}

If you want to obtain the value of a multilanguage field in a specific language, you use the PXDBLocalizableStringAttribute.GetTranslation\(\) method. You pass the following input parameters to the method:

-   A DAC cache
-   A DAC instance
-   A field name
-   The ISO code of the language

The following code shows an example of use of the PXDBLocalizableStringAttribute.GetTranslation\(\) method.

```language-csharp
tran.TranDesc =
   PXDBLocalizableStringAttribute.GetTranslation(
      Caches[typeof(InventoryItem)], item, typeof(InventoryItem.descr).Name,
      customer.Current?.LanguageName);
```

**Parent topic:**[Supporting UI Localization](../DeveloperGuide/UIDev_Localization_Mapref.md)

