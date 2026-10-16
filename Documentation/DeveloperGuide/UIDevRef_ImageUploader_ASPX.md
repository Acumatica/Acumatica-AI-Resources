# Image Uploader: Conversion from ASPX to HTML and TypeScript

The following tables will help you to convert the ASPX elements that are related to the image uploader control to HTML or TypeScript elements.

## PXImageUploader

The following table shows the correspondence between PXImageUploader and HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

<table id="_53b158c3-95c7-4d0b-b468-cfb18f27756e"><thead><tr><th>

ASPX

</th><th>

HTML or TypeScript

</th></tr></thead><tbody><tr><td>

PXImageUploader```
<px:PXImageUploader
  Height="320px"
  Width="430px"
  ID="imgUploader"
  runat="server"
  DataField="ImageUrl"
  AllowUpload="True"
  AllowNoImage="True"
  ShowComment="True"
  DataMember="ItemSettings"
/>
```

</td><td>

Use the qp-image-uploader tag, as shown in the following code. ```
<qp-image-uploader
  id="ImageUrl"
  state.bind="Item.ImageUrl"
  value.two-way="Item.ImageUrl.value"
  width="300px"
  height="300px">
</qp-image-uploader>
```

Alternatively, you can use the field tag and specify qp-image-uploader as the value of the control-type attribute, as shown in the following code.

```
<field
  name="ImageUploader"
  control-type="qp-image-uploader"
/>
```

</td></tr><tr><td>

AllowNoImage```
<px:ImageUploader ID="imgUploader" ...
  AllowNoImage="True" />
```

</td><td>

Use the allowNull property of the config attribute.

</td></tr><tr><td>

AllowUpload```
<px:ImageUploader ID="imgUploader" ...
  AllowUpload="True" />
```

</td><td>

Use the readOnly property of the config attribute.

</td></tr><tr><td>

DataField

</td><td>

Use the state and value attributes of the qp-image-uploader tag, as shown in the following code.

 ```
<qp-image-uploader
  state.bind="Item.ImageUrl"
  value.two-way="Item.ImageUrl.value"
>
</qp-image-uploader>
```

 Alternatively, you can use the name property of the field tag in HTML to specify the DAC field name, as shown in the following code.

 ```
<field 
  name="Item.ImageUrl" ... >
  control-type="qp-image-uploader"
</field>
```

</td></tr><tr><td>

DataMember```
<px:ImageUploader ID="imgUploader" ...
  DataMember="ItemSettings" />
```

</td><td>

Use the viewName property of the config attribute.

</td></tr><tr><td>

Height

</td><td>

Use the height attribute of the qp-image-uploader tag.```
<qp-image-uploader
  ...
  height="300px">
</qp-image-uploader>
```

</td></tr><tr><td>

Width

</td><td>

Use the width attribute of the qp-image-uploader tag.```
<qp-image-uploader
  ...
  width="300px">
</qp-image-uploader>
```

</td></tr></tbody>
</table>

## Obsolete ASPX Control and Property

The following table lists the obsolete ASPX element that is related to the image uploader control. You do not need to replace this ASPX element with any HTML or TypeScript element.

<table id="_41289709-97c0-49e8-889b-0b2cf1319062"><thead><tr><th>

ASPX Control

</th><th>

Properties

</th></tr></thead><tbody><tr><td>

PXImageUploader

</td><td>

-   runat
-   SuppressLabel

</td></tr></tbody>
</table>

**Parent topic:**[Image Uploader](../DeveloperGuide/UIDevRef_ImageUploader_Mapref.md)

