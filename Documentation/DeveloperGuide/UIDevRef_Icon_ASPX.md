# Icon: Conversion from ASPX to HTML and TypeScript {#_0deef3d1-7bd4-4099-a7d2-ab67bcb72eee .concept}

The following table will help you to convert the ASPX elements that are related to an icon to HTML or TypeScript elements.

## PXImage { .section}

The following table shows the correspondence between the PXImage element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

|ASPX|HTML or TypeScript|
|----|------------------|
|PXImage```
<px:PXImage
  ID="PXImage1"
  runat="server"
  ImageUrl="main@Excel"
  Width="16"
  Height="16"
/>
```

|Use the qp-icon tag, as shown in the following code. ```
<qp-icon
  imagesrc="main@Excel">
</qp-icon>
```

|
|ID|Use the id attribute of the qp-icon tag.|
|ImageUrl|Use the imagesrc attribute of the qp-icon tag. The image source can be a Font Awesome glyph, an SVG icon, or a simple raster icon, such as a PNG or a GIF file.|
|Height|Use the height attribute of the qp-icon tag.```
<qp-icon  ...
  height="16px">
</qp-icon>
```

|
|Width|Use the width attribute of the qp-icon tag.```
<qp-icon  ...
  width="16px">
</qp-icon>
```

|

**Parent topic:**[Icon](../DeveloperGuide/UIDevRef_Icon_Mapref.md)

