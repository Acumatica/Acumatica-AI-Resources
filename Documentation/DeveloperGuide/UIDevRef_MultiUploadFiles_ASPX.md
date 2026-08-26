# Upload Files Button: Conversion from ASPX to HTML and TypeScript {#_551d2f8c-aa27-490c-8251-22793dc98ffc .concept}

The following tables will help you to convert the ASPX elements that are related to the upload files button control to HTML or TypeScript elements.

## PXFileUploader { .section}

The following table shows the correspondence between the PXFileUploader element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

|ASPX|HTML or TypeScript|
|----|------------------|
|PXFileUploader```
<px:FileUploader ID="fileUploaderControl" 
runat="server" DataMember="uploadFiles" />
```

|To attach files to a record, use the qp-multi-upload tag in the HTML template.```
<qp-multi-upload config.bind="{
  id: 'uploadFilesControl',
  action: 'attachFiles',
  accept: '.gif,.jpg'
}"></qp-multi-upload>
```

|
|ID```
<px:PXFileUploader 
ID="uploadFilesDialog" ... />
```

|Use the id property, which is available in the config attribute of the qp-multi-upload control.```
<qp-multi-upload 
id="uploadFilesControl" ...>
</qp-multi-upload>
```

|
|AllowedTypes```
<px:PXFileUploader  ...
AllowedTypes=".jpg" />
```

|Use the accept property, which is available in the config attribute of the qp-multi-upload control.```
<qp-multi-upload ...
accept=".jpg">
</qp-multi-upload>
```

|
|SelectFileMessage```
<px:PXFileUploader  ...
SelectFileMessage="Upload Files Here" />
```

|Neither TypeScript nor HTML provide an equivalent property that can be used to customize the text that is displayed on the qp-multi-upload control. However, you can specify this text between the opening tag and the closing tag of the control, as shown in the following code example.```
<qp-multi-upload ...>
Upload Files Here
</qp-multi-upload>
```

|

**Parent topic:**[Upload Files Button](../DeveloperGuide/UIDevRef_MultiUploadFiles_Mapref.md)

