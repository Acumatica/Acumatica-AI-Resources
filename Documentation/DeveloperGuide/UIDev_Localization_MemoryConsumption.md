# UI Localization: Optimization of Memory Consumption of Localized Data {#_ac6b5781-1d62-4dab-b153-63b29d138732 .concept}

To optimize the memory consumption of static data, you can move the localization data from all customer application instances to centralized storage. By default, the localization data is kept in the database of every Acumatica ERP instance, and the total size of this data therefore equals the number of instances times the size of the data. If you move the localization data to centralized storage, there is only one copy of this data.

Alternatively, you can optimize the consumption of memory by disabling localization.

Whether you disable localization or set up centralized storage of localization data, you should perform the following general steps:

1.  You implement a custom translation provider. To do this, you follow the instructions in [Implementing a Custom Translation Provider](#_9fb6a0e2-4efe-4bc7-9fb6-977cdbbf5e62) or [Disabling Localization](#_2c321ca4-d3b0-4643-a139-c40480fd3126) in this topic, depending on the chosen method of optimizing memory consumption.
2.  You place the assembly file with the new provider in the `Bin` directory of the Acumatica ERP instance and add the assembly to the customization project as a *File* element.
3.  You register the new provider in the pxtranslate element of the `web.config` file, as described in the [Registering the New Provider in Web.config](#_73ca3eeb-cea0-46ea-b496-0278113298d1) section of this topic.

## Implementing a Custom Translation Provider {#_9fb6a0e2-4efe-4bc7-9fb6-977cdbbf5e62 .section}

To implement a custom translation provider, you derive a class from the PXTranslationProvider class and override the LoadCultureDictionary\(\) method, as the following example shows.

```
public class DemoTranslationProvider : PXTranslationProvider
{
    public override PXCultureDictionary LoadCultureDictionary(
        string locale, bool includeObsolete, bool escapeStrings)
    {
        PXCultureDictionary dictionary = new PXCultureDictionary();
        ...
        // Adding a general translation for some string
        dictionary.Append(
            valueToTranslate,
            new PXCultureValue(locale, translation));
        // Adding a special translation for some string
        dictionary.AppendException(
            valueToTranslate,
            new PXCultureEx(resourceID, locale, translation));
        ...
        return dictionary;
    }
}
```

The LoadCultureDictionary\(\) method returns an instance of the PXCultureDictionary type. Values are added to objects of this type through the Append\(\) and AppendException\(\) methods. Append\(\) adds a general translation for a string. AppendException\(\) adds a translation for a special case \(exception\) identified by the resource key.

The code below defines a custom translation provider that loads the localization data from an external Acumatica ERP database by using ADO.NET tools.

```language-csharp
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using PX.Data;
using PX.Translation;

namespace Demo.Translation
{
    public class DemoTranslationProvider : PXTranslationProvider
    {
        private struct TranslationKey
        {
            public Guid id;
            public string resKey;
            public string locale;
        }

        // The connection string for the database that stores localization
        // data
        // Specify a specific value of the connection string
        private const string connectionString = "";

        // Overriding the method that returns the dictionary of
        // localization data
        public override PXCultureDictionary LoadCultureDictionary(
            string locale, bool includeObsolete, bool escapeStrings)
        {
            string localizationValueSelect;
            string localizationTranslationSelect;
            InitializeSelectCommand(locale, includeObsolete,
                                    out localizationValueSelect,
                                    out localizationTranslationSelect);

            Dictionary<Guid, string> localizationValue;
            Dictionary<TranslationKey, string> localizationTranslation;
            SelectLocalizationValues(localizationValueSelect,
                                     localizationTranslationSelect,
                                     out localizationValue,
                                     out localizationTranslation);

            return CreateCultureDictionary(escapeStrings, localizationValue,
                                           localizationTranslation);
        }

        // Builds the SQL statement for selecting localization data
        private void InitializeSelectCommand(
            string locale, bool includeObsolete,
            out string localizationValueSelect,
            out string localizationTranslationSelect)
        {
            StringBuilder localizationValueSelectBld = 
                new StringBuilder("Select IDlv, NeutralValue" + 
                                  "From LocalizationValue");
            if (!includeObsolete)
            {
                localizationValueSelectBld.Append(" Where IsObsolete = 0");
            }
            localizationValueSelect = localizationValueSelectBld.ToString();

            StringBuilder localizationTranslationSelectBld =
                new StringBuilder("Select IDlt, ResKey, Value, Locale" + 
                                  "From LocalizationTranslation");
            if (!string.IsNullOrEmpty(locale))
            {
                localizationTranslationSelectBld.AppendFormat(
                    " Where Locale = '{0}'", locale);
            }
            localizationTranslationSelect = 
                localizationTranslationSelectBld.ToString();
        }

        // Retrieves localization data from the database by using the provided
        // SQL statement
        private void SelectLocalizationValues(
            string localizationValueSelect,
            string localizationTranslationSelect,
            out Dictionary<Guid, string> localizationValue,
            out Dictionary<TranslationKey, string> localizationTranslation)
        {
            localizationValue = new Dictionary<Guid, string>();
            localizationTranslation = 
                new Dictionary<TranslationKey, string>();

            using (SqlConnection connection = 
                   new SqlConnection(connectionString))
            {
                connection.Open();

                SqlCommand command = new SqlCommand(localizationValueSelect,
                                                    connection);
                using (SqlDataReader reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        localizationValue.Add(reader.GetGuid(0),
                                              reader.GetString(1));
                    }
                }

                command.CommandText = localizationTranslationSelect;
                using (SqlDataReader reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        TranslationKey newTranslationKey = new TranslationKey()
                        {
                            id = reader.GetGuid(0),
                            resKey = reader.GetString(1),
                            locale = reader.GetString(3)
                        };
                        localizationTranslation.Add(newTranslationKey,
                                                    reader.GetString(2));
                    }
                }
            }
        }

        // Fills the PXCultureDictionary object with localization data by using
        // the provided dictionaries of values to translate and the
        // corresponding translations
        private PXCultureDictionary CreateCultureDictionary(
            bool escapeStrings,
            Dictionary<Guid, string> localizationValue,
            Dictionary<TranslationKey, string> localizationTranslation)
        {
            PXCultureDictionary dictionary = new PXCultureDictionary();

            if (localizationTranslation.Count != 0)
            {
                foreach (Guid id in localizationValue.Keys)
                {
                    IEnumerable<TranslationKey> localizationTranslationKeys = 
                        from translationRowKey in localizationTranslation.Keys
                        where translationRowKey.id == id
                        select translationRowKey;
                    foreach (TranslationKey key in localizationTranslationKeys)
                    {
                        string translationResKey = key.resKey;
                        string translationLocale = key.locale;
                        string translationValue = localizationTranslation[key];
                        string value = escapeStrings ?
                            PXLocalizer.EscapeString(translationValue) :
                            translationValue;

                        if (string.IsNullOrEmpty(translationResKey))
                        {
                            dictionary.Append(
                                localizationValue[id],
                                new PXCultureValue(translationLocale, value));
                        }
                        else
                        {
                            dictionary.AppendException(
                                localizationValue[id],
                                new PXCultureEx(translationResKey,
                                                translationLocale, value));
                        }
                    }
                }
            }
            return dictionary;
        }
    }
}
```

## Disabling Localization {#_2c321ca4-d3b0-4643-a139-c40480fd3126 .section}

To disable localization, you implement a custom translation provider with the LoadCultureDictionary\(\) method that returns null, as the following code shows.

```language-csharp
public class DemoTranslationProvider : PXTranslationProvider
{
    public override PXCultureDictionary LoadCultureDictionary(
        string locale, bool includeObsolete, bool escapeStrings)
    {
        return null;
    }
}
```

## Registering the New Provider in Web.config {#_73ca3eeb-cea0-46ea-b496-0278113298d1 .section}

Once the provider class is defined, you register it in the `web.config` file by adding a new key to the providers collection of the pxtranslate element and specifying the new key in the defaultProvider property of pxtranslate. You use the add element to register the provider. You set the name attribute to the key, which can be any unique value, and specify the type of the custom provider in the type attribute.

The following code shows the configuration of DemoTranslationProvider, which was introduced in the previous section, in the pxtranslate element of the `web.config` file.

```language-xml
<px.core>
  ...
  <pxtranslate defaultProvider="DemoTranslationProvider">
    <providers>
      <!--The default translation provider-->
      <remove name="PXDBTranslatonProvider" />
      <add name="PXDBTranslatonProvider"
           type="PX.Data.PXDBTranslatonProvider, PX.Data" />
  
      <!--The custom translation provider-->
      <remove name="DemoTranslationProvider" />
      <add name="DemoTranslationProvider"
           type="Demo.Translation.DemoTranslationProvider, TranslationProvider"
           applicationName="/"/>
    </providers>
  </pxtranslate>
  ...
</px.core>
```

**Parent topic:**[Supporting UI Localization](../DeveloperGuide/UIDev_Localization_Mapref.md)

