# Barcode Editor: Conversion from ASPX to HTML and TypeScript

The following tables will help you to convert the ASPX elements that are related to the barcode editor to HTML or TypeScript elements.

## PXTextEdit

The following table shows the correspondence between the PXTextEdit element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

<table id="_53b158c3-95c7-4d0b-b468-cfb18f27756e"><thead><tr><th>

ASPX

</th><th>

HTML or TypeScript

</th></tr></thead><tbody><tr><td>

PXTextEdit```
<px:PXTextEdit ID="edBarcode" runat="server" 
  DataField="Barcode">
  <AutoCallBack Command="Scan" Target="ds">
    <Behavior CommitChanges="True" />
  </AutoCallBack>
  <ClientEvents Initialize="Barcode_Initialize"/>
</px:PXTextEdit>
```

</td><td>

Replace it with field and specify `control-type="qp-barcode-input"` in the field tag. In rare cases, you should replace it explicitly with the qp-barcode-input control. ```
<field name="Barcode" control-type="qp-barcode-input" 
  config-sound-control.bind="Info.MessageSoundFile" 
  config-submit-command.bind="Scan"></field>
```

</td></tr><tr><td>

DataField```
<px:PXTextEdit ... DataField="Barcode">
```

</td><td>

Use the name attribute of the field tag. ```
<field name="Barcode" ... >
```

</td></tr><tr><td>

ID```
<px:PXTextEdit ID="edBarcode" ... >
```

</td><td>

Replace it with the id attribute of the qp-field tag if this tag is used as a replacement. In other cases, the ID is not necessary for a barcode editor.

</td></tr></tbody>
</table>

## AutoCallBack in PXTextEdit

The following table shows the correspondence between the AutoCallBack element located inside the PXTextEdit tag and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

<table id="_3c4ad145-61fd-4c2c-84e0-7bf9a11b89ae"><thead><tr><th>

ASPX

</th><th>

HTML or TypeScript

</th></tr></thead><tbody><tr><td>

AutoCallBack &gt; Command```
<px:PXTextEdit ...>
  <AutoCallBack Command="Scan" Target="ds">
    <Behavior CommitChanges="True" />
  </AutoCallBack>
</px:PXTextEdit>
```

</td><td>

In the fieldConfig decorator or in the field tag, specify the action name in the submitCommand property of the control.```
<field name="Barcode" control-type="qp-barcode-input"
  config-submit-command.bind="Scan"></field>
```

The Scan action is defined in the barcode-driven engine, so you do not need to define it in TypeScript.

</td></tr></tbody>
</table>

## Obsolete ASPX Controls and Properties

The following table lists the obsolete ASPX elements that are related to the barcode editor. You do not need to replace these ASPX elements with any HTML or TypeScript elements.

<table id="_41289709-97c0-49e8-889b-0b2cf1319062"><thead><tr><th>

ASPX Control

</th><th>

Properties/Comments

</th></tr></thead><tbody><tr><td>

PXTextEdit

</td><td>

-   runat

</td></tr><tr><td>

AutoCallBack

</td><td>

-   Target

</td></tr><tr><td>

ClientEvents

</td><td>

The tag is not necessary.

</td></tr></tbody>
</table>

**Parent topic:**[Barcode Editor](../DeveloperGuide/UIDevRef_BarcodeInput_Mapref.md)

