# Image Viewer: Conversion from ASPX to HTML and TypeScript

The following table will help you to convert the ASPX elements that are related to image viewer control to HTML or TypeScript elements.

## PXImageView

The following table shows the correspondence between the PXImageView element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

<table id="_53b158c3-95c7-4d0b-b468-cfb18f27756e"><thead><tr><th>

ASPX

</th><th>

HTML or TypeScript

</th></tr></thead><tbody><tr><td>

PXImageView```
<px:PXImageView
  ID="edTeamsMemberPhoto"
  runat="server"
  DataField="PhotoFileName"
  Width="64"
  Height="64"
/>
```

</td><td>

Use the qp-image-view tag, as shown in the following code. ```
<qp-image-view
  id="PhotoFileName"
  width="64px"
  height="64px">
</qp-image-view>
```

Alternatively, you can use the field tag and specify qp-image-view as the value of the control-type attribute, as shown in the following code.```
<field
  name="PhotoFileName"
  control-type="qp-image-view">
</field>
```

</td></tr><tr><td>

Height

</td><td>

Use the height attribute of the qp-image-view tag.```
<qp-image-view  ...
  height="300px">
</qp-image-view>
```

</td></tr><tr><td>

Width

</td><td>

Use the width attribute of the qp-image-view tag.```
<qp-image-view  ...
  width="300px">
</qp-image-view>
```

</td></tr></tbody>
</table>

**Parent topic:**[Image Viewer](../DeveloperGuide/UIDevRef_ImageViewer_Mapref.md)

