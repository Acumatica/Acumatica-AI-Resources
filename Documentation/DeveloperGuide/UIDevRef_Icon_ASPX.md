# Icon: Conversion from ASPX to HTML and TypeScript

The following table will help you to convert the ASPX elements that are related to an icon to HTML or TypeScript elements.

## PXImage

The following table shows the correspondence between the PXImage element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

<table id="_53b158c3-95c7-4d0b-b468-cfb18f27756e"><thead><tr><th>

ASPX

</th><th>

HTML or TypeScript

</th></tr></thead><tbody><tr><td>

PXImage```
<px:PXImage
  ID="PXImage1"
  runat="server"
  ImageUrl="main@Excel"
  Width="16"
  Height="16"
/>
```

</td><td>

Use the qp-icon tag, as shown in the following code. ```
<qp-icon
  imagesrc="main@Excel">
</qp-icon>
```

</td></tr><tr><td>

ID

</td><td>

Use the id attribute of the qp-icon tag.

</td></tr><tr><td>

ImageUrl

</td><td>

Use the imagesrc attribute of the qp-icon tag. The image source can be a Font Awesome glyph, an SVG icon, or a simple raster icon, such as a PNG or a GIF file.

</td></tr><tr><td>

Height

</td><td>

Use the height attribute of the qp-icon tag.```
<qp-icon  ...
  height="16px">
</qp-icon>
```

</td></tr><tr><td>

Width

</td><td>

Use the width attribute of the qp-icon tag.```
<qp-icon  ...
  width="16px">
</qp-icon>
```

</td></tr></tbody>
</table>

**Parent topic:**[Icon](../DeveloperGuide/UIDevRef_Icon_Mapref.md)

