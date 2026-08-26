# Radio Button: Conversion from ASPX to HTML and TypeScript {#_924e6a9f-1ff9-4a45-9214-6d8217a9bcc8 .concept}

The following tables will help you to convert the ASPX elements that are related to radio buttons to HTML or TypeScript elements.

## PXGroupBox { .section}

The following table shows the correspondence between the PXGroupBox element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

|ASPX|HTML or TypeScript|
|----|------------------|
|PXGroupBox```
<px:PXGroupBox
  CommitChanges="True"
  RenderStyle="Simple"
  ID="gpMode"
  runat="server"
  Caption="Selected Mode"
  DataField="Mode"
  Width="280px"
  Height="25px">
  <Template>
    <px:PXLayoutRule
      runat="server"
      Merge="True"
      LabelsWidth="S"
      ControlSize="S" />
    <px:PXRadioButton
      runat="server"
      ID="rModeSite"
      Value="0"
      Text="By Site State" />
    <px:PXRadioButton
      runat="server"
      ID="rModeCustomer"
      Value="1"
      Text="By Last Sale" />
    <px:PXDateTimeEdit
      CommitChanges="True"
      ID="edHistoryDate"
      runat="server"
      DataField="HistoryDate"
      SuppressLabel="true" />
  </Template>
</px:PXGroupBox>
```

|Use the qp-radio and qp-radio-item tags in HTML instead. For details about this approach, see [Radio Button: Configuration](UIDevRef_RadioButton_Configuration.md).|
|Caption```
<px:PXGroupBox
  Caption="Selected Mode" />
```

|Specify the DisplayName property in the [PXUIField](https://help.acumatica.com/(W(3))/Help?ScreenId=ShowWiki&pageid=79a99243-7926-f570-87ed-536a04ccfe32) attribute of the respective DAC field.|
|CommitChanges```
<px:PXGroupBox
  CommitChanges="True"/>
```

|Use the CommitChanges option of PXFieldState in TypeScript, as the following code shows. With this option, the control commits changes to the server each time a user has changed the value in the box and focus is no longer on the box.```
export class Document 
  extends PXView {
  Mode:
    PXFieldState<
      PXFieldOptions.CommitChanges>;
}
```

|
|DataField```
<px:PXGroupBox
  DataField="Mode"/>
```

|Use the name attribute of the field tag or the control-state attribute of the qp-field tag in HTML to bind the control to a data field.|
|ID```
<px:PXGroupBox ID="gpMode"/>
```

|Use the id attribute of the qp-field tag if this tag is used as a replacement. For the field tag, the ID is not used.|

## PXRadioButton { .section}

The following table shows the correspondence between the PXRadioButton element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

|ASPX|HTML or TypeScript|
|----|------------------|
|PXRadioButton```
<px:PXGroupBox ...>
  <Template>
    <px:PXLayoutRule .../>
    <px:PXRadioButton
      runat="server"
      ID="rModeSite"
      Value="0"
      Text="By Site State" />
    <px:PXRadioButton .../>
    <px:PXDateTimeEdit .../>
  </Template>
</px:PXGroupBox>
```

|Use the qp-radio-item tag or the options property of the config attribute of the qp-radio tag, as shown in the following code, in HTML instead. For details about the approach, see [Radio Button: Configuration](UIDevRef_RadioButton_Configuration.md).```
<qp-field
  control-state.bind=
    "QuickProcessParameters.ShipDateMode"
  control-type="qp-radio"
  config-options.bind=
    "[{ value: 0, text: 'Today' },
    { value: 1, text: 'Tomorrow' },
    { value: 2, text: 'Custom' }]">
</qp-field>
```

|
|Text```
<px:PXRadioButton
  Text="By Site State" />
```

|Use the text property inside the options property of the config attribute, or use the text attribute of the qp-radio-item tag in HTML.|
|Value```
<px:PXRadioButton
  Value="0"/>
```

|Use the value property inside the options property of the config attribute, or use the text attribute of the qp-radio-item tag in HTML.|

## Obsolete ASPX Controls and Properties { .section}

The following table lists the obsolete ASPX elements that are related to radio buttons. You do not need to replace these ASPX elements with any HTML or TypeScript elements.

|ASPX Control|Properties|
|------------|----------|
|PXGroupBox|-   Height
-   RenderStyle
-   runat
-   ValidateRequestMode
-   Width

|
|PXRadioButton|-   runat
-   ID

|

**Parent topic:**[Radio Button \(Option Button\)](../DeveloperGuide/UIDevRef_RadioButton_Mapref.md)

