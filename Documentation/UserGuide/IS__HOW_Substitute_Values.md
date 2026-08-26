# To Substitute Values During Data Import or Data Export {#_79ed2c1d-2988-4c19-b470-de226b5ea305 .task}

The data to be imported to Acumatica ERP or exported from Acumatica ERP may contain values that cannot be inserted into the database of Acumatica ERP or the external system as they are. These values require a simple modification before they can be inserted into the respective database. For example, suppose that the data for import contains country codes that are different from the country codes registered in Acumatica ERP. The country codes in the data must be replaced with the country codes registered in Acumatica ERP before the data import.

To handle such data, you define substitution lists, which consist of pairs of source values and their corresponding substitution values, on the [Substitution Lists](SM_20_60_26.md) \(SM206026\) form. You then use these substitution lists in formulas in the mappings of import or export scenarios on the [Import Scenarios](SM_20_60_25.md) \(SM206025\) or [Export Scenarios](SM_20_70_25.md) \(SM207025\) form, respectively.

## To Substitute Values by Using a Formula { .section}

1.  On the [Import Scenarios](SM_20_60_25.md) \(SM206025\) or [Export Scenarios](SM_20_70_25.md) \(SM207025\) form, select a scenario in which you want to substitute values.
2.  On the table toolbar of the **Mapping** tab, click **Substitution Lists**.
3.  On the [Substitution Lists](SM_20_60_26.md) \(SM206026\) form, which opens, do the following:
    1.  In the **Substitution List** box, type the name of the list, such as `Countries for import`.
    2.  On the table toolbar, click **Add Row**.
    3.  For each value that you want to replace with a new value, do the following:
        1.  In the **Original Value** box, type the value that you want to replace in the data prepared for import or export.
        2.  In the **Substitution Value** box, type the value that will replace the value specified in the **Original Value** box.

            For example, the country code of the United States of America in Acumatica ERP is US. Suppose that in the data that you want to import to Acumatica ERP, the United States code is USA. In this case, you will type `USA` in **Original Value** column and `US` in **Substitution Value** column.

    4.  On the form toolbar, click **Save &amp; Close**.
4.  On the **Mapping** tab of the [Import Scenarios](SM_20_60_25.md) or [Export Scenarios](SM_20_70_25.md) form, double-click the **Source Field or Value** \(for an import scenario\) or **Target Field or Action** \(for an export scenario\) column in the row for which you want to substitute values and click the Edit button. The [Formula Editor Dialog Box](SM__ref_IS_Formula_Editor_Dialog.md) opens.
5.  In the dialog box, do the following:
    1.  Click *Other* in the *Functions* node, and double-click one of the following items in the list of available functions:

        -   *SubstituteListed \(sourceField, substitutionList\)*: The function replaces the values of the `sourceField` field with the values from the `substitutionList` substitution list if a substitution value is defined for a particular value of the field.
        -   *SubstituteAll \(sourceField, substitutionList\)*: The function replaces all values of the `sourceField` field with the values from the `substitutionList` substitution list. If no substitution value is defined for a particular value of the field, the system displays an error.
        The function is added to the Formula Text pane of the dialog box.

    2.  Modify the function as follows:
        1.  Replace *sourceField* with the name of the field whose value you want to replace. You can search for the needed field in *Fields &gt; External* if you are configuring the mapping for an import scenario, or in *Fields &gt; Internal* if you are configuring the mapping for an export scenario.
        2.  Replace *substitutionList* with the name of the substitution list that you have created in Step 3 above. You can search for the name of the needed substitution list in *Substitution Lists* in the Formula Editor.
    3.  Click **OK**.
6.  On the form toolbar, click **Save** to save your changes to the scenario mapping.

During the data import or the preparation of the data for export, the system will search for the original values from the substitution list and replace them with the corresponding substitution values according to the formula.

**Parent topic:**[Configuring Scenario Mapping](../UserGuide/IS__mng_Scenario_Mapping.md)

