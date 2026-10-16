# LinkEditor: Conversion from ASPX to HTML and TypeScript

The following tables will help you to convert the ASPX elements that are related to the link editor to HTML or TypeScript elements.

## PXLinkEdit

The following table shows the correspondence between the PXLinkEdit element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

<table id="_53b158c3-95c7-4d0b-b468-cfb18f27756e"><thead><tr><th>

ASPX

</th><th>

HTML or TypeScript

</th></tr></thead><tbody><tr><td>

PXLinkEdit```
<px:PXLinkEdit ID="edDefContactWebSite" 
  runat="server" DataField="WebSite" 
  CommitChanges="True" />
```

</td><td>

Replace it with field with `control-type="qp-link-editor"`. In rare cases, you should replace it explicitly with the qp-link-editor control. ```
<field name="WebSite" control-type="qp-link-editor"></field>
```

</td></tr><tr><td>

DataField```
<px:PXLinkEdit DataField="WebSite" ... />
```

</td><td>

Use the name attribute of the field tag.```
<field name="WebSite" ...></field>
```

</td></tr><tr><td>

ID```
<px:PXLinkEdit ID="edDefContactWebSite" .../>
```

</td><td>

Replace it with the id attribute of the qp-field tag if this tag is used as a replacement. In other cases, the ID is not necessary for a link editor.

</td></tr><tr><td>

CommitChanges```
<px:PXLinkEdit ... CommitChanges="True" />
```

</td><td>

In the view class in TypeScript, specify PXFieldOptions.CommitChanges.```
export class Contact extends PXView {
  WebSite: PXFieldState<PXFieldOptions.CommitChanges>;
  ...
}
```

</td></tr></tbody>
</table>

## Obsolete ASPX Controls and Properties

The following table lists the obsolete ASPX elements that are related to the link editor. You do not need to replace these ASPX elements with any HTML or TypeScript elements.

<table id="_41289709-97c0-49e8-889b-0b2cf1319062"><thead><tr><th>

ASPX Control

</th><th>

Properties

</th></tr></thead><tbody><tr><td>

PXLinkEdit

</td><td>

-   runat

</td></tr></tbody>
</table>

**Parent topic:**[Link Editor](../DeveloperGuide/UIDevRef_LinkEditor_Mapref.md)

