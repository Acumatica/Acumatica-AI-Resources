# Table \(Grid\): Conversion from ASPX to HTML and TypeScript {#_dc4e7a71-0751-4d74-954b-d750a8d371d9 .concept}

The following tables will help you to convert ASPX elements that are related to tables to HTML or TypeScript elements.

## ActionBar { .section}

The following table shows the correspondence between the ActionBar ASPX element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

|ASPX|HTML or TypeScript|
|----|------------------|
|ActionBar```
<px:PXGrid>
  <ActionBar>
    <CustomItems>
      <px:PXToolBarButton
        Text="Add Invoice"
        CommandSourceID="ds"
        CommandName="AddInvoice" />
    </CustomItems>
  </ActionBar>
</px:PXGrid>
```

|To specify the toolbar buttons for the grid, define actions in the view class of the grid in TypeScript, as shown in the following code.```
export class SOLine extends PXView {
    AddInvoice: PXActionState;
}
```

You can also specify particular action properties with the actionsConfig and defaultAction properties in the gridConfig decorator.|
|DefaultAction```
<px:PXGrid>
  <ActionBar 
    DefaultAction="EditDetail"/>
</px:PXGrid>
```

|Use the defaultAction property of the gridConfig decorator, as shown in the following code. The property specifies the action that is executed when a user double-clicks a record in the table.```
@gridConfig({
  defaultAction: "EditDetail"
})
export class EPApproval 
  extends PXView
```

|

## AutoCallback { .section}

The following table shows the correspondence between the AutoCallback ASPX element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

|ASPX|HTML or TypeScript|
|----|------------------|
|AutoCallback```
<px:PXGrid>
  <AutoCallBack
    Command="save"
    Target="view1">
  </AutoCallBack>
</px:PXGrid>
```

|Use the autoRepaint property in the gridConfig decorator, as shown in the following code. The property refreshes the specified data view depending on the record selected in the table.```
@gridConfig({
  autoRepaint: ["view1"]
})
export class Approvals extends PXView
```

|

## CallbackCommands { .section}

The following table shows the correspondence between the CallbackCommands ASPX element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

|ASPX|HTML or TypeScript|
|----|------------------|
|CallbackCommands```
<px:PXGrid>
  <CallbackCommands
    PasteCommand="PasteLine">
    <Save PostData="Container" />
  </CallbackCommands>
</px:PXGrid>
```

|Use the pasteCommand property in the gridConfig decorator, as shown in the following code. The property specifies the name of the command that performs the paste operation.```
@gridConfig({
  pasteCommand: "PasteLine",
})
export class GIResult extends PXView
```

|

## Mode { .section}

The following table shows the correspondence between the Mode ASPX element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

|ASPX|HTML or TypeScript|
|----|------------------|
|AllowAddNew```
<px:PXGrid>
  <Mode AllowAddNew="True"/>
</px:PXGrid>
```

|Use the allowInsert property of the gridConfig decorator. If the value is *true*, this property indicates that a user can insert new records directly in the table. The following code uses this property.```
@gridConfig({
  allowInsert: true
})
export class Approvals extends PXView
```

|
|AllowDelete```
<px:PXGrid>
  <Mode AllowDelete="True"/>
</px:PXGrid>
```

|Use the allowDelete property of the gridConfig decorator. If the value is *true*, this property indicates that a user can delete records directly in the table. The following code uses this property.```
@gridConfig({
  allowDelete: true
})
export class Approvals extends PXView
```

|
|AllowDragRows```
<px:PXGrid>
  <Mode AllowDragRows="True"/>
</px:PXGrid>
```

|Use the allowDragRows property of the gridConfig decorator. If the value is *true*, this property indicates that a user can drag rows in the table. The following code uses this property.```
@gridConfig({
  allowDragRows: true
})
export class GIResult extends PXView
```

|
|AllowRowSelect```
<px:PXGrid>
  <Mode AllowRowSelect="True"/>
</px:PXGrid>
```

|Use the allowRowSelect property of the gridConfig decorator. If the value is *true*, this property indicates that a user can select a row in the table. The following example uses this property.```
@gridConfig({
  allowRowSelect: false
})
export class Approvals extends PXView
```

|
|AllowUpdate```
<px:PXGrid>
  <Mode AllowUpdate="True"/>
</px:PXGrid>
```

|Use the allowUpdate property of the gridConfig decorator. If the value is *true*, this property indicates that a user can update records in the table. The following code uses this property.```language-javascript
@gridConfig({
  allowUpdate: true
})
export class Approvals extends PXView
```

|
|AutoInsert```
<px:PXGrid>
  <Mode AutoInsert="True"/>
</px:PXGrid>
```

|Use the autoInsert property of the gridConfig decorator. If the value is *true*, a user can save default values inserted into a row without changing it. The following code uses this property.```language-javascript
@gridConfig({
  autoInsert: true
})
export class PriceBreak extends PXView
```

|
|InitNewRow```
<px:PXGrid>
  <Mode InitNewRow="True"/>
</px:PXGrid>
```

|Use the initNewRow property of the gridConfig decorator. If the value is *true*, this property indicates that the webpage should perform a server callback upon the insertion of a new row.Normally, when a user clicks the **Add Row** button on a table toolbar, the new empty row is created only on the webpage, and the data is not sent to the application server. This means that the C\# code with all event handlers is not executed. For the data to be sent to the server, you need to specify `initNewRow: true`. Also, by specifying this property, you can avoid an extra row being created automatically when a user clicks the **Save** button.

The following code uses this property.

```
@gridConfig({
    initNewRow: true
})
export class AccountRecords
  extends PXView
```

|

## PXGrid { .section}

The following table shows the correspondence between the PXGrid ASPX control and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

|ASPX|HTML or TypeScript|
|----|------------------|
|PXGrid```
<px:PXGrid
  ID="grid"
  runat="server"
  Height="350px"
  Width="100%"
  AdjustPageSize="Auto"
  SkinID="Primary"
  AllowSearch="True"
  FastFilterFields=
    "AccountCD,Description"
  SyncPosition="True">
  <Levels>
    <px:PXGridLevel
      DataMember="AccountRecords">
    </px:PXGridLevel>
  </Levels>
  <Layout
    FormViewHeight="250px" />
  <AutoSize
    Container="Window"
    Enabled="True"
    MinHeight="200" />
  <Mode
    AllowFormEdit="True"
    AllowUpload="True" />
</px:PXGrid>
```

|Is replaced by qp-grid in HTML. To define a table, you need to instantiate a view class with the gridConfig decorator in TypeScript and add a qp-grid tag in HTML, as shown in the following code fragments.```
@graphInfo({ ... })
export class GL103001 
  extends PXScreen {
AccountRecords = 
  createCollection(GLConsolAccount);
}

@gridConfig({
  preset: GridPreset.Inquiry,
  initNewRow: true
})
export class GLConsolAccount
  extends PXView
```

```
<qp-grid
  id="gridAccountRecords"
  view.bind="AccountRecords">
</qp-grid>
```

|
|AdjustPageSize```
<px:PXGrid AdjustPageSize="Auto">
</px:PXGrid>
```

|Use the adjustPageSize property in the gridConfig decorator, as shown in the following example. If the value is *true*, this property makes the table show only one page of rows, without the vertical scrollbar. The following code uses this property.```
@gridConfig({
    adjustPageSize: true
})
export class ActivityTypes
  extends PXView
```

|
|AllowFilter```
<px:PXGrid AllowFilter="True">
</px:PXGrid>
```

|Use the allowStoredFilters in the gridConfig decorator, as shown in the following code. If the value is *true*, the system adds the Search box for the table. The following code uses this property.```
@gridConfig({
  allowStoredFilters: false
})
export class AppointmentData 
  extends PXView
```

|
|AllowPaging```
<px:PXGrid AllowPaging="True">
</px:PXGrid>
```

|Use the pagerMode property in the gridConfig decorator, as shown in the following code. The property defines whether pages should be displayed for the table. The property can have one of the following values, which are defined by the GridPagerMode enum:-   InfiniteScroll: No pages for the table are displayed. A user can only scroll the records of the table.
-   NextPrevFirstLast: The *Next*, *Previous*, *First*, and *Last* links are displayed for the pages of the table. A user can use these links to switch between the pages of the table.
-   Numeric: The page numbers are displayed as links that a user can click to switch between the pages of the table.

The following code uses this property.```
@gridConfig({
  pagerMode:
    GridPagerMode.NextPrevFirstLast
})
export class FASheetHistory
  extends PXView
```

|
|AutoAdjustColumns```
<px:PXGrid 
  AutoAdjustColumns="True">
</px:PXGrid>
```

|Use the autoAdjustColumns property in the gridConfig decorator. If the value is *true*, the property makes the system adjust the column width automatically. The following code uses this property.```
@gridConfig({
  autoAdjustColumns: true
})
export class ARDiscount 
  extends PXView
```

|
|AutoGenerateColumns```
<px:PXGrid
  AutoGenerateColumns="AppendDynamic">
</px:PXGrid>
```

|Use the generateColumns property of the gridConfig decorator. The property defines the mode of column generation for the table. You can use one of the following modes, which are defined in the GridColumnGeneration enum:

-   *None*
-   *Append*
-   *Recreate*
-   *AppendDynamic*
-   *Selector*

The following example assigns the *AppendDynamic* mode for the table.```
@gridConfig({
  generateColumns:
    GridColumnGeneration.AppendDynamic
})
export class Parameters extends PXView
```

|
|AutoSaveLayout```
<px:PXGrid
  AutoSaveLayout="True">
</px:PXGrid>
```

|Use the autoSaveLayout property of the gridConfig decorator. If the value is *true*, the property makes the system save the layout of the table after each column is resized. The following code uses this property.```
@gridConfig({
  autoSaveLayout: true
})
export class Parameters 
  extends PXView
```

|
|BatchUpdate```
<px:PXGrid
  BatchUpdate="True">
</px:PXGrid>
```

|Use the batchUpdate property of the gridConfig decorator, as shown in the following code. If a table contains editable fields that depend on each other, the BatchUpdate property should be *false*.```
@gridConfig({
  batchUpdate: true
})
export class APInvoice 
  extends PXView
```

|
|BlankFilterHeader```
<px:PXGrid
  BlankFilterHeader="All Activities">
</px:PXGrid>
```

|Use the blankFilterHeader property of the gridConfig decorator, as shown in the following code. You can use the blankFilterHeader property to define a custom title for the **All Records** filter.```
@localizable
class Messages {
  static ActivitiesFilterHeader = "All Activities";
}

@gridConfig({
  preset: GridPreset.Inquiry,
  showFilterBar: GridFilterBarVisibility.OnDemand,
  blankFilterHeader: Messages.ActivitiesFilterHeader
})
export class Activities extends PXView
```

|
|Caption```
<px:PXGrid
  Caption="Schedules">
</px:PXGrid>
```

|Use the caption attribute of the qp-grid control in HTML. The attribute defines a title for the table. When the table is hidden, the title specified in the `caption` attribute is hidden too.**Note:** Do not use the qp-caption or qp-label tags to specify a table title.

The following code specifies a title for the table.```
<qp-grid 
  id="ordersGrid"
  view.bind=
    "BlanketOrderChildrenDisplayList"
  caption="Child Orders">
</qp-grid>
```

|
|EditPageUrl```
<px:PXGrid
  EditPageUrl="~/Pages/AP/AP203500.aspx">
</px:PXGrid>
```

|Use the gridDataUrl property in the gridConfig decorator. You can use this property to change the standard API for the retrieval of the table data.|
|FastFilterFields```
<px:PXGrid
  FastFilterFields=
    "ClassID,Type,Description">
</px:PXGrid>
```

|Use allowFastFilter in the columnConfig decorator for the needed columns or fastFilterByAllFields in the gridConfig decorator. Take into account the following considerations:

 -   By default, the search is performed in all string columns.
-   To exclude particular columns from the search, `fastFilterByAllFields` is not needed; you need to use `allowFastFilter: false`.
-   To have only particular columns searched, you can set `fastFilterByAllFields: false` and `allowFastFilter: true` for only these columns.

|
|FastFilterId```
<px:PXGrid
  FastFilterID="edInventory">
</px:PXGrid>
```

|Use the qp-fast-filter attribute of the field tag, as described in [Table \(Grid\): Configuration of the Search in the Table](UIDevRef_Grid_FilterConfiguration.md).|
|FilesIndicator```
<px:PXGrid
  FilesIndicator="True">
</px:PXGrid>
```

|Use the showNoteFiles property in the gridConfig decorator. The following code uses this property.```
@gridConfig({
  showNoteFiles: 
    GridNoteFilesShowMode.Suppress
})
export class RecipientProjects
  extends PXView
```

|
|ID```
<px:PXGrid ID="gridUsers">
</px:PXGrid>
```

|Use the id attribute of the qp-grid control in HTML. The attribute specifies the ID of the control, as shown in the following code.```
<qp-grid id="gridUsers">
</qp-grid>
```

|
|KeepPosition```
<px:PXGrid KeepPosition="True">
</px:PXGrid>
```

|Use the keepPosition property in the gridConfig decorator. This property indicates whether the system keeps the keys of the record selected in the grid. The following code uses this property.```
@gridConfig({
  keepPosition: true
})
export class TaxReportLine
  extends PXView
```

|
|MarkRequired```
<px:PXGrid MarkRequired="Dynamic">
</px:PXGrid>
```

|Use the markRequired property in the gridConfig decorator. This property indicates whether the columns of the table can be marked as required. The following code uses this property.```
@gridConfig({
  markRequired: true
})
export class Payments
  extends PXView
```

|
|NoteIndicator```
<px:PXGrid
  NoteIndicator="True">
</px:PXGrid>
```

|Use the showNoteFiles property in the gridConfig decorator. The following code uses this property.```
@gridConfig({
  showNoteFiles: 
    GridNoteFilesShowMode.Suppress
})
export class RecipientProjects
  extends PXView
```

|
|PageSize```
<px:PXGrid PageSize="12">
</px:PXGrid>
```

|Use the pageSize property in the gridConfig decorator. This property specifies the maximum number of records on a page if the table is displayed on multiple pages. The following code uses this property.```
@gridConfig({
  PageSize: 12
})
export class RecipientProjects
  extends PXView
```

|
|PreserveSortsAndFilters```
<px:PXGrid 
  PreserveSortsAndFilters="True">
</px:PXGrid>
```

|Use the preserveSortsAndFilters property in the gridConfig decorator. If the value is *true*, this property specifies that the current filter and sorted columns should be stored in the session. By default, the value is *false*.The following code uses this property.

```
@gridConfig({
  preserveSortsAndFilters: true
})
export class BPEventHistory 
  extends PXView
```

|
|RepaintColumns```
<px:PXGrid 
  RepaintColumns="True">
</px:PXGrid>
```

|Use the repaintColumns property in the gridConfig decorator. If the value is *true*, the system repaints column on every request to the server. By default, the value is *false*.The following code uses this property.

```
@gridConfig({
  repaintColumns: true
})
export class CashFlowForecast 
  extends PXView
```

|
|SkinID```
<px:PXGrid 
  SkinID="Details">
</px:PXGrid>
```

|Use the preset property of the gridConfig decorator. The property specifies a set of settings that define the appearance of the table. The following values, which are defined by the GridPreset enum, are available:-   `Primary`
-   `Inquiry`
-   `Processing`
-   `ReadOnly`
-   `Details`
-   `Attributes`
-   `ShortList`
-   `Empty`

For more information about presets, see [Form Layout: Grid Presets](UIDev_DesigningLayout_GridPresets.md).

The following code uses this property.

```
@gridConfig({
    preset: GridPreset.Inquiry
})
export class AccountRecords 
  extends PXView
```

|
|StatusField```
<px:PXGrid 
  StatusField="Availability">
</px:PXGrid>
```

|Use the statusField property of the gridConfig decorator. The property specifies the name of the column that is displayed in the footer of the table. The following code uses this property.```
@gridConfig({
  statusField: "Availability"
})
export class SOLine extends PXView
```

|
|SyncPosition```
<px:PXGrid
  SyncPosition="True">
</px:PXGrid>
```

|Use the syncPosition property of the gridConfig decorator. If the value is *true*, the property specifies that the Current record must be synchronized with the record selected in the table.

**Tip:**

If a form contains a table and the form toolbar includes an action to process a single record that is selected in the table, the action delegate method must have a reference to the selected record in the cache.

To use the Current property of a PXCache object to access the record selected in a table, the Current property must be synchronized with the record selected in the grid. To force the system to provide this synchronization, you have to set the syncPosition property of the gridConfig decorator to *true*.

 The following code uses this property.```
@gridConfig({
    syncPosition: true
})
export class FABookBalance
  extends PXView
```

|
|TabIndex```
<px:PXGrid
  TabIndex="-1">
</px:PXGrid>
```

|Use the tabIndex property of the gridConfig decorator. The property specifies the index of the table during the TAB navigation. The following code uses this property.```
@gridConfig({
  tabIndex: -1
})
export class SOLine extends PXView
```

|

|ASPX|HTML or TypeScript|
|----|------------------|
|PXGridColumn```
<px:PXGrid>
  <Levels>
    <px:PXGridLevel>
      <Columns>
        <px:PXGridColumn 
          AllowNull="False"
          DataField="Selected"
          TextAlign="Center"
          Type="CheckBox" Width="40px"
          AutoCallBack="true"
          AllowCheckAll="true"
          CommitChanges="true" 
        />
        <px:PXGridColumn
          DataField="InventoryCD"
          DisplayFormat="&gt;AAAAAAAAAA" 
        />
        <px:PXGridColumn
          DataField="ProductWorkgroupID" 
        />
      </Columns>
    </px:PXGridLevel>
  </Levels>
</px:PXGrid>
```

|Define columns in the view class of the table in TypeScript, as shown in the following example.```
export class SOLine extends PXView {
  Availability:
    PXFieldState<PXFieldOptions.Hidden>;
  @columnConfig({
    allowShowHide:
      GridColumnShowHideMode.Server
  })
  ExcludedFromExport: PXFieldState;
}
```

|
|AllowCheckAll```
<px:PXGrid>
  <Levels>
    <px:PXGridLevel>
      <Columns>
        <px:PXGridColumn
          DataField="Selected"
          AllowCheckAll="true" />
      </Columns>
    </px:PXGridLevel>
  </Levels>
</px:PXGrid>
```

|Use the allowCheckAll property in the columnConfig decorator, as shown in the code below. If the value is *true*, the system adds a check box in the header of the column, which gives the user the ability to select all check boxes in the column for the page.```
@columnConfig({
  allowCheckAll: true
})
Selected: PXFieldState;
```

|
|AllowFilter```
<px:PXGrid>
  <Levels>
    <px:PXGridLevel>
      <Columns>
        <px:PXGridColumn
          AllowFilter="true" />
      </Columns>
    </px:PXGridLevel>
  </Levels>
</px:PXGrid>
```

|Use the allowFilter property in the columnConfig decorator, as the following code shows. If the value is *true*, the system adds column filtering in the header of the column.```
@columnConfig({
  allowFilter: true
})
Type: PXFieldState;
```

|
|AllowFocus```
<px:PXGrid>
  <Levels>
    <px:PXGridLevel>
      <Columns>
        <px:PXGridColumn
          AllowFocus="true" />
      </Columns>
    </px:PXGridLevel>
  </Levels>
</px:PXGrid>
```

|Use the allowFocus property in the columnConfig decorator, as the following code shows. If the value is *true*, the system places the cursor in the column when a new record is added to the table.```
@columnConfig({
  allowFocus: true
})
Type: PXFieldState;
```

|
|AllowNull```
<px:PXGrid>
  <Levels>
    <px:PXGridLevel>
      <Columns>
        <px:PXGridColumn
          AllowNull="false" />
      </Columns>
    </px:PXGridLevel>
  </Levels>
</px:PXGrid>
```

|Use the allowNull property in the gridConfig decorator, as shown below. If the value is *false*, the system prevents the cell value from being cleared.```
@columnConfig({ 
  allowNull: false 
})
PaymentLeadTime: PXFieldState;
```

|
|AllowShowHide```
<px:PXGrid>
  <Levels>
    <px:PXGridLevel>
      <Columns>
        <px:PXGridColumn
          AllowShowHide="false" />
      </Columns>
    </px:PXGridLevel>
  </Levels>
</px:PXGrid>
```

|Use the allowShowHide property in the columnConfig decorator. The property manages a user's ability to show or hide the column in the table. \(The user can show or hide the column in the **Column Configuration** dialog box.\)The property can have one of the following values, which are defined by the GridColumnShowHideMode enum:

-   *False*: The user cannot show or hide the column. The column appears in the table by default.
-   *True*: The user can show or hide the column. Whether the column appears in the table by default depends on the field state.
-   *Server*: The possibility to show or hide the column is managed on the server. The user can show or hide the column if the server has set `visible: true`.
-   *Client*: The user can show or hide the column. The column appears in the table by default. The server does not manage visibility of the column.

The following code shows an example of the use of this property.

```
@columnConfig({ 
  allowShowHide: 
    GridColumnShowHideMode.False 
})
OriginalContactID: PXFieldState;
```

|
|AllowSort```
<px:PXGrid>
  <Levels>
    <px:PXGridLevel>
      <Columns>
        <px:PXGridColumn
          AllowSort="false" />
      </Columns>
    </px:PXGridLevel>
  </Levels>
</px:PXGrid>
```

|Use the AllowSort property of the columnConfig decorator, as shown in the following code. If the value is *false*, the property turns off the capability for a user to sort the values in the column. ```
@columnConfig({ 
  allowSort: false
})
ContactID: PXFieldState;
```

|
|AllowUpdate```
<px:PXGrid>
  <Levels>
    <px:PXGridLevel>
      <Columns>
        <px:PXGridColumn
          AllowUpdate="true" />
      </Columns>
    </px:PXGridLevel>
  </Levels>
</px:PXGrid>
```

|Use the allowUpdate property of the columnConfig decorator. If the value is *true*, the property indicates that a user can update the value in the column. The following example uses this property.```
@columnConfig({ 
  allowUpdate: true
})
ContactID: PXFieldState;
```

|
|CommitChanges```
<px:PXGrid>
  <Levels>
    <px:PXGridLevel>
      <Columns>
        <px:PXGridColumn
          DataField="Selected"
          CommitChanges="true" />
      </Columns>
    </px:PXGridLevel>
  </Levels>
</px:PXGrid>
```

|Use PXFieldOptions.CommitChanges in TypeScript, as shown in the following code. The option indicates that the webpage commits the changes in the column to the server.```
export class Details extends PXView {
  Selected:
    PXFieldState<
      PXFieldOptions.CommitChanges>;
}
```

|
|DataField```
<px:PXGrid>
  <Levels>
    <px:PXGridLevel>
      <Columns>
        <px:PXGridColumn
          DataField="ProductID" />
      </Columns>
    </px:PXGridLevel>
  </Levels>
</px:PXGrid>
```

|Define data field for the column in the view class of the table in TypeScript, as shown in the following code.```
export class Details extends PXView {
  ProductID: PXFieldState;
}
```

|
|Decimals```
<px:PXGrid>
  <Levels>
    <px:PXGridLevel>
      <Columns>
        <px:PXGridColumn
          DataField="RatioPerYear"
          DataType="Decimal"
          Decimals="4" />
      </Columns>
    </px:PXGridLevel>
  </Levels>
</px:PXGrid>
```

|Use the decimals property of the columnConfig decorator. The property defines the number of decimal values to be displayed in the column cells. The following example uses this property.```
@columnConfig({ decimals: 4})
RatioPerYear: PXFieldState;
```

|
|DisplayFormat```
<px:PXGridLevel 
  DataKeyNames="ApplicationID,TokenID" 
  DataMember="Tokens">
  <Columns>
    <px:PXGridColumn DataField="UtcExpiredOn" 
      DisplayFormat="g"/>
    <px:PXGridColumn DataField="Bearer" />
  </Columns>
</px:PXGridLevel>
```

|Use the format property of the columnConfig decorator. The property specifies the custom display format for date and numeric columns. For example, you can set `format="g"` if you want to see date and time in a date column.```
@columnConfig({format: "g"})
UtcExpiredOn: PXFieldState;
```

For the list of possible values, see [Standard numeric format strings](https://learn.microsoft.com/en-us/dotnet/standard/base-types/standard-numeric-format-strings) and [Standard date and time format strings](https://learn.microsoft.com/en-us/dotnet/standard/base-types/standard-date-and-time-format-strings) in Microsoft documentation.

|
|DisplayMode```
<px:PXGrid>
  <Levels>
    <px:PXGridLevel>
      <Columns>
        <px:PXGridColumn
          DisplayMode="Hint" />
      </Columns>
    </px:PXGridLevel>
  </Levels>
</px:PXGrid>
```

|Use the displayMode property in the columnConfig decorator, as shown in the code below. The property specifies the display mode for each cell of the column. The display mode, which is defined by the GridColumnDisplayMode enum, can be one of the following:-   *Value* \(default\): The column cell contains the value of the field.
-   *Text*: If there is a description defined for the field, the column cell contains the description of the field.
-   *Both*: If there is a description defined for the field, the column cell contains both the value of the field and the description of the field.

```
@columnConfig({
  displayMode: 
    GridColumnDisplayMode.Both
})
EMailAccountID: PXFieldState;
```

|
|ForceExport```
<px:PXGrid>
  <Levels>
    <px:PXGridLevel>
      <Columns>
        <px:PXGridColumn
          ForceExport="True" />
      </Columns>
    </px:PXGridLevel>
  </Levels>
</px:PXGrid>
```

|Use the suppressExport property of the columnConfig decorator. If the value is *true*, the property specifies that the column is not included in the results of the export of the table. The following code uses this property.```
@columnConfig({
  suppressExport: false
})
LineNbr: PXFieldState;
```

|
|Key```
<px:PXGrid>
  <Levels>
    <px:PXGridLevel>
      <Columns>
        <px:PXGridColumn 
          Key="valueMapping" />
      </Columns>
    </px:PXGridLevel>
  </Levels>
</px:PXGrid>
```

|Use the key property of the columnConfig decorator. The property specifies the key for unbound columns, such as Notes and Files. The following code uses this property.```
@columnConfig({
  key: "valueMapping"
})
Value: PXFieldState;
```

|
|LinkCommand```
<px:PXGrid>
  <Levels>
    <px:PXGridLevel>
      <Columns>
        <px:PXGridColumn 
          LinkCommand=
            "ViewDetails" />
      </Columns>
    </px:PXGridLevel>
  </Levels>
</px:PXGrid>
```

|Use the linkCommand decorator for the column field in TypeScript, as shown in the following example. The decorator specifies the action that is executed when a user clicks the link in the column cell.```
@linkCommand("ViewDetails")
AttributeID:
  PXFieldState;
```

|
|MaxLength```
<px:PXGrid>
  <Levels>
    <px:PXGridLevel>
      <Columns>
        <px:PXGridColumn 
          MaxLength="30" />
      </Columns>
    </px:PXGridLevel>
  </Levels>
</px:PXGrid>
```

|Use the maxLength property in the columnConfig decorator. The property specifies the maximum length of the string in the column. The following code uses this property.```
@columnConfig({
  maxLength: 30
})
Value: PXFieldState;
```

|
|NullText```
<px:PXGrid>
  <Levels>
    <px:PXGridLevel>
      <Columns>
        <px:PXGridColumn 
          NullText="0.0" />
      </Columns>
    </px:PXGridLevel>
  </Levels>
</px:PXGrid>
```

|Use the nullText property in the columnConfig decorator. The property specifies the value that is displayed if the column value is *NULL*. The following code uses this property.```
@columnConfig({
  nullText: "0.0"
})
Amount: PXFieldState;
```

|
|RenderEditorText```
<px:PXGrid>
  <Levels>
    <px:PXGridLevel>
      <Columns>
        <px:PXGridColumn 
          RenderEditorText="True" />
      </Columns>
    </px:PXGridLevel>
  </Levels>
</px:PXGrid>
```

|Use the renderEditorText property in the columnConfig decorator. The property indicates whether the column value is rendered in the way this value is displayed in inline-edit mode. The following code uses this property.```
@columnConfig({ 
  renderEditorText: true,
  editorType: "qp-time-span" })
Mon: PXFieldState;
```

|
|TextAlign```
<px:PXGrid>
  <Levels>
    <px:PXGridLevel>
      <Columns>
        <px:PXGridColumn 
          TextAlign="Right" />
      </Columns>
    </px:PXGridLevel>
  </Levels>
</px:PXGrid>
```

|Use the textAlign property in the columnConfig decorator. The property specifies the alignment of the values in the column. You can use one of the following values, which are defined in the TextAlign enum:

-   *NotSet*
-   *Left*
-   *Center*
-   *Right*
-   *Justify*

 The following code uses this property.```
@columnConfig({
  textAlign: TextAlign.Center
})
Included: PXFieldState;
```

|
|TextField```
<px:PXGrid>
  <Levels>
    <px:PXGridLevel>
      <Columns>
        <px:PXGridColumn 
          TextField="LocalizedDescr" />
      </Columns>
    </px:PXGridLevel>
  </Levels>
</px:PXGrid>
```

|Use the textField property in the columnConfig decorator. The property specifies explicitly which field should be displayed in the column selector control. The following code uses this property.```
@columnConfig({
  textField: "LocalizedDescr"
})
Descr: PXFieldState;
```

|
|TimeMode```
<px:PXGrid>
  <Levels>
    <px:PXGridLevel>
      <Columns>
        <px:PXGridColumn 
          TimeMode="True" />
      </Columns>
    </px:PXGridLevel>
  </Levels>
</px:PXGrid>
```

|Use the timeMode property in the columnConfig decorator. If the value is *true*, the property turns on the time mode for the date and time column. The following code uses this property.```
@columnConfig({
  timeMode: true
})
Time: PXFieldState;
```

|
|Type```
<px:PXGrid>
  <Levels>
    <px:PXGridLevel>
      <Columns>
        <px:PXGridColumn
          Type="HyperLink" />
      </Columns>
    </px:PXGridLevel>
  </Levels>
</px:PXGrid>
```

|Use the type property in the columnConfig decorator. The property specifies the type of the column content. You can use one of the following values, which are defined by the GridColumnType enum:

 -   *NotSet*
-   *Icon*
-   *HyperLink*
-   *CheckBox*

 The following code uses this property.

 ```
@columnConfig({
  type: GridColumnType.HyperLink
})
ScreenId: PXFieldState;
```

|
|Visible```
<px:PXGrid>
  <Levels>
    <px:PXGridLevel>
      <Columns>
        <px:PXGridColumn
          Visible="False" />
      </Columns>
    </px:PXGridLevel>
  </Levels>
</px:PXGrid>
```

|Use PXFieldOptions.Hidden in TypeScript, as shown in the following code.

 ```
export class Details 
  extends PXView {
  Selected:
    PXFieldState<
      PXFieldOptions.Hidden>;
}
```

 In particular cases, you can use the visible property of the columnConfig decorator, as shown in the following code.

 ```
@columnConfig({
  visible: false
})
OwnerID: PXFieldState;
```

 Columns with `allowShowHide: GridColumnShowHideMode.False` or `allowShowHide: GridColumnShowHideMode.Client` appear in the table by default.

|
|Width```
<px:PXGrid>
  <Levels>
    <px:PXGridLevel>
      <Columns>
        <px:PXGridColumn
          Width="200px" />
      </Columns>
    </px:PXGridLevel>
  </Levels>
</px:PXGrid>
```

|Use the width property in the columnConfig decorator. The property specifies the width of the column. The width is defined in pixels. The following code uses this property.```
@columnConfig({ 
  width: 200 
}) 
ExpireDate: PXFieldState;
```

|

## PXGridColumn { .section}

The following table shows the correspondence between the PXGridColumn ASPX element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

|ASPX|HTML or TypeScript|
|----|------------------|
|PXGridColumn```
<px:PXGrid>
  <Levels>
    <px:PXGridLevel>
      <Columns>
        <px:PXGridColumn 
          DataField="UtcExpiredOn" 
          DisplayFormat="g"/>
        <px:PXGridColumn 
          DataField="Bearer" />
      </Columns>
    </px:PXGridLevel>
  </Levels>
</px:PXGrid>
```

|Define fields for the columns in TypeScript in the view class that corresponds to the table \(grid\) and use the columnConfig decorator to specify column properties, as shown in the following code fragment. Generally, you do not need to add any tags for columns in HTML.```
@gridConfig({
  preset: GridPreset.ReadOnly
})
export class SignedInOauth 
  extends PXView  {
	@columnConfig({format: "g"})
	UtcExpiredOn : PXFieldState;

	Bearer : PXFieldState;
}
```

|
|DataField```
<px:PXGrid>
  <Levels>
    <px:PXGridLevel>
      <Columns>
        <px:PXGridColumn 
          DataField="Bearer" />
      </Columns>
    </px:PXGridLevel>
  </Levels>
</px:PXGrid>
```

|Define fields for the columns in TypeScript in the view class that corresponds to the table \(grid\), as shown in the following code fragment. ```
export class SignedInOauth 
  extends PXView  {
	Bearer : PXFieldState;
}
```

|
|DisplayFormat```
<px:PXGrid>
  <Levels>
    <px:PXGridLevel>
      <Columns>
        <px:PXGridColumn 
          DataField="UtcExpiredOn" 
          DisplayFormat="g"/>
      </Columns>
    </px:PXGridLevel>
  </Levels>
</px:PXGrid>
```

|Use the format property of the columnConfig decorator, as shown in the following example.```
@columnConfig({format: "g"})
UtcExpiredOn : PXFieldState;
```

|

## PXGridLevel { .section}

The following table shows the correspondence between the PXGridLevel ASPX element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

|ASPX|HTML or TypeScript|
|----|------------------|
|DataMember```
<px:PXGrid>
  <Levels>
    <px:PXGridLevel
      DataMember="AccountRecords">
    </px:PXGridLevel>
  </Levels>
</px:PXGrid>
```

|1.  Define a view class in TypeScript, as shown in the following code.

    ```
export class RS501600 
  extends PXScreen {
    Records = 
      createCollection(AccountRecords);
}

@gridConfig({...})
export class AccountRecords
  extends PXView
    ```

2.  Bind the qp-grid control to the instance of the view class by using the view.bind property as follows.

    ```
<qp-grid view.bind="Records">
</qp-grid>
    ```


|
|ImportDataMember```
<px:PXGrid>
  <Levels>
    <px:PXGridLevel
      ImportDataMember="ImportTemplate">
    </px:PXGridLevel>
  </Levels>
</px:PXGrid>
```

|Use the importView property of the gridConfig decorator.|

## PXGridWithPreview { .section}

The following table shows the correspondence between the PXGridWithPreview ASPX control and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

|ASPX|HTML or TypeScript|
|----|------------------|
|PXGridWithPreview```
<pxa:PXGridWithPreview
  ID="gridActivities" runat="server" 
  DataSourceID="ds" Width="100%" 
  AllowSearch="True" 
  DataMember="Activities" 
  AllowPaging="true" 
  NoteField="NoteText"
  FilesField="NoteFiles" 
  BorderWidth="0px" 
  GridSkinID="Inquire"  
  PreviewPanelSkinID="Preview" 
  SyncPosition="True"
  BlankFilterHeader="All Activities" 
  MatrixMode="true" 
  PrimaryViewControlID="form">
</pxa:PXGridWithPreview>
```

|To define a grid with a preview text editor below, use the qp-splitter tag, as shown in the following example.

 ```
<qp-splitter split="height">
  <split-pane>
    <qp-grid
      id="gridActivities"
      view.bind="Activities"
      wg-container="">
    </qp-grid>
  </split-pane>
  <split-pane>
    <qp-rich-text-editor
      id="edActivityBody"
      state.bind="Activities.Body"
      wg-field
      value.bind=
        "Activities.activeRow.Body.value"
      config.bind="{readOnly: true}">
    </qp-rich-text-editor>
  </split-pane>
</qp-splitter>
```

|

## Obsolete ASPX Controls and Properties { .section}

The following table lists the obsolete ASPX elements that are related to tables. You do not need to replace these ASPX elements with any HTML or TypeScript elements.

|ASPX Control|Properties|
|------------|----------|
|ClientEvents```
<px:PXGrid>
  <ClientEvents 
    CellEditorCreated="gridEditor" 
    BeforeCellEdit="gridBeforeEdit" />
</px:PXGrid>
```

|All properties|
|OnChangeCommand```
<px:PXGrid>
  <OnChangeCommand
    Target="tree"
    Command="Refresh" />
</px:PXGrid>
```

|All properties|
|Mode ```
<px:PXGrid>
  <Mode 
    AllowFormEdit="True" 
    AllowUpload="True" />
</px:PXGrid>
```

|-   AllowFormEdit
-   AllowUpload

|
|PXGrid```
<px:PXGrid 
  AllowSearch="True"
  BorderWidth="0px" 
  CaptionVisible="False"
  DataSourceID="ds" 
  ExportNotes="False"
  Height="360px"
  KeepPosition="True"
  PreservePageIndex="True"
  RepaintColumns="True"
  RestrictFields="True"
  runat="server"
  Style="height: 192px;"
  Width="100%"
>
</px:PXGrid>
```

|-   AllowSearch
-   BorderWidth
-   CaptionVisible
-   DataSourceID
-   ExportNotes
-   Height
-   PreservePageIndex
-   RepaintColumns
-   RestrictFields
-   runat
-   Style
-   Width

|

**Parent topic:**[Table \(Grid\)](../DeveloperGuide/UIDevRef_Grid_Mapref.md)

