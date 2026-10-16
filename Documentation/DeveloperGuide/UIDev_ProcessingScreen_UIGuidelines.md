# Processing Form: UI Guidelines

In this topic, you can learn the UI guidelines for the processing forms.

## Template, Label Sizes, and Other Layout Settings

By default, you should use the following guidelines while designing a processing form:

-   For the Selection area, you use the `17-17-14` or `17-14-17` template. For more details about templates, see [Form Layout: Predefined Templates](UIDev_DesigningLayout_Templates.md).
-   For the Selection area, you use the default label sizes.
-   For the table area, you use the Processing preset. For details about presets, see [Form Layout: Grid Presets](UIDev_DesigningLayout_GridPresets.md).
-   No **Activities**, **Files**, and **Notes** buttons in the form title bar should be displayed.
-   No **Files** and **Notes** buttons in the table should be displayed.

    **Attention:** For particular forms, the **Notes** and **Files** buttons can be required. For example, on the [Process Export Scenarios](../UserGuide/SM_20_70_35.md) \(SM207035\) form, this is the only way a user can download an exported file.

-   Sections in the Selection area can have captions if the captions make sense.

## Recommendations for Organizing the Layout

The following table shows recommendations for organizing the layout of a processing form.

<table id="_a2044259-d4c5-49f9-b6df-b924abf02f9e"><thead><tr><th>

Correct

</th><th>

Incorrect

</th></tr></thead><tbody><tr><td>

Put all commands on a single toolbar.

</td><td>

Do not separate commands into two toolbars.

</td></tr><tr><td>


</td><td>


</td></tr><tr><td>

Use a single `field` tag for an element with the **Date Range** label and two date and time controls for the selection of the start date and the end date.

 This approach applies only to processing forms.

</td><td>

Do not use two separate fields in a fieldset for the **Start Date** and **End Date** boxes on processing forms.

</td></tr><tr><td>


</td><td>


</td></tr></tbody>
</table>

## UX and Functional Guidelines

The form design should be tailored for screens with a resolution of 1280 x 720.

The number of a processing form should start with *50*. For details, see [Form and Report Numbering](../StudioDeveloperGuide/DA__con_Form_Numbering.md).

**Parent topic:**[Defining a Processing Form](../DeveloperGuide/UIDev_ProcessingScreen_Mapref.md)

