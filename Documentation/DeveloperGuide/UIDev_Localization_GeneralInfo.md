# UI Localization: General Information {#_fed18050-08f3-4af0-92e0-8c2acf961525 .concept}

Acumatica ERP provides built-in localization functionality, so you can easily translate Acumatica ERP into any language without using third-party products. You can collect the strings used in the whole system or on a particular form, and translate them for any locale available in Acumatica ERP. Once the translated strings are entered and applied, the application does not require any recompilation or reinstallation.

For more information about how to use the built-in localization functionality, see [Translation Process](../UserGuide/SM__con_Translation_Process.md). To support this functionality in the customization code, you must prepare data access classes \(DACs\) and the code.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Localize the Modern UI in HTML and TypeScript
-   Prepare data access classes \(DACs\) for localization
-   Localize application messages in C\# code
-   Implement multilanguage fields
-   Optimize the memory consumption of localized data

## Applicable Scenarios { .section}

Generally, you need to support localization of the user interface in the application code if you develop any code that affects the user interface of Acumatica ERP. Localization of the user interface is crucial if the code that you develop is included in a customization project that is used in the situations such as the following:

-   Your customization project is intended for use in multiple countries with different languages.
-   In the region where the customization project is intended to be distributed, there are legal requirements to provide products and services in the local language.
-   Your customization project is intended for use in an organization that operates in multiple countries.

## Strings That Can Be Localized {#section_vv2_1y4_y4b .section}

By using the [Translation Dictionaries](../UserGuide/SM_20_05_40.md#) \(SM200540\) form, you can add translations for the string constants that are collected from the code of the application, and save them to the database. When a user signs in with a specific language, the system loads the translations and displays the translated strings to the user. For more information on localization, see [Locales and Languages](../UserGuide/SM__CON_Locales_and_Languages.md#).

The system collects for localization the string constants that are specified in the following items of the application:

-   The DisplayName property of the PXUIField attribute of the fields of data access classes \(DACs\) and actions of graphs
-   The AllowedLabels property of the PXStringList and PXIntList attributes
-   The Values property of the classes that implement the ILocalizableValues interface
-   The captions of form, grid, and panel controls and labels of input controls, which are specified in ASPX for the Classic UI
-   The UI names in the `caption` attribute of the respective tags in HTML for the Modern UI
-   The containerName parameter of the viewInfo decorator in TypeScript for the Modern UI
-   The titles of all forms in the site map, and workspace and category names
-   Report elements \(such as text box labels and diagram agendas\)
-   `public const string` fields of the classes marked with the PXLocalizable attribute

You can also translate user input to multiple languages and store translations in the database. For more information about the localization of user input, see [UI Localization: Multilanguage Fields](UIDev_Localization_MultiLanguageFields.md#).

**Parent topic:**[Supporting UI Localization](../DeveloperGuide/UIDev_Localization_Mapref.md)

