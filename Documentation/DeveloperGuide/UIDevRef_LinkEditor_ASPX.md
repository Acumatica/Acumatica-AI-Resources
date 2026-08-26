# LinkEditor: Conversion from ASPX to HTML and TypeScript {#_4f5b3656-924f-4995-8360-0cb2b31c437c .concept}

The following tables will help you to convert the ASPX elements that are related to the link editor to HTML or TypeScript elements.

## PXLinkEdit { .section}

The following table shows the correspondence between the PXLinkEdit element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

|ASPX|HTML or TypeScript|
|----|------------------|
|PXLinkEdit```
<px:PXLinkEdit ID="edDefContactWebSite" 
  runat="server" DataField="WebSite" 
  CommitChanges="True" />
```

|Replace it with field with `control-type="qp-link-editor"`. In rare cases, you should replace it explicitly with the qp-link-editor control. ```
<field name="WebSite" control-type="qp-link-editor"></field>
```

|
|DataField```
<px:PXLinkEdit DataField="WebSite" ... />
```

|Use the name attribute of the field tag.```
<field name="WebSite" ...></field>
```

|
|ID```
<px:PXLinkEdit ID="edDefContactWebSite" .../>
```

|Replace it with the id attribute of the qp-field tag if this tag is used as a replacement. In other cases, the ID is not necessary for a link editor.|
|CommitChanges```
<px:PXLinkEdit ... CommitChanges="True" />
```

|In the view class in TypeScript, specify PXFieldOptions.CommitChanges.```
export class Contact extends PXView {
  WebSite: PXFieldState<PXFieldOptions.CommitChanges>;
  ...
}
```

|

## Obsolete ASPX Controls and Properties { .section}

The following table lists the obsolete ASPX elements that are related to the link editor. You do not need to replace these ASPX elements with any HTML or TypeScript elements.

|ASPX Control|Properties|
|------------|----------|
|PXLinkEdit|-   runat

|

**Parent topic:**[Link Editor](../DeveloperGuide/UIDevRef_LinkEditor_Mapref.md)

