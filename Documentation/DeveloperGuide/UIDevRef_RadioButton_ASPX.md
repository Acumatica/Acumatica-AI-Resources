# Radio Button: Conversion from ASPX to HTML and TypeScript

The following tables will help you to convert the ASPX elements that are related to radio buttons to HTML or TypeScript elements.

## PXGroupBox

The following table shows the correspondence between the PXGroupBox element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

<table id="_53b158c3-95c7-4d0b-b468-cfb18f27756e"><thead><tr><th>

ASPX

</th><th>

HTML or TypeScript

</th></tr></thead><tbody><tr><td>

PXGroupBox```
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

</td><td>

Use the qp-radio and qp-radio-item tags in HTML instead. For details about this approach, see [Radio Button: Configuration](UIDevRef_RadioButton_Configuration.md).

</td></tr><tr><td>

Caption```
<px:PXGroupBox
  Caption="Selected Mode" />
```

</td><td>

Specify the DisplayName property in the [PXUIField](https://help.acumatica.com/(W(3))/Help?ScreenId=ShowWiki&pageid=79a99243-7926-f570-87ed-536a04ccfe32) attribute of the respective DAC field.

</td></tr><tr><td>

CommitChanges```
<px:PXGroupBox
  CommitChanges="True"/>
```

</td><td>

Use the CommitChanges option of PXFieldState in TypeScript, as the following code shows. With this option, the control commits changes to the server each time a user has changed the value in the box and focus is no longer on the box.```
export class Document 
  extends PXView {
  Mode:
    PXFieldState<
      PXFieldOptions.CommitChanges>;
}
```

</td></tr><tr><td>

DataField```
<px:PXGroupBox
  DataField="Mode"/>
```

</td><td>

Use the name attribute of the field tag or the control-state attribute of the qp-field tag in HTML to bind the control to a data field.

</td></tr><tr><td>

ID```
<px:PXGroupBox ID="gpMode"/>
```

</td><td>

Use the id attribute of the qp-field tag if this tag is used as a replacement. For the field tag, the ID is not used.

</td></tr></tbody>
</table>

## PXRadioButton

The following table shows the correspondence between the PXRadioButton element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

<table id="_92753db3-ed83-4cbb-b623-624b348a0b0c"><thead><tr><th>

ASPX

</th><th>

HTML or TypeScript

</th></tr></thead><tbody><tr><td>

PXRadioButton```
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

</td><td>

Use the qp-radio-item tag or the options property of the config attribute of the qp-radio tag, as shown in the following code, in HTML instead. For details about the approach, see [Radio Button: Configuration](UIDevRef_RadioButton_Configuration.md).```
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

</td></tr><tr><td>

Text```
<px:PXRadioButton
  Text="By Site State" />
```

</td><td>

Use the text property inside the options property of the config attribute, or use the text attribute of the qp-radio-item tag in HTML.

</td></tr><tr><td>

Value```
<px:PXRadioButton
  Value="0"/>
```

</td><td>

Use the value property inside the options property of the config attribute, or use the text attribute of the qp-radio-item tag in HTML.

</td></tr></tbody>
</table>

## Obsolete ASPX Controls and Properties

The following table lists the obsolete ASPX elements that are related to radio buttons. You do not need to replace these ASPX elements with any HTML or TypeScript elements.

<table id="_41289709-97c0-49e8-889b-0b2cf1319062"><thead><tr><th>

ASPX Control

</th><th>

Properties

</th></tr></thead><tbody><tr><td>

PXGroupBox

</td><td>

-   Height
-   RenderStyle
-   runat
-   ValidateRequestMode
-   Width

</td></tr><tr><td>

PXRadioButton

</td><td>

-   runat
-   ID

</td></tr></tbody>
</table>

**Parent topic:**[Radio Button \(Option Button\)](../DeveloperGuide/UIDevRef_RadioButton_Mapref.md)

