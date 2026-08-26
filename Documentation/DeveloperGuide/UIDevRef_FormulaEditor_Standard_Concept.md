# Formula Editor: Implementation of a Standard Formula Editor {#_faf42005-72a4-4629-b7c9-39b8c0670c34 .concept}

To configure the formula editor, you should use the following attributes on the DAC field:

-   The PXFormulaEditor attribute, which indicates that the control is a formula editor.

    By using this attribute, you can configure the display name for the formula box and specify the data type of the field. The attribute does not configure the Formula Editor dialog box or fill it with formula parameters.

-   Descendants of PXFormulaEditor.OptionsProviderAttribute. These attributes provide options that are independent from the graph and are called *option providers*.

    Currently, the following descendants of PXFormulaEditor.OptionsProviderAttribute are available to configure the formula editor:

    -   The AddFunctions attribute, which adds standard functions to the formula editor.
    -   The AddOperators attribute, which adds standard operations to the formula editor.
    -   The AddStyles attribute, which adds standard styles to the formula editor.

Suppose that you need to configure a formula editor for a field, and it should be displayed as a combo box in a column in the UI. The configuration of this field in the backend and frontend consists of the following parts:

1.  The field configuration in the DAC, as shown below.

    ```
    #region Field
    public abstract class field : PX.Data.BQL.BqlString.Field { }
    [PXFormulaEditor(DisplayName = "Data Field", IsDBField = true)]
    [PXFormulaEditor.AddOperators]
    [PXFormulaEditor.AddFunctions]
    [PXStringList(new string[] { null }, new string[] { "" }, ExclusiveValues = false)]
    [PXDefault]
    public string Field { get; set; }
    #endregion
    ```

    **Tip:** You do not need to specify the PXUIField or PXDBString attribute when you are using the PXFormulaEditor attribute.

2.  The field configuration in TypeScript, as shown in the following code.

    ```
    @columnConfig({
      editorType: "qp-formula-editor",
      comboBox: true
    })
    SourceFieldOrValue: PXFieldState<PXFieldOptions.CommitChanges>;
    ```

    In this case, the configuration of the field in HTML is not necessary because the field is included in the qp-grid tag.


**Parent topic:**[Formula Editor](../DeveloperGuide/UIDevRef_FormulaEditor_Mapref.md)

