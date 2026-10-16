# Migrating Custom Frontend Code: General Information

In most cases, you can migrate Acumatica ERP forms from the Classic UI to the Modern UI by using the available conversion tools. However, forms that contain custom frontend logic, such as JavaScript code or code-behind implementations in ASPX.CS files, may require additional migration work. This section explains how to identify whether such customization needs a special approach and migrate them to the Modern UI.

## Learning Objectives

-   Identify the way that the frontend logic should be migrated
-   Migrate logic by writing code on TypeScript
-   Migrate logic by modifying backend code

## Applicable Scenarios

You need to migrate the custom frontend code when a form in the Classic UI

-   Includes inline JavaScript code
-   Has logic implemented in the ASPX.CS file

## Approaches for Migrating Custom Frontend Code

If a form in the Classic UI has custom frontend code, there are three cases it can be migrated to the Modern UI:

-   **No action needed**. Some of the logic implemented using JavaScript or ASPX.CS has already been implemented out-of-the-box in the Modern UI.
-   **Use Modern UI capabilities**: Implement event handlers, write code in TypeScript classes, use configuration properties in HTML.
-   **Use predefined UI definitions**: Some of the logic that was implemented multiple times in the Classic UI forms has been united into predefined UI definitions
-   **Modify backend** code of a form.

## When No Migration Needed

You do not need to perform migration of the JavaScript or ASPX.CS code in the following cases:

-   The Modern UI includes a control that already includes a functionality that was implemented by custom code. Before migration, you need to research existing Modern UI controls and replace the standard control from the Classic UI with the new one implemented only in the Modern UI. Examples of controls that exist only in the Modern UI or have functionality that has been greatly enhanced compared to the Classic UI are shown in the following table.

    |Classic UI control with custom code|Modern UI control|Comment|
    |-----------------------------------|-----------------|-------|
    |PXTextEdit for barcode input|Barcode editor \(qp-barcode-input\)|The barcode editor includes all logic needed for barcode scanning out of the box.|
    |PXGrid|Data feed \(qp-data-feed\)|Data feed is a new more powerful representation of a grid that can display multiple entities and a menu for each row.|
    |PXFileUploader|Upload Files Button \(qp-multi-upload\)|A button that can be placed anywhere on the form to upload multiple files and an area where the files can be dropped.|

-   The Modern UI logic and layout covers the functionality implemented in JavaScript or ASPX.CS. All calculations of control sizes are not applicable in the Modern UI because it recalculates the sizes of controls depending on the Acumatica design guidelines and relative to the screen size. We do not recommend changing that logic.
-   The frontend code in the Classic UI was serving as a fix when data from backend was not updated correctly. In the Modern UI, update of data from backend has been improved so that you don't need to sync values in frontend.

## Use of Modern UI Capabilities

If the code in the ASPX.CS file contains such logic as label assignments, declaration of variables, or configuration of values, you can use implement this logic in the TypeScript code of the form in the Modern UI. The following table lists scenarios that may be implemented in ASPX.CS and how to migrate them to the Modern UI.

|ASPX.CS|TypeScript or HTML|
|-------|------------------|
|Register variables|Declare properties in screen and view classes|
|Configure box values|Define values using decorators or event handlers|
|Set label values|Use the caption property of the fieldConfig decorator.|

Complex controls such as table \([qp-grid](https://beacon.acumatica.com/h/6jFfql8L0CcXt0xE5DHmtg/classes/QpGridCustomElement.html)\) and tab \([qp-tabbar](https://beacon.acumatica.com/h/6jFfql8L0CcXt0xE5DHmtg/classes/QpTabbarCustomElement.html) and [qp-tab](https://beacon.acumatica.com/h/6jFfql8L0CcXt0xE5DHmtg/classes/QpTabCustomElement.html)\) have predefined hooks. You can define a method and specify it for the hook. For the list of predefined hooks, see the [Frontend API Reference](https://beacon.acumatica.com/h/6jFfql8L0CcXt0xE5DHmtg/classes/QpTabCustomElement.html).

The following table shows examples of how the code in the ASPX.CS file in the Classic UI has been migrated to the Modern UI with the use of predefined hooks. The examples implement the matrix mode for the table.

<table id="table_ggx_kpr_gkc"><thead><tr><th>

Classic UI

</th><th>

Modern UI

</th></tr></thead><tbody><tr><td>

ASPX:```
<px:PXGrid ID="MatrixMatrix" 
  OnColumnsGenerated="MatrixMatrix_ColumnsGenerated" 
  OnRowDataBound="MatrixMatrix_RowDataBound" 
  OnAfterSyncState="MatrixMatrix_AfterSyncState">
  <Levels>
    <px:PXGridLevel DataMember="Matrix" />
  </Levels>
  ...
</px:PXGrid>
```

ASPX.CS:```
protected void MatrixMatrix_AfterSyncState(
  object sender, EventArgs e)
{
  InventoryMatrixEntry.
    EnableCommitChangesAndMoveExtraColumnAtTheEnd(
      MatrixMatrix.Columns);
}
protected void MatrixMatrix_RowDataBound(
  object sender, PXGridRowEventArgs e)
{
  InventoryMatrixEntry.SetUOMFormat(
    e.Row, MatrixMatrix.Columns);
}
```

</td><td>

HTML:```
<qp-grid id="gridMatrix-AddMatrixItems"
  view.bind="Matrix"
  class="framed-section"
  on-filter-columns.call="MatrixOnFilterColumns(col)"
  on-initialize-columns.call="MatrixOnColumnsGenerated(columns)"
  on-get-cell-text.call="onGetMatrixCellText(args)"
  on-active-cell-changed.call="onMatrixCellChanged(args)">
</qp-grid>
```

TypeScript:```
public MatrixOnFilterColumns(column: IGridColumn) {
  return MatrixGridManager.MatrixFilterColumns(column);
}

public MatrixOnColumnsGenerated(columns: IGridColumn[]) {
  return MatrixGridManager.MatrixColumnsGenerated(columns);
}

public onGetMatrixCellText(args: QpGridEventArgs) {
  return MatrixGridManager.GetMatrixCellText(
    args.activeColumn?.field, 
    args.activeRow?.cells, 
    args.activeCell?.cellText);
}

public onMatrixCellChanged(args: any) {
  if (this.Header.ShowAvailable.value === true) {
    MatrixGridManager.SetColumnName(
      this.screenService, args.activeColumn?.field);
  }
}
```

</td></tr></tbody>
</table>

## Use of Predefined UI Definitions

In Classic UI, some UI controls or groups of controls were repeated multiple times on different forms including tags in ASPX and logic implemented in JavaScript or ASPC.CS file or using the include \(INC\) files located in the `Pages/Includes` folder. In Modern UI, such controls were implemented as a separate reusable UI definition. A reusable UI definition includes the layout defined in HTML and view classes and logic defined in TypeScript. You can insert such reusable definition by using the qp-include tag and modify it if needed. For more details, see [Reusing a UI Definition](UIDev_UIDefinitionReuse_Mapref.md).

## Implementation of Event Handlers

In most cases, the logic that was implemented in JavaScript, can be implemented using event handlers in the TypeScript code of the Modern UI form. For details on implementing event handlers, see [Handling UI Events](UIDev_HandlingEvents_Mapref.md).

The following table lists the possible scenarios and how to migrate them to the Modern UI.

<table id="table_f4m_4rt_rjc"><thead><tr><th>

ASPX.CS

</th><th>

TypeScript or HTML

</th></tr></thead><tbody><tr><td>

Change CSS of a row or a cell in a gridExample: Change CSS style of a cell depending on a value

```
protected void gridRates_RowDataBound(
  object sender, 
  PXGridRowEventArgs e)
{
  var row = PX.Data.PXResult.UnwrapMain(e.Row.DataItem);
  if (row == null)
    return;

  PX.Data.PXCache cache = ds.DataGraph.Caches[row.GetType()];
  DateTime? deliveryDate = cache.GetValue(row, "DeliveryDate") 
    as DateTime?;
  DateTime? requestDate = cache.GetValue(row, "RequestDate") 
    as DateTime?;

  if (deliveryDate == null || requestDate == null)
    return;

  PXGridCell deliveryCell = e.Row.Cells.Cast<PXGridCell>()
    .FirstOrDefault(c => string.Equals(c.DataField, 
      "DeliveryDate", StringComparison.OrdinalIgnoreCase));

  if (deliveryCell == null)
    return;

  deliveryCell.Style.CssClass = (deliveryDate <= requestDate)
    ? DeliveryDateCss.OnOrBeforeRequestDate
    : DeliveryDateCss.AfterRequestDate;
}
```

</td><td>

Use the GetRowCss or GetCellCss evenr handler```
@handleEvent(CustomEventType.GetCellCss, 
  { view: "CarrierRates", column: "DeliveryDate" })
public setAmountColor(args: CellCssHandlerArgs): string 
{
  const row = args?.selector?.row;
  const requestDate = new Date(row?.RequestDate?.value);
  const deliveryDate = new Date(row?.DeliveryDate?.value);
  
  if (deliveryDate <= requestDate) {
    return "green0";
  }
  else {
    return "error";
  }
}
```

</td></tr><tr><td>

Change one field value depending on another \(if backend logic cannot be applied\)Example: The value of two fields in a grid row are synchronized with each other.

```
<script type="text/javascript">
  function UpdateItemSiteCell(n, c) {
   var activeRow = c.cell.row;
   var sCell = activeRow.getCell("Selected");
   var qCell = activeRow.getCell("QtySelected");
   if (sCell == c.cell) {
    if (sCell.getValue() == true)
     qCell.setValue("1");
    else
     qCell.setValue("0");
   }
   if (qCell == c.cell) {
    if (qCell.getValue() == "0")
     sCell.setValue(false);
    else
     sCell.setValue(true);
   }
  }
</script>
```

</td><td>

Use the ValueChanged event handler```
getQtySelected(
  activeRow: SiteStatusLookupResults): number {
  return 1;
}

@handleEvent(CustomEventType.ValueChanged, 
  { view: "ItemInfo", field: "Selected", order: 1 })
onSelectedChange(args: ValueChangedHandlerArgs
  <PXViewCollection<SiteStatusLookupResults>>) {
  const modelRow = args.viewModel.activeRow;

  if (modelRow?.Selected?.value === undefined) {
    return;
  }

  const selected = !!(modelRow?.Selected?.value);

  if (selected) {
    if (modelRow?.QtySelected?.value === 0) {
      modelRow.QtySelected.value = 
        this.getQtySelected(modelRow);
    }
  }
  else {
    modelRow.QtySelected.value = 0;
  }

  this.ItemInfo.activeRowChanged = true;
}

@handleEvent(CustomEventType.ValueChanged, 
  { view: "ItemInfo", field: "QtySelected", order: 1 })
onQtySelectedChange(args: ValueChangedHandlerArgs
  <PXViewCollection<SiteStatusLookupResults>>) {
  const modelRow = args.viewModel.activeRow;

  if (modelRow?.QtySelected?.value === undefined) {
    return;
  }

  if (modelRow?.QtySelected?.value === 0) {
    modelRow.Selected.value = false;
  }
  else {
    modelRow.Selected.value = true;
  }

  this.ItemInfo.activeRowChanged = true;
}
```

</td></tr></tbody>
</table>

## Modification of Backend Code

In some cases, you might need to move logic that was implemented in JavaScript to backend, particularly, to the graph.

The following table lists the possible scenarios and how to migrate them to the backend.

<table id="table_rk4_jxt_rjc"><thead><tr><th>

ASPX.CS or JavaScript

</th><th>

Backend

</th></tr></thead><tbody><tr><td>

Update one field value depending on another.Example: The value of two fields in a grid row are synchronized with each other.

```
<script type="text/javascript">
     function UpdateItemSiteCell(n, c) {
   var activeRow = c.cell.row;
   var sCell = activeRow.getCell("Selected");
   var qCell = activeRow.getCell("QtySelected");
   if (sCell == c.cell) {
    if (sCell.getValue() == true)
     qCell.setValue("1");
    else
     qCell.setValue("0");
   }
   if (qCell == c.cell) {
    if (qCell.getValue() == "0")
     sCell.setValue(false);
    else
     sCell.setValue(true);
   }
  }
</script>
```

</td><td>

Implement an event handler and ```
protected virtual void OnSelectedUpdated(PXCache sender, 
  PXFieldUpdatedEventArgs e)
{
 bool? selected = (bool?)sender.GetValue(e.Row, Selected);
 decimal? qty = (decimal?)sender.GetValue(e.Row, QtySelected);
 if (selected == true)
 {
  if (qty == null || qty == 0m)
   sender.SetValue(e.Row, QtySelected, 1m);
 }
 else
  sender.SetValue(e.Row, QtySelected, 0m);
}
```

</td></tr><tr><td>

Change site map data of a form \(workspace, category, visibility\)Example: A number of methods in the code of Generic Inquiries \(SM208000\) form

```
protected void edValue_RootFieldsNeeded(
  object sender, PXCallBackEventArgs e)
{
  if (ds.DataGraph is GenericInquiryDesigner graph)
  {
    var fields = graph.GetAllFields();
    var parameters = graph.GetAllParameters();
			
    e.Result = string.Join(";", 
      parameters.Concat(fields));
  }
}
```

</td><td>

Implement logic in an interface and a service. The form graph should inherit from this interface and register the service.

</td></tr></tbody>
</table>

**Parent topic:**[Migrating JavaScript and ASPX.CS Code to the Modern UI](../DeveloperGuide/UIDev_Customization_MigrateCode_Mapref.md)

