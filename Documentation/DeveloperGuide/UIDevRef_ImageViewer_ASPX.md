# Image Viewer: Conversion from ASPX to HTML and TypeScript {#_4661b6dd-ef73-49da-bbcf-312d2f98c7fe .concept}

The following table will help you to convert the ASPX elements that are related to image viewer control to HTML or TypeScript elements.

## PXImageView { .section}

The following table shows the correspondence between the PXImageView element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

|ASPX|HTML or TypeScript|
|----|------------------|
|PXImageView```
<px:PXImageView
  ID="edTeamsMemberPhoto"
  runat="server"
  DataField="PhotoFileName"
  Width="64"
  Height="64"
/>
```

|Use the qp-image-view tag, as shown in the following code. ```
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

|
|Height|Use the height attribute of the qp-image-view tag.```
<qp-image-view  ...
  height="300px">
</qp-image-view>
```

|
|Width|Use the width attribute of the qp-image-view tag.```
<qp-image-view  ...
  width="300px">
</qp-image-view>
```

|

**Parent topic:**[Image Viewer](../DeveloperGuide/UIDevRef_ImageViewer_Mapref.md)

