# Selector Control: Manual Configuration of the Value and Text {#_6f485ba0-1034-437d-895a-e2b1193d397a .concept}

By default, the values selected and displayed in the selector control are determined by the settings in the PXSelector attribute on the DAC field as follows:

-   The value selected in the lookup table is determined by the Search&lt;&gt; command of the PXSelector attribute.
-   The text displayed in the selector box is determined by the SubsituteKey property of the PXSelector attribute.

For more details on using the PXSelector attribute, see [Selector Control: Configuration from Backend](UIDevRef_Selector_Configuration.md).

However, if the DAC field does not have the PXSelector attribute for some reason \(for example, when a custom field state is created in an event handler of the graph\), you can use the following properties of the qp-selector config property to specify these settings manually:

-   valueField: The field whose value is selected in the lookup table
-   textField: The field whose value is displayed in the selector box after the link text

The following code shows an example from the [Filters](../UserGuide/CS_20_90_10.md) \(CS209010\) form that illustrates the usage of these properties.

```
export class FilterHeader extends PXView {
  @controlConfig({ valueField: "Name", textField: "DisplayName" })
  ViewName: PXFieldState<PXFieldOptions.CommitChanges>;
  ...
}
```

These properties also affect how the sorting is performed in the lookup table. For details, see [Sorting Rows in the Lookup Table](UIDevRef_Selector_AddCommand.md#_3b4e567d-a1c2-49df-8233-0bcf6cd0d251).

**Parent topic:**[Selector](../DeveloperGuide/UIDevRef_Selector_Mapref.md)

