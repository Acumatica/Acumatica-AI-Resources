# Formula Editor: Configuration of a Combo Box Field for the Formula Editor {#_57ab9f94-097e-4c81-a010-400940813128 .concept}

To configure the formula editor to be displayed as a combo box, you need to do the following:

1.  In the DAC field, add the PXStringList attribute, as shown in the following code.

    ```language-csharp
    #region Field
    public abstract class field : PX.Data.BQL.BqlString.Field { }
    [PXFormulaEditor(DisplayName = "Data Field", IsDBField = true)]
    [PXFormulaEditor.AddOperators]
    [PXFormulaEditor.AddFunctions]
    **\[PXStringList\(new string\[\] \{ null \}, new string\[\] \{ "" \}, ExclusiveValues = false\)\]**
    [PXDefault]
    public string Field_Name { get; set; }
    #endregion
    ```

2.  If the values in the combo box are dynamic, populate the field with the combo box values by using the PXStringListAttribute.SetList method in the graph code—for example, in the RowSelected event handler.

    If the values are static, you can populate them in the PXStringList attribute in the DAC, as the following code shows.

    ```language-csharp
    PXStringListAttribute.SetList<DAC_Name.Field_Name>(
      sender, row,
      new string[]
      {
        OrderStatus.OnHold,
        OrderStatus.Shipping,
      },
      new string[]
      {
        "On Hold",
        "Shipping",
    });
    ```

3.  In the HTML template or TypeScript code, enable the combo box mode for the field, as shown below.

    ```language-javascript
    @columnConfig({comboBox: true})
    field_Name : PXFieldState;
    ```


**Parent topic:**[Formula Editor](../DeveloperGuide/UIDevRef_FormulaEditor_Mapref.md)

