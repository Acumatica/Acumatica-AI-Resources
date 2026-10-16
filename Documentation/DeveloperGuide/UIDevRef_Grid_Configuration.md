# Table \(Grid\): Configuration of the Table and Its Columns

In this topic, you can learn how to configure a table and its columns.

## Table Configuration

To specify the configuration parameters of a grid, you use the gridConfig decorator in TypeScript. You put the decorator on the definition of the view class for the table, as shown in the following example.

```
@gridConfig({
  preset: GridPreset.Inquiry,
  initNewRow: true, 
  quickFilterFields: ['AccountClassID', 'Type', 'PostOption', 'CuryID']
})
export class AccountRecords extends PXView {
}
```

For each table, you must specify a preset in the preset property of the gridConfig decorator. A preset is a predefined set of properties of the gridConfig decorator that define how the table is displayed. For more information about presets, see [Form Layout: Grid Presets](UIDev_DesigningLayout_GridPresets.md).

## Table Columns

To specify the configuration parameters of a table column, you use the columnConfig decorator, as shown in the following example.

```
export class SOLine extends PXView {
    @columnConfig({ allowShowHide: GridColumnShowHideMode.Server })
    ExcludedFromExport: PXFieldState;
    IsConfigurable: PXFieldState;
    @columnConfig({ hideViewLink: true })
    BranchID: PXFieldState<PXFieldOptions.CommitChanges>;
}
```

## Configuring Password Value in Matrix Mode

Suppose that you are configuring a table in the matrix mode, and in one of the columns, a value may contain a password. In case a cell contains a password, the value should be hidden with asterisk \( \* \) symbols.


This behavior is configured only in backend: When assigning the value that contains a password \(`PXStringState`\), for example, in the `FieldSelecting` event handler, call the `IsPassword(true)` method for the value.

In frontend, the table and its view are configured as usual without any specific changes such as `config.type == "2"` \(which indicates a password value\) for the qp-text-editor control.

## Configuring a Column Footer to Show Totals

To show the totals of all the lines for particular columns in each column's footer area in the UI, you use the footerText property of a table column. The following code illustrates the property's use.

```
protected async onSummaryGridDataReadyHandler(grid: QpGridCustomElement,
   args: QpGridEventArgs) {
  if (!grid.view) return;

  const defaultTotal = "00:00";
  const fieldName = 0;
  const fieldValue = 1;
  const totals = [
     ["Sun", this.Document.SunTotal?.value],
     ["Mon", this.Document.MonTotal?.value],
     ["Tue", this.Document.TueTotal?.value],
     ["Wed", this.Document.WedTotal?.value],
     ["Thu", this.Document.ThuTotal?.value],
     ["Fri", this.Document.FriTotal?.value],
     ["Sat", this.Document.SatTotal?.value],
     ["TimeSpent", this.Document.WeekTotal?.value]
  ];
  totals.forEach((total) => {
     const column = grid.getColumn(total[fieldName]);
     if (column) column.**footerText** = this.formatTime(total[fieldValue] ?? defaultTotal);
  });
}
```

In the code above, the footerText property is set to the total value for each column of the grid that is specified in the `totals` collection.

## Configuring a Selector Column that Depends on Another Column

Suppose that you need to configure a selector column, which list of values is dependent on a value selected in another column. For example, you have a table with the **Doc Type** column and the **Item** column. The **Item** column is a selector, and the different set of values should be available depending on the value in the **Doc Type** column.

To implement this behavior, you need to combine the backend and frontend logic:

1.  On the DAC field for the selector column, in the Search query, specify the name of the master field in the AsOptional parameter \(for fluent BQL\) or in the Optional&lt;&gt; parameter \(for traditional BQL\).

    The following code shows how to specify the `docType` field as a parameter for the `Item` field.

    ```
    [PXSelector(typeof(Search<APInvoice.Item, ...
      Where<APInvoice.doctype, Equal<Optional<APAdjust.doctype>>, ...>]
    public virtual string Item { get; set; }
    ```

    For more details about the BQL parameters, see [Parameters in Fluent BQL](../StudioDeveloperGuide/AC__con_Parameters_in_FBQL.md) or [Parameters in Traditional BQL Statements](../StudioDeveloperGuide/AD__con_Parameters.md) .

2.  In the view class in TypeScript, on the field definition of the selector, specify the value for the parameter in the editorConfig decorator.

    The following code shows how to specify the parameter value from the current row in the editorConfig decorator.

    ```
    @columnConfig({
      editorConfig: {
        parameters: (screen: AP302000) => ({
          "APAdjust.docType": screen.Adjustments.activeRow.docType.value
        })
      }
    })
    Item: PXFieldState<PXFieldOptions.CommitChanges>;
    ```

    For more details about the parameters property for the qp-selector control, see [ISelectorControlConfig](https://beacon.acumatica.com/h/6jFfql8L0CcXt0xE5DHmtg/interfaces/ISelectorControlConfig.html).


**Note:** You can find an extended example in the code of the [Checks and Payments](../UserGuide/AP_30_20_00.md) \(AP302000\) form for the `AdjdLineNbr` field.

**Parent topic:**[Table \(Grid\)](../DeveloperGuide/UIDevRef_Grid_Mapref.md)

