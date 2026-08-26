# Translation Process {#_901e6bf8-7f39-4036-9cf1-d2f5ca73151a .concept}

Acumatica Self-Service Portal provides built-in localization functionality, so you can easily translate Self-Service Portal into any language without using third-party products. You can collect the strings used in the whole system and translate them for any locale available in Acumatica ERP.

This topic explains how to translate interface strings by using the built-in localization functionality of Self-Service Portal.

## Overview of Translation Tasks { .section}

On Self-Service Portal, various strings that are used in the portal interface—such as element and column labels, error messages, and warnings—are stored within the code. When you initially translate the portal interface, you need to perform the following tasks:

1.  Collect strings: You collect the strings that correspond to the application resources from the code that you want to translate. For details, see [Collection of the Strings for Translation](#_3212a459-3f53-43e8-bac3-b6eb15ab4df3).
2.  Translate strings: You translate the collected strings on Self-Service Portal or by using an Excel file. For more information, see [String Translation](#_204573b2-bd04-49c5-9324-41c4c8fd6785).
3.  Optionally, handle multiple occurrences of the same string: You check whether the translations of the strings that appear multiple times in the portal interface are appropriate on all forms. For details, see [Multiple Occurrences of the Same String](#_bfbbd09d-0b01-4d4a-b9b8-e770b70ae480).
4.  Review the translations on forms: You review the forms to check whether all strings have been translated. For more information, see [Review of the Translations on Forms](#_4e9f8b73-929a-4957-a4fc-848a09b572e1).

After you finish translating the strings on the interface, when a user signs in to the portal and selects a local language for which you have translated strings, the application will use the translated strings. For the strings that are not translated, the system will display the string value in the default language \(U.S. English\).

To keep the translated resources up to date, you can perform the following maintenance tasks as needed:

-   Correct translations: When you or other person finds a mistake in the translation of an interface string, you can correct the translation right away. For details, see [Translation Correction](#_afd8b477-b0e7-4020-9984-1a1da3a6f5a4).
-   Update translations: After an update of Self-Service Portal you may need to update translations of the interface strings because some UI elements on forms may be changed. For more information, see [Translation Update](#_7bcd3ae4-961c-435d-a76c-986be1ea62a8).

## Collection of the Strings for Translation {#_3212a459-3f53-43e8-bac3-b6eb15ab4df3 .section}

During the string collection process, the system gathers all strings used on the portal \(including the strings in customized system elements, such as forms\) and prepares a string collection for translation. The collection process is resource- and time-consuming, and we recommend that you perform string collection only after you have installed the portal and after updates to collect the new and updated strings.

Source strings include element labels, toolbar and menu items, drop-down list options, error messages, dialog box captions, and form names. When you localize the system for the first time or after you update your instance, you should collect all the strings used in the system for translation by clicking **Collect Strings** on the form toolbar on the [Translation Dictionaries](SM_20_05_40.md) \(SM200540\) form.

If you are collecting strings that were previously translated and if any of these strings has not been found during the new collection process, the system marks these strings as obsolete and displays them on the **Obsolete** tab of the [Translation Dictionaries](SM_20_05_40.md) form.

## String Translation {#_204573b2-bd04-49c5-9324-41c4c8fd6785 .section}

Translation of the collected strings from U.S. English to any other language can be performed directly on Self-Service Portal. Alternatively, the filtered list of strings may be exported to an Excel file, and imported back after being translated by a third-party system \(for details, see [Export and Import of Strings](#_bbe747ca-15d6-466b-97c2-3379db022541)\).

Translating strings on Self-Service Portal is a straightforward process:

1.  In the **Default Values** table of the [Translation Dictionaries](SM_20_05_40.md) \(SM200540\) form, you type the translation for each string that must be translated in the *&lt;Target Language&gt;* column.
2.  For each string that does not require translation, you select the **Do Not Translate** check box.
3.  You save your changes.

For the detailed procedures that describe translating strings and excluding particular strings, see [To Translate Bound Strings](SP__how_Translate_Bound_Strings.md), [To Translate Unbound Strings](SP__how_Translate_Unbound_Strings.md), and [To Exclude Strings from Translation](SP__how_Translate_Exclude.md).

After you add translations for a string in all the languages defined in the system or mark a string as not requiring translation and save the result, the string is removed from the work area. You can see the fully translated strings and the excluded strings by selecting the **Show Localized** and **Show Excluded** check boxes, respectively, on the [Translation Dictionaries](SM_20_05_40.md) form.

We recommend that you pay attention to the following things when you translate the strings: how you filter strings to be translated, which special formatting you should use, and which strings you translate or do not translate. For more information, see [String Filter](#_4bc970dd-6caf-4aa5-b221-04fc019940b4), [Special Formatting in Strings](#_8852a4c5-4361-4f93-b7e1-6282a42596d7), and [Not Translated Strings](#_f3af1db4-2f5e-46c5-881d-a320005807da).

## Export and Import of Strings {#_bbe747ca-15d6-466b-97c2-3379db022541 .section}

You can export strings, translate them by using third-party applications, and import them back into Self-Service Portal. Translated strings are loaded into the system as a locale dictionary and are immediately applied to the user interface once a user signs into the system by using a specific locale.

You can also import the file with the translations into a new instance to speed up the translation process. The new instance should have the locale translations that you want to import.

**Tip:** If the imported file includes strings that were not collected in the instance, these strings will be imported as unbound strings. This happens because the system cannot match the forms and the system resources associated with the imported strings. These strings are displayed on the interface similarly to the way other unbound strings are displayed, and you won't be able to use the [Usage Details Dialog Box](SM_20_05_40.md#_825716f3-f92e-47d2-9731-0cb4eb6c25a7) on the [Translation Dictionaries](SM_20_05_40.md) \(SM200540\) form to quickly view the forms the strings are used on.

To export and import strings, you use the corresponding buttons on the table toolbar of the [Translation Dictionaries](SM_20_05_40.md) form.

**Tip:** The exported file includes only the strings displayed in the table, based on the filtering applied on the [Translation Dictionaries](SM_20_05_40.md) form.

## String Filter {#_4bc970dd-6caf-4aa5-b221-04fc019940b4 .section}

The strings you see on the [Translation Dictionaries](SM_20_05_40.md) \(SM200540\) form are filtered: You can see either *bound* or *unbound* strings. Bound strings are the strings associated with system resources bound to forms, such as table names. Unbound strings are the strings associated with resources that are not bound to forms, such as prompts. To translate all the strings on the interface, you should translate both the bound and unbound strings. The type of strings displayed on the [Translation Dictionaries](SM_20_05_40.md) form depends on whether the **Show Only Unbound** check box is selected in the Selection area of this form as follows:

-   If the check box is cleared, the system displays only bound strings. For any bound string, you can get the context of the string: By using the [Usage Details Dialog Box](SM_20_05_40.md#_825716f3-f92e-47d2-9731-0cb4eb6c25a7) dialog box, you can view the list of forms on which you can find the string and quickly navigate to any form in the list.

    **Tip:** On Self-Service Portal, the contents of a form may be content-related and may depend on the system configuration and on the selections on the form itself. If you don't see the string immediately, you can check if this string is described in the reference topic for the form in help.

    Additionally, you can select a form in the **Show Used in UI** box in the Selection area of the form to view and translate only strings that are associated with the resources of the selected form.

-   If the check box is selected, the system displays only unbound strings. Additionally, you can select which type \(or types\) of the unbound resources you want to view and translate.

To further narrow the displayed strings, you can use table filtering. For details, see the **Filters** topic in the Portal Interface Guide.

## Special Formatting in Strings {#_8852a4c5-4361-4f93-b7e1-6282a42596d7 .section}

If you open the list of collected strings on the [Translation Dictionaries](SM_20_05_40.md) \(SM200540\) form, you will see that the strings include the text itself and may include special formatting. The examples of the special formatting include the following:

-   The *-&gt;* character: For commands in lists, the *-&gt;* character separates the name of the list from the command \(for example, with *State -&gt; Completed*, the *State -&gt;* part of the string is for informational purposes only\). You should translate only the text after the *-&gt;* sign.
-   HTML tags: Strings may include HTML tags that define the formatting of the string. For example, *&lt;B&gt;* and *&lt;/B&gt;* tags indicate that the enclosed text should be in bold type. You should keep these tags in the translated text in their respective places to keep the formatting.
-   Placeholders that use the *'\{&lt;number&gt;\}'* format: These placeholders are replaced with the text when a user who works with the document gets the message. You must copy the placeholders without changes in the respective places in the translation.
-   The ~ \(tilde\) character: When a message that you want to translate contains multiline text, the end of each line is indicated by the ~ character. You should use the tilde in the translated multiline text to mark the ends of lines.

    **Tip:** If you do not mark the ends of lines with tildes in the translated text, the message will be displayed as one line for messages translated directly on Self-Service Portal, or the translation of this text will not be imported for messages translated in an external file \(for example, in a Microsoft Excel workbook\).


## Not Translated Strings {#_f3af1db4-2f5e-46c5-881d-a320005807da .section}

In terms of the effect on the UI, there is no difference between a string with the **Do Not Translate** check box selected and a string left untranslated and with the **Do Not Translate** check box cleared: Either way, the user will see the value of the string in the default language. However, based on whether you select this check box, these strings are processed differently:

-   A string with the **Do Not Translate** check box selected is hidden from the [Translation Dictionaries](SM_20_05_40.md) \(SM200540\) form until you select the **Show Excluded** check box. This string is considered valid when the system validates translation of strings on forms.
-   A string that is not translated and for which the **Do Not Translate** check box is cleared appears on the [Translation Dictionaries](SM_20_05_40.md) form when you select a language for translation. These strings are considered invalid, and warnings about these strings appear on the form when the system validates string translation on forms.

    **Tip:** For more information on the validation of translation of strings, see [Review of the Translations on Forms](#_4e9f8b73-929a-4957-a4fc-848a09b572e1).


## Multiple Occurrences of the Same String {#_bfbbd09d-0b01-4d4a-b9b8-e770b70ae480 .section}

A string—such as an element label or a drop-down list option that is available on multiple forms—may be used in the interface multiple times. Depending on the context, the same string may require different translation. To address this situation, Self-Service Portal shows the resource or resources the string is associated with for each string listed in the **Default Values** table of the [Translation Dictionaries](SM_20_05_40.md) \(SM200540\) form. These resources, which are displayed in the **Key-Specific Values** table, indicate the entities in which the specific string is used. You can provide correct translations for each occurrence of the string, depending on its context.

**Tip:** If you want to provide specific translations for different occurrences of a string, you must provide a generic translation in the **Default Values** table.

The translation you specify in the **Default Values** table is generally applied to all occurrences of the string automatically. But if you type specific translations for certain occurrences in the **Key-Specific Values** table, the system will use the specific translations.

## Review of the Translations on Forms {#_4e9f8b73-929a-4957-a4fc-848a09b572e1 .section}

To check whether all the strings on a form are translated into a language defined in the system, you can turn on the validation of translations on forms for the language on the [System Locales](SM_20_05_50.md) \(SM200550\) form in Acumatica ERP. For the detailed procedure, see [To Turn On Validation of Translations](SM__how_Activate_Validation.md).

With the validation active, when you sign in with the language and open a form that has untranslated strings, you see a warning appear at the top of the form with the quantity of the untranslated strings.

**Tip:** The warnings appear for all users of the system who sign in with the language.

You can click the warning to expand the list. Each warning includes the type and the details of the resource with which the untranslated string is associated and a link to the [Translation Dictionaries](SM_20_05_40.md) \(SM200540\) form. You can click the link to quickly open the [Translation Dictionaries](SM_20_05_40.md) form with the locale of the untranslated string selected, and then find and translate the string.

**Tip:** The strings with the **Do Not Translate** check box selected on the **Collected** tab of the [Translation Dictionaries](SM_20_05_40.md) form are considered valid and are not listed in the warning.

After you translate all strings into a language and validate the translations, you can turn off the validation of translations in Acumatica ERP, as described in [To Turn Off Validation of Translations](SM__how_Deactivate_Validation.md).

## Translation Correction {#_afd8b477-b0e7-4020-9984-1a1da3a6f5a4 .section}

At any time during the translation process you may need to change the translation of a string—for example, to correct a typo. You can use the [Translation Dictionaries](SM_20_05_40.md) \(SM200540\) form to correct the translation. The steps to find and correct the translation depend on the string whose translation you want to correct:

-   If the string has not been fully translated, you use the filtering options to find it and correct the translation.
-   If the string has been fully translated and is hidden on the form, select the **Show Localized** check box to make the fully translated strings appear on the **Collected** tab, and then find the string and correct the translation.
-   If the string has been wrongly marked as not requiring translation, you need to do the following:
    -   You select the **Show Excluded** check box to make the strings that do not require translation appear on the **Collected** tab.
    -   You find the string and clear the **Do Not Translate** check box for the string.
    -   In the **Default Values** table, you type the translation for each string that must be translated in the **\[Target language\]** column and save your changes.
    -   You clear the **Show Excluded** check box.

If you know when the translation has been added or modified, you can use filtering to view only strings with translations added and modified after the date by specifying the dates in the **Created Since** and **Modified After** boxes, respectively.

## Translation Update {#_7bcd3ae4-961c-435d-a76c-986be1ea62a8 .section}

Sometimes the values of particular strings change. For example, this may happen if the functionality of a form is changed during an update of Self-Service Portal or if a customization has been applied to a form by the customizers in-house. When you collect strings, if any of the previously translated strings have not been found during the new collection process, these strings are considered obsolete and are displayed on the **Obsolete** tab of the [Translation Dictionaries](SM_20_05_40.md) \(SM200540\) form. Strings with new values appear on the **Collected** tab as untranslated strings.

**Tip:** We recommend that you collect all strings in the system by using the [Translation Dictionaries](SM_20_05_40.md) form after every update of Self-Service Portal.

**Parent topic:**[Managing Localization of the Self-Service Portal](../UserGuide/SP__mng_Translation.md)

