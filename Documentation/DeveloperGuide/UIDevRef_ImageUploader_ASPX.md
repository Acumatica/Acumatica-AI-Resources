# Image Uploader: Conversion from ASPX to HTML and TypeScript {#_b2fb227d-2e45-42f3-8e35-857da1ce0c9a .concept}

The following tables will help you to convert the ASPX elements that are related to the image uploader control to HTML or TypeScript elements.

## PXImageUploader { .section}

The following table shows the correspondence between PXImageUploader and HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

|ASPX|HTML or TypeScript|
|----|------------------|
|PXImageUploader```
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

|Use the qp-image-uploader tag, as shown in the following code. ```
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

|
|AllowNoImage```
<px:ImageUploader ID="imgUploader" ...
  AllowNoImage="True" />
```

|Use the allowNull property of the config attribute.|
|AllowUpload```
<px:ImageUploader ID="imgUploader" ...
  AllowUpload="True" />
```

|Use the readOnly property of the config attribute.|
|DataField|Use the state and value attributes of the qp-image-uploader tag, as shown in the following code.

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

|
|DataMember```
<px:ImageUploader ID="imgUploader" ...
  DataMember="ItemSettings" />
```

|Use the viewName property of the config attribute.|
|Height|Use the height attribute of the qp-image-uploader tag.```
<qp-image-uploader
  ...
  height="300px">
</qp-image-uploader>
```

|
|Width|Use the width attribute of the qp-image-uploader tag.```
<qp-image-uploader
  ...
  width="300px">
</qp-image-uploader>
```

|

## Obsolete ASPX Control and Property { .section}

The following table lists the obsolete ASPX element that is related to the image uploader control. You do not need to replace this ASPX element with any HTML or TypeScript element.

|ASPX Control|Properties|
|------------|----------|
|PXImageUploader|-   runat
-   SuppressLabel

|

**Parent topic:**[Image Uploader](../DeveloperGuide/UIDevRef_ImageUploader_Mapref.md)

