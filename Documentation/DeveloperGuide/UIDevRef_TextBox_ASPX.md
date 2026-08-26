# Text Box: Conversion from ASPX to HTML and TypeScript {#_851a7ea7-824a-47e0-a81c-31b0689d5deb .concept}

The following tables will help you to convert the ASPX elements that are related to the text box control to HTML or TypeScript elements.

## PXTextEdit { .section}

The following table shows the correspondence between the PXTextEdit element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

|ASPX|HTML or TypeScript|
|----|------------------|
|PXTextEdit```
<px:PXTextEdit ... />
```

|Replace it with field \(whose control type is automatically defined as a text box from the backend code\). In rare cases, you should replace it explicitly with the qp-text-editor control.|
|DataField```
<px:PXTextEdit 
  DataField="OrderDesc" ... />
```

|Use the name attribute of the field tag.

 ```
<field name="OrderDesc">
</field>
```

|
|ID```
<px:PXTextEdit 
  ID="CstPXTextEdit1" ... />
```

|Replace it with the id attribute of the qp-field tag if this tag is used as a replacement. In other cases, the ID is not necessary for a text box.|

**Parent topic:**[Text Box](../DeveloperGuide/UIDevRef_TextBox_Mapref.md)

