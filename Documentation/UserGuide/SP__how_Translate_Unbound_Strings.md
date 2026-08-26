# To Translate Unbound Strings {#_31a01461-3c71-4f92-b6ec-2c25759c4ccd .task}

On Self-Service Portal, to translate collected strings, you use the [Translation Dictionaries](SM_20_05_40.md) \(SM200540\) form. You perform the steps below to translate unbound strings: those that are not bound to a form. For more information, see [Translation Process](SP__con_Translation_Process.md).

## To Translate Unbound Strings { .section}

1.  Open the [Translation Dictionaries](SM_20_05_40.md) \(SM200540\) form.
2.  In the **Language** box, select the check boxes for the languages to which you want to translate the strings.
3.  To view unbound strings in the tables, select the **Show Only Unbound** check box.
4.  To translate a string, do the following on the **Collected** tab:
    1.  In the **Default Values** table, select the string you want to translate.
    2.  If the string has only one occurrence in the system \(that is, only one row is displayed in the **Key-Specific Values** table\), type the translation in the **\[Target language\]** column \(that is, the column with the name of the target language\).
    3.  If the string has multiple occurrences in the system, do the following:

        1.  In the **\[Target language\]** column of the **Default Values** table, type the translation that is appropriate for most of the occurrences.
        2.  In the **\[Target language\]** column of the **Key-Specific Values** table, type the translations for specific occurrences that differ from the translation in the **Default Values** table.
        3.  If the translation of the occurrence in the **Key-Specific Values** table is the same as the translation in the **Default Values** table, leave the **\[Target language\]** column blank.
        **Note:** The translation in the **Default Values** table applies to all occurrences of the string, regardless of the filtering applied on the form, except the occurrences with a translation specified in the **Key-Specific Values** table.

5.  On the form toolbar, click **Save** to save your changes.

    If the string was translated into all languages defined in the system, the string is automatically hidden.

6.  Repeat Steps 4 and 5 until you translate all unbound strings in the system.

**Parent topic:**[Managing Localization of the Self-Service Portal](../UserGuide/SP__mng_Translation.md)

