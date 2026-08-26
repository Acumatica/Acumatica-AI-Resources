# Translation Process {#_64819546-2b11-4e87-a7db-3a75b1249cb5 .concept}

Acumatica ERP provides built-in localization functionality, so you can easily translate Acumatica ERP into any language without using third-party products. You can collect the strings used in the whole system or on a particular form, and translate them for any locale available in Acumatica ERP.

This topic explains how to translate interface strings by using the built-in localization functionality of Acumatica ERP.

## Translating Application Strings { .section}

In Acumatica ERP, various strings that are used on the application interface—such as element and column labels, error messages, and warnings—are stored within the code. Hence, the translation of the strings includes two steps: collecting strings and translating strings.

During the string collection process, the system gathers the strings used in the system \(including the strings in customized system elements, such as forms\) and prepares a string collection for translation. You can collect all strings in the system or the strings bound to particular forms. Because the collection process is resource- and time-consuming, we recommend that you perform string collection on the whole system after you install the system and after updates to collect the new and updated strings. For details, see [Collecting the Strings for Translation](#section_rp3_5bc_gw).

Translation of the collected strings from US English, which is the Acumatica ERP default language, to any other language can be performed directly in Acumatica ERP. Alternatively, the filtered list of strings may be exported to an Excel file, and imported back after being translated somewhere else. For more information, see [Translating Strings](#section_r5w_5bc_gw).

After you finish translating strings on the interface, when a user signs in to the system and selects a local language, the application will use strings translated to this language. For the strings that are not translated, the system will display the string value in the default language \(US English\).

## Collecting the Strings for Translation {#section_rp3_5bc_gw .section}

Source strings include element labels, toolbar and menu items, drop-down list options, error messages, dialog box captions, and form names. When you localize the system for the first time or after you update your instance, you should collect all the strings used in the system for translation by clicking **Collect Strings** on the form toolbar of the [Translation Dictionaries](SM_20_05_40.md) \(SM200540\) form.

If any system functionality is updated or customized in your system that was previously localized, you can collect the new strings used on a particular form \(or multiple forms\) for translation. To collect these strings, you should create a translation set that includes only the required forms, and then collect the strings used on these forms for translation on the [Translation Sets](SM_21_15_00.md) \(SM211500\) form. For the detailed procedures, see [To Add a New Translation Set](SM__how_Translation_Sets_Add.md) and [To Collect the Strings of a Translation Set](SM__how_Translation_Sets_Collect.md).

You can also collect strings from multiple translation sets at once by using the [Collect Translation Sets](SM_51_15_00.md) \(SM511500\) form. For details, see [To Collect Strings of Multiple Translation Sets](SM__how_Translation_Sets_Collect_Multiple.md).

If you are collecting strings that were previously translated and if any of these strings has not been found during the new collection process, the system marks these strings as obsolete and displays them on the **Obsolete** tab of the [Translation Dictionaries](SM_20_05_40.md) form.

**Attention:** String collection is a time-consuming operation that should be performed during off-peak hours and never attempted on a busy production system.

## Translating Strings {#section_r5w_5bc_gw .section}

Generally, translating strings is a straightforward process: In the **Default Values** table of the [Translation Dictionaries](SM_20_05_40.md) \(SM200540\) form, type the translation for each string that must be translated in the *&lt;Target Language&gt;* column and select the **Do Not Translate** check box for each string that does not require translation. When you're finished, click **Save**. The fully translated \(that is, translated into all languages defined in the system\) strings and the strings that do not require translation are hidden from the **Default Values** table.

Despite the simplicity, the translation process has its own particularities in how you filter strings to be translated and in what you translate or not.

First of all, the strings you see on the [Translation Dictionaries](SM_20_05_40.md) form are filtered in any case: You can see either *bound* or *unbound* strings. Bound strings are the strings associated with system resources bound to forms, such as table names. Unbound strings are the strings associated with resources that are not bound to forms, such as prompts. To translate all the strings on the interface, you should translate both the bound and unbound strings. The type of strings displayed on the [Translation Dictionaries](SM_20_05_40.md) depends on the **Show Only Unbound** check box in the Selection area of this form as follows:

-   If the check box is cleared, the system displays only bound strings. For any bound string, you can get the context of the string: By using the **Usage Details** dialog box, you can view the list of forms on which you can find the string and quickly navigate to any form in the list.

    **Tip:** In Acumatica ERP, the contents of a form may be content-related and may depend on system configuration and on selections on the form itself. If you don't see the string immediately, you can check the corresponding reference topic in help.

    Additionally, you can select a form in the **Show Used in UI** box in the Selection area of the form to view and translate only strings that are associated with the resources of the selected form.

-   If the check box is selected, the system displays only unbound strings. Additionally, you can select which type \(or types\) of the unbound resources you want to view and translate.

The next particularity of the translation process relates to the contents of the source values of strings. If you open the list of collected strings, you will see that strings include the text itself and may include special formatting. The examples of the special formatting include the following:

-   The *-&gt;* character: For commands in lists, the *-&gt;* character separates the name of the list from the command \(for example, *State -&gt; Completed*; the *State -&gt;* part of the string is for informational purposes only\). You should translate only the text after the *-&gt;* sign.
-   HTML tags: Strings may include HTML tags that define the formatting of the string. For example, *&lt;B&gt;* and *&lt;/B&gt;* tags indicate that the enclosed text should be in bold type. You should keep these tags in the translated text in their respective places to keep the formatting.
-   Placeholders that use the *'\{&lt;number&gt;\}'* format: These placeholders are replaced with text when a user who works with the document gets the message. You should copy the placeholders without changes in the respective places in the translation.
-   The *~* \(tilde\) character: When a message that you want to translate contains multiline text, the end of each line is indicated by the *~* character. You should use the tilde in the translated multiline text to mark the ends of lines.

    **Tip:** If you do not mark the ends of lines with tildes in the translated text, the message will be displayed as one line for messages translated directly in Acumatica ERP, or the translation of this text will not be imported for messages translated in an external file \(for example, in a Microsoft Excel workbook\).

-   The special wrapper `[a type=ACTION][/a]`: This wrapper is used along with messages that the system displays in tables when the table is empty. It converts the text into a hyperlink. When a user clicks this link, the system performs the action specified in the wrapper \(such as `clear`\). You should keep this wrapper in the translated text in its initial place to keep the formatting and the action.

One additional particularity is related to handling strings that should not be translated. In terms of the effect on the UI, there is no difference between a string with the **Do Not Translate** check box selected, and a string left untranslated and with the **Do Not Translate** check box cleared: Either way, the user will see the value of the string in the default language. However, based on whether you select this check box, these strings are processed differently:

-   A string with the **Do Not Translate** check box selected is hidden from the [Translation Dictionaries](SM_20_05_40.md) form until you select the **Show Excluded** check box. Additionally, such strings are considered valid when you try to validate translation of strings on forms.
-   A string that is not translated and for which with the **Do Not Translate** check box is cleared appears on the [Translation Dictionaries](SM_20_05_40.md) form when you select a language for translation. Also, such strings are considered invalid and warnings about these strings appear on the form when you try to validate string translation on forms.

    **Tip:** For more information on validation of translation of strings, see the **Reviewing the Translations on Forms** section in this topic.


For the detailed procedures, see [To Translate Bound Strings](SM__how_Translate_Bound_Strings.md), [To Translate Unbound Strings](SM__how_Translate_Unbound_Strings.md), and [To Exclude Strings from Translation](SM__how_Translate_Exclude.md).

After you add translations for a string in all the languages defined in the system or mark a string as not requiring translation and save the result, the string is removed from the work area. You can see the fully translated strings and the excluded strings by selecting the **Show Localized** and **Show Excluded** check boxes, respectively, on the [Translation Dictionaries](SM_20_05_40.md) form.

## Handling Multiple Occurrences of the Same String { .section}

A string—such as an element label or a drop-down list option that is available on multiple forms—may be used in the interface multiple times. Depending on the context, the same string may require different translation. To address this situation, Acumatica ERP shows the resource or resources the string is associated with for each string listed in the **Default Values** table of the [Translation Dictionaries](SM_20_05_40.md) \(SM200540\) form. These resources, which are displayed in the **Key-Specific Values** table, indicate the entities in which specific string is used. You can provide correct translations for each occurrence of the string depending on its context.

**Tip:** If you want to provide specific translations for different occurrences of a string, you must provide a generic translation in the **Default Values** table.

The translation you specify in the **Default Values** table is generally applied to all occurrences of the string automatically. But if you specify specific translations for certain occurrences in the **Key-Specific Values** table, the system will use the specific translations.

## Reviewing the Translations on Forms { .section}

To check if all the strings on a form are translated into a language defined in the system, you can turn on validation of translations on forms for the language on the [System Locales](SM_20_05_50.md) \(SM200550\) form. For the detailed procedure, see [To Turn On Validation of Translations](SM__how_Activate_Validation.md).

With the validation active, when you sign in with the language and open a form that has untranslated strings, you see a warning with the quantity of the untranslated strings appear at the top of the form.

**Tip:** The warnings appear for all users of the system who sign in with the language.

You can click the warning to expand the list. Each warning includes the type and the details of the resource with which the untranslated string is associated, and a link to the [Translation Dictionaries](SM_20_05_40.md) \(SM200540\) form. You can click the link to quickly open the [Translation Dictionaries](SM_20_05_40.md) form with the locale of the untranslated string selected, and then find and translate the string.

**Tip:** The strings with the **Do Not Translate** check box selected on the **Collected** tab of the [Translation Dictionaries](SM_20_05_40.md) form are considered valid and are not listed in the warning.

After you translate all strings into a language and validate the translations, you can turn off the validation of translations, as described in [To Turn Off Validation of Translations](SM__how_Deactivate_Validation.md).

## Exporting and Importing Strings { .section}

You can export strings, translate them by using third-party applications, and import back into Acumatica ERP. Translated strings are loaded into the system as a locale dictionary and are immediately applied to the user interface once a user signs into the system using a specific locale.

You can also import the file with the translations into a new instance to speed up the translation process. The new instance should have the locales translations that you want to import.

**Tip:** If the imported file includes strings that were not collected in the instance, these strings will be imported as unbound strings. This happens because the system is not able to reinstate the bounds between the forms and the system resources associated with the imported strings. Such strings are displayed on the interface similarly to the way other unbound strings are displayed, and you won't be able to use the **Usage Details** dialog box on the [Translation Dictionaries](SM_20_05_40.md) \(SM200540\) to quickly view the forms the strings are used on.

To export and import strings, use the corresponding buttons on the table toolbar of the [Translation Dictionaries](SM_20_05_40.md) form.

**Tip:** The exported file includes only the strings displayed in the table, based on the filtering applied on the [Translation Dictionaries](SM_20_05_40.md) form.

## Correcting Translations { .section}

At any time during the translation process you may need to change the translation of a string—for example, to correct a typo. You can use the [Translation Dictionaries](SM_20_05_40.md) \(SM200540\) form to correct the translation. The steps to correct the translation depend on the string whose translation you want to correct:

-   If the string has not been fully translated, use the filtering options to find it and correct the translation.
-   If the string has been fully translated and is hidden on the form, select the **Show Localized** check box to make the fully translated strings appear on the **Collected** tab, and then find the string and correct the translation.
-   If the string has been wrongly marked as not requiring translation, select the **Show Excluded** check box to make the strings that do not require translation appear on the **Collected** tab, and then find the string and clear the **Show Excluded** check box.

If you know when the translation has been added or modified, you can use filtering to view only strings with translations added and modified after the date by specifying the dates in the **Created Since** and **Modified After** boxes, respectively.

## Updating Translations { .section}

Sometimes the values of particular strings change. For example, this may happen if the functionality of a form is changed during an update of your Acumatica ERP instance or if a customization has been applied to a form by the customizers in-house. When you collect strings, if any of the previously translated strings have not been found during the new collection process, these strings are considered obsolete and displayed on the **Obsolete** tab of the [Translation Dictionaries](SM_20_05_40.md) \(SM200540\) form. Strings with new values appear on the **Collected** tab as untranslated strings.

**Tip:** We recommend that you collect all strings in the system by using the [Translation Dictionaries](SM_20_05_40.md) form after every update of your Acumatica ERP instance.

If any functionality is updated or customized in the system regularly, you may need to regularly collect the strings from the appropriate forms for translation. To do that, you should create a translation set in which you include a required form or forms by using the [Translation Sets](SM_21_15_00.md) \(SM211500\) form, and then add these sets to a schedule for automatic collection. For more information, see [Automated Processing: General Information](SA_Scheduling_Automated_Processing_GeneralInfo.md).

## Translating Wiki Articles {#section_nq3_n3l_hw .section}

The Help wiki is created in the base language of Acumatica ERP, U.S. English. For a newly added locale, all articles will be displayed in this base language until you create locale-specific versions of the articles. For the detailed procedure, see [To Create a Localized Version of an Article](SM__how_Translate_Wiki_Article.md).

After you translate an article, only the versions of the article created in the selected locale will be listed on the **History** tab when you open the article in [Wiki Editor Form for Articles](DM__con_Wiki_Wiki_Editor_Form_for_Articles.md).

For more information about wikis in Acumatica ERP, see [Managing Wikis](DM__mng_Wikis.md).

**Parent topic:**[Managing Locales and Languages](../UserGuide/SM__mng_Locales.md)

