# Localization of the Self-Service Portal {#_12337c55-1d24-4670-bca8-bd408e4cc010 .concept}

Acumatica Self-Service Portal provides functionality that you can use to localize the system in multiple languages. You can maintain the user interface and wikis in multiple languages if you have multiple locales in Acumatica ERP. The default locale of Self-Service Portal is U.S. English.

Localization includes the use of locale-specific settings and the translation of the strings used in the application interface. In addition, you can translate user input and wiki articles to multiple languages.

In this topic, you will read about how you can localize Self-Service Portal.

## Localizing Self-Service Portal { .section}

You can localize Self-Service Portal in the following ways:

-   You translate the strings used in the application interface. For details, see [Translating the User Interface](#_e75f0cf7-a06b-4f37-a393-414baac0635c).
-   You translate the user input in the boxes with multilanguage support. For more information, see [Translating User Input](#_26987cd4-e466-46cf-aafc-8b135221c98e).
-   You translate wiki articles. For details, see [Translating Wiki Articles](#_34e839ac-990e-4e24-9b54-6122a8badaf2).

## Translating the User Interface {#_e75f0cf7-a06b-4f37-a393-414baac0635c .section}

You can translate into multiple languages the strings used in the portal interface, such as box and column labels, error messages, and warnings. Before you start localizing the user interface of Self-Service Portal in a particular language you should make sure that a corresponding locale has been added to Acumatica ERP. For details, see [Locales and Languages](SM__CON_Locales_and_Languages.md).

The translation process includes the collection and translation of the strings. For more information, see [Translation Process](SP__con_Translation_Process.md).

## Translating User Input {#_26987cd4-e466-46cf-aafc-8b135221c98e .section}

When users log in to Self-Service Portal with a particular locale, they see values in the following text boxes and table columns in the language of the locale \(if the values have been translated in Acumatica ERP\):

-   The **Description** column on the **Catalog** \(SP700000\) form of the Orders suite
-   The Description box in the **Item Details** dialog box of the Orders suite
-   The **Category** box on the **Catalog** \(SP700000\) form of the Orders suite
-   The **Type** column on the **My Orders** \(SP700003\) form of the Orders suite
-   The **Country** box, which is on multiple forms of Self-Service Portal \(such as the **Company Profile** \(SP408030\) form in the Support suite\)

If the portal users do not see translated values in these form elements, you should check whether the values in the required locale language were added in Acumatica ERP. For details, see [Boxes that Display Translated Values](SP__con_Boxes_Multilanguage.md).

## Translating Wiki Articles {#_34e839ac-990e-4e24-9b54-6122a8badaf2 .section}

The Help wiki is created in the base language of Self-Service Portal, U.S. English. For a newly added locale, all articles will be displayed in the base language of the locale until you create locale-specific versions of the articles. For the detailed procedure, see [To Create a Localized Version of a Wiki Article](SP__how_Translate_Wiki_Article.md).

After you have translated an article, only the versions of the article created in the selected locale will be listed on the **History** tab when you open the article in [Wiki Editor Form for Articles](DM__con_Wiki_Wiki_Editor_Form_for_Articles.md).

**Parent topic:**[Managing Localization of the Self-Service Portal](../UserGuide/SP__mng_Translation.md)

