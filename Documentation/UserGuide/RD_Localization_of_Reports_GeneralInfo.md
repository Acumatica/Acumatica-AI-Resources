# Report Localization: General Information {#_88687400-b254-4683-8ccf-b637aeb1947e .concept}

Acumatica ERP provides built-in localization functionality. In the Acumatica Report Designer, you can localize any report, so that a user can run this report and view the resulting report in the language they selected when signing in to Acumatica ERP.

## Learning Objectives { .section}

In this chapter, you will learn how to localize a report in the Report Designer.

## Applicable Scenarios { .section}

You may want to learn about report localization in the following circumstances:

-   You are responsible for the customization of Acumatica ERP in your company, including developing and modifying reports to give users the information they need to do their jobs.
-   You need to provide reports in different languages.

## The Objects of Localization { .section}

To localize a report, you have to provide translations for its source strings, which include form names, element labels, parameters, predefined values of parameters, and constant strings of variables and formulas. On the [Translation Dictionaries](SM_20_05_40.md) \(SM200540\) form, you can collect, filter, and then translate any strings of Acumatica ERP forms, including reports, whether they are predefined reports or those designed by using the Report Designer.

The value of the **Behavior** &gt; **Localizable** property, which can be specified in the Report Designer for a report, determines the multiple language support of the report. You can specify this property for the whole report, as well as for each element, such as a text box. The default value of this property is *True*, indicating that multiple languages are supported for report elements.

## Process of Report Localization { .section}

To localize a report into a language, you perform the following general steps on the [Translation Dictionaries](SM_20_05_40.md) \(SM200540\) form:

1.  You collect the report strings to be translated.
2.  You select the language or languages to which you want to localize your report.
3.  In the collection of strings, you find the strings related to the report and type your translation.
4.  You save your translation.

You can also collect strings on the [Translation Sets](SM_21_15_00.md) \(SM211500\) form, as described in the next section.

**Tip:** To localize any resources of Acumatica ERP, make sure that the languages to which resources will be localized are activated on the [System Locales](SM_20_05_50.md) \(SM200550\) form.

## Collection of Strings for Translation { .section}

When you localize the system for the first time, or after you update or publish any report that you want to be localized, you should collect the strings to be translated. In Acumatica ERP, all the strings are considered to be either bound or unbound. Bound strings are strings associated with system resources bound to forms, such as table names. Unbound strings are strings associated with unbound resources—resources, such as prompts, that are not bound to forms. Any reports are also considered to be unbound resources. You can collect particular unbound resources used in reports.

You can collect the report strings for translation in one of the following ways:

-   On the [Translation Dictionaries](SM_20_05_40.md) \(SM200540\) form: You click **Collect Strings** on the form toolbar to collect all the strings used in the system, including the report strings. This operation can be time-consuming.
-   On the [Translation Sets](SM_21_15_00.md) \(SM211500\) form: You create a translation set with the following options selected in the **Unbound Resources To Collect** box:

    -   *Chart Name*
    -   *Constant in Formula*
    -   *Prompt*
    -   *Text Box Value*
    -   *Valid Value*
    You select these types of elements because reports include only elements of these types. Then you save the translation set and click **Collect** on the form toolbar to collect all the strings of the translation set.

    This operation may also take a significant amount of time, but less time than the collection of strings on the [Translation Dictionaries](SM_20_05_40.md) form.


**Parent topic:**[Localizing Reports](../UserGuide/RD_Localization_of_Reports_Mapref.md)

