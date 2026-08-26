# Country, State, and Postal Code Validation {#_972fde4f-b981-44db-86d5-6eb91f60a7b7 .concept}

Input masks may be created to help users enter data in the required format. Masks are used, for example, for phone numbers and postal codes. Moreover, regular expressions can be created to validate the entered values, because the values for some elements must meet not only input format requirements but also specific rules.

For more details on the format of masks, see [Examples of the Usage of Masks and Regular Expressions](CS__con_Examples_Mask_and_RegExp_Usage.md).

## Country and State Validation { .section}

In Acumatica ERP, countries are identified by a two-letter code in accordance with ISO 3166. In data that is imported to the system, the country field may contain a name instead of the required code. A similar situation can occur with states or provinces within countries. To help the system identify each country or state during import, on the [Countries/States](CS_20_40_00.md) \(CS204000\) form, you can select the appropriate validation modes for countries and for states.

In the **Country Validation Mode** box, you can select one of the following modes, which the system will use to validate each value in a country field during import:

-   *By Country ID* \(default\): The system validates the entered value by using the ID of the selected country.

    You use this mode if users enter the country on forms manually or when imported data usually contains country codes and you want to ensure that these codes are valid codes in accordance with ISO 3166.

-   *By Country ID and Name*: The system validates the entered value by using the ID and name of the selected country.

    You use this mode when data is imported to Acumatica ERP and it contains either country IDs or country names that are spelled as they are in the system.

-   *By Country ID, Name, and Regexp*: The system validates the entered value by using the ID, the name of the selected company, and the regular expression \(which is specified in the **Country Validation Regexp** box\).

    You use this mode if imported data may contain a country name typed with errors or differences from the country name entered in the system. \(For example, suppose that the imported data contains *England* but the country name is *United Kingdom of Great Britain* in the system.\)


For each country with states or provinces, in the **State Validation Mode** box, you can select one of the following modes, which the system will use to validate each value in a state field during import:

-   *No Validation* \(default\): The system does not validate the state ID or name. You do not need to change this mode if states were not defined for the selected country on this form.
-   *By State ID*: The system validates the entered value by using the list of state IDs defined for the selected country on this form.

    You use this mode if users enter states on forms manually or when imported data usually contains state IDs that are spelled as they are in the system.

-   *By State ID and Name*: The system validates the entered value by using the lists of state IDs and state names defined for the selected country on this form.

    You use this mode when data is imported to Acumatica ERP and it contains either state IDs or names spelled as they are in the system.

-   *By State ID, Name, and Regexp*: The system validates the entered value by using the state ID, state name, and regular expression \(which is specified in the **State Validation Regexp** box of the **States** table of this form\).

    You use this mode if imported data may contain a state name typed with errors or differences from the state name entered in the system.


When a country data is imported to the system along with other data, the system validates the value in the country field as follows:

1.  Regardless of the validation mode specified for countries, checks whether the imported value is one of the country IDs defined in the system. The system processes the results of this check as follows:
    -   The imported value is found in the database: The system regards the entered value as a valid country ID.
    -   The imported value is not found in the database: If the *By Country ID and Name* or *By Country ID, Name, and Regexp* validation mode is specified for at least one country defined in the system, the system proceeds to Step 2. If the *By Country ID* validation mode is specified for all countries, the system returns an error message for the import task.
2.  Checks whether the imported value is one of the names of the countries with the *By Country ID and Name* or *By Country ID, Name, and Regexp* validation mode specified. The system searches all matches of the imported value with the country names. The system processes the results of this check as follows:
    -   Multiple matches are found in the database: The system returns an error message for the import task.
    -   Only one match is found in the database: The system regards the imported value as valid and replaces the value with the country ID that corresponds to the country name it has found.
    -   No match is found in the database: If the *By Country ID, Name, and Regexp* validation mode is specified for at least one country in the system, the system proceeds to Step 3. If there are no countries with the *By Country ID, Name, and Regexp* validation mode in the system, an error message is returned for the import task.
3.  Checks whether the imported value matches any of the regular expressions specified for the countries with the *By Country ID, Name, and Regexp* validation mode specified. The system searches all matches of the entered value with regular expressions. The system processes the results of this check as follows:
    -   Multiple matches are found in the database: The system returns an error message for the import task.
    -   Only one match is found in the database: The system regards the imported value as valid and replaces the value with the country ID that corresponds to the country name it has found.
    -   No match is found in the database: The system returns an error message for the import task.

If any of the states defined on the [Countries/States](CS_20_40_00.md) form has a validation mode other than *No Validation* \(that is, if state validation is required for any state of the country\), the system performs similar checks to those described above to validate the value in the state field.

## Postal codes { .section}

Input masks for postal codes are set on the [Countries/States](CS_20_40_00.md) \(CS204000\) form. They are used for input validation on the following forms:

-   [Branches](CS_10_20_00.md) \(CS102000\)
-   [Vendors](AP_30_30_00.md) \(AP303000\)
-   [Customers](AR_30_30_00.md) \(AR303000\)

**Parent topic:**[Managing Input Validation Options](../UserGuide/SM__con_Input_Validation_Options.md)

