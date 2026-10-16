# Text Box: Conversion from ASPX to HTML and TypeScript

The following tables will help you to convert the ASPX elements that are related to the text box control to HTML or TypeScript elements.

## PXTextEdit

The following table shows the correspondence between the PXTextEdit element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

<table id="_53b158c3-95c7-4d0b-b468-cfb18f27756e"><thead><tr><th>

ASPX

</th><th>

HTML or TypeScript

</th></tr></thead><tbody><tr><td>

PXTextEdit```
<px:PXTextEdit ... />
```

</td><td>

Replace it with field \(whose control type is automatically defined as a text box from the backend code\). In rare cases, you should replace it explicitly with the qp-text-editor control.

</td></tr><tr><td>

DataField```
<px:PXTextEdit 
  DataField="OrderDesc" ... />
```

</td><td>

Use the name attribute of the field tag.

 ```
<field name="OrderDesc">
</field>
```

</td></tr><tr><td>

ID```
<px:PXTextEdit 
  ID="CstPXTextEdit1" ... />
```

</td><td>

Replace it with the id attribute of the qp-field tag if this tag is used as a replacement. In other cases, the ID is not necessary for a text box.

</td></tr></tbody>
</table>

**Parent topic:**[Text Box](../DeveloperGuide/UIDevRef_TextBox_Mapref.md)

