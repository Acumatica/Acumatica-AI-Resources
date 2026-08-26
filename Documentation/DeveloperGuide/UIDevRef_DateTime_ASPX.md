# Date and Time Control: Conversion from ASPX to HTML and TypeScript {#_cbbf8235-3f2e-4049-8875-551be8dee32c .concept}

The following tables will help you to convert ASPX elements that are related to date and time controls to HTML or TypeScript elements.

## PXDateTimeEdit { .section}

The following table shows the correspondence between the PXDateTimeEdit ASPX control and HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

|ASPX|HTML or TypeScript|
|----|------------------|
|PXDateTimeEdit```
<px:PXDateTimeEdit
  CommitChanges="True"
  ID="edExportedDate_Date"
  runat="server"
  DataField="ExportDate_Date" />
<px:PXDateTimeEdit
  CommitChanges="True"
  ID="edExportedDate_Time"
  runat="server"
  DataField="ExportDate_Time"
  TimeMode="true"
  SuppressLabel="True"
  Width="84" />
```

|To display two separate boxes for date and time, in the TypeScript code of the form, define two fields—a field for the date and a field for the time—as shown in the following code.

 ```
export class EmailSyncFilter 
  extends PXView {
  ExportDate_Date:
    PXFieldState<
      PXFieldOptions.CommitChanges>;
  ExportDate_Time:
    PXFieldState<
      PXFieldOptions.CommitChanges>;
}
```

 In HTML code of the form, use the `field` tag for the date field and a nested `qp-field` tag for the time field, as the following code shows.

```
<field name="ExportDate_Date">
  <qp-field
    id="fieldExportTime"
    class="col-3 no-label"
    control-state.bind=
      "EmailSyncFilter.ExportDate_Time"
    config-time-mode.bind="true">
  </qp-field>
</field>
```

|
|CommitChanges```
<px:PXDateTimeEdit
  CommitChanges="True"
  DataField="ExportDate_Date" />
```

|Use the CommitChanges option of PXFieldState in TypeScript, as the following code shows. With this option, the control commits changes to the server each time a user has changed the value in the box and focus is no longer on the box.```
export class EmailSyncFilter 
  extends PXView {
  ExportDate_Date:
    PXFieldState<
      PXFieldOptions.CommitChanges>;
}
```

|
|DataField```
<px:PXDateTimeEdit
  DataField="ExportDate_Date"/>
<px:PXDateTimeEdit
  DataField="ExportDate_Time"/>
```

|To specify the data fields to be used for the date and time control, use the `name` attribute of the field tag for the date field, and `control-state.bind` of the qp-field tag for the time field, as the following code shows.```
<field name="ExportDate_Date">
  <qp-field
    control-state.bind=
      "EmailSyncFilter.ExportDate_Time"
  </qp-field>
</field>
```

|
|ID```
<px:PXDateTimeEdit
  ID="edExportedDate_Date"
/>
<px:PXDateTimeEdit
  ID="edExportedDate_Time"
/>
```

|Use the id attribute of the nested qp-field tag for the time field, as the following code shows. The id attribute is not used for field tags.

```
<field name="ExportDate_Date">
  <qp-field
    id="fieldExportTime"
    control-state.bind=
      "EmailSyncFilter.ExportDate_Time"
  </qp-field>
</field>
```

|
|SuppressLabel```
<px:PXDateTimeEdit
  DataField="ExportDate_Time"
  SuppressLabel="True" />
```

|To hide the label for a field, use class="no-label" for the field, as the following code shows. For details about the class, see [Form Layout: CSS Classes](UIDev_DesigningLayout_CSSClasses.md).```
<field name="ExportDate_Date">
  <qp-field
    control-state.bind=
      "EmailSyncFilter.ExportDate_Time"
    class="no-label"
  </qp-field>
</field>
```

|
|TimeMode```
<px:PXDateTimeEdit
  DataField="ExportDate_Time"
  TimeMode="true"/>
```

|To indicate that the field contains time, use the timeMode property of config of the field, as shown in the following code.```
<field name="ExportDate_Date">
  <qp-field
    control-state.bind=
      "EmailSyncFilter.ExportDate_Time"
    config-time-mode.bind="true">
  </qp-field>
</field>
```

|
|Width```
<px:PXDateTimeEdit
  DataField="ExportDate_Time"
  Width="84" />
```

|Use the col-N class to define the width of the field, as the following code shows. In col-N, *N* is the number of columns the field occupies, which can be a whole number between 1 and 12. For details about the class, see [Form Layout: CSS Classes](UIDev_DesigningLayout_CSSClasses.md).```
<field name="ExportDate_Date">
  <qp-field
    class="col-3"
    control-state.bind=
      "EmailSyncFilter.ExportDate_Time"
  >
  </qp-field>
</field>
```

|

## Obsolete ASPX Controls and Properties { .section}

The following table lists obsolete ASPX elements that are related to date and time controls. You do not need to replace these ASPX elements with any HTML or TypeScript elements.

|ASPX Control|Property|
|------------|--------|
|PXDateTimeEdit|runat|

**Parent topic:**[Date and Time](../DeveloperGuide/UIDevRef_DateTime_Mapref.md)

