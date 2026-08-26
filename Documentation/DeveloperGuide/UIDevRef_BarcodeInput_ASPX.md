# Barcode Editor: Conversion from ASPX to HTML and TypeScript {#_38b7fdad-07b4-4e6d-b66a-d4d55eb21341 .concept}

The following tables will help you to convert the ASPX elements that are related to the barcode editor to HTML or TypeScript elements.

## PXTextEdit { .section}

The following table shows the correspondence between the PXTextEdit element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

|ASPX|HTML or TypeScript|
|----|------------------|
|PXTextEdit```
<px:PXTextEdit ID="edBarcode" runat="server" 
  DataField="Barcode">
  <AutoCallBack Command="Scan" Target="ds">
    <Behavior CommitChanges="True" />
  </AutoCallBack>
  <ClientEvents Initialize="Barcode_Initialize"/>
</px:PXTextEdit>
```

|Replace it with field and specify `control-type="qp-barcode-input"` in the field tag. In rare cases, you should replace it explicitly with the qp-barcode-input control. ```
<field name="Barcode" control-type="qp-barcode-input" 
  config-sound-control.bind="Info.MessageSoundFile" 
  config-submit-command.bind="Scan"></field>
```

|
|DataField```
<px:PXTextEdit ... DataField="Barcode">
```

|Use the name attribute of the field tag. ```
<field name="Barcode" ... >
```

|
|ID```
<px:PXTextEdit ID="edBarcode" ... >
```

|Replace it with the id attribute of the qp-field tag if this tag is used as a replacement. In other cases, the ID is not necessary for a barcode editor.|

## AutoCallBack in PXTextEdit { .section}

The following table shows the correspondence between the AutoCallBack element located inside the PXTextEdit tag and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

|ASPX|HTML or TypeScript|
|----|------------------|
|AutoCallBack &gt; Command```
<px:PXTextEdit ...>
  <AutoCallBack Command="Scan" Target="ds">
    <Behavior CommitChanges="True" />
  </AutoCallBack>
</px:PXTextEdit>
```

|In the fieldConfig decorator or in the field tag, specify the action name in the submitCommand property of the control.```
<field name="Barcode" control-type="qp-barcode-input"
  config-submit-command.bind="Scan"></field>
```

The Scan action is defined in the barcode-driven engine, so you do not need to define it in TypeScript.

|

## Obsolete ASPX Controls and Properties { .section}

The following table lists the obsolete ASPX elements that are related to the barcode editor. You do not need to replace these ASPX elements with any HTML or TypeScript elements.

|ASPX Control|Properties/Comments|
|------------|-------------------|
|PXTextEdit|-   runat

|
|AutoCallBack|-   Target

|
|ClientEvents|The tag is not necessary.|

**Parent topic:**[Barcode Editor](../DeveloperGuide/UIDevRef_BarcodeInput_Mapref.md)

