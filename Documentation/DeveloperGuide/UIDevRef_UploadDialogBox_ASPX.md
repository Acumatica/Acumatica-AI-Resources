# Upload Dialog Box: Conversion from ASPX to HTML and TypeScript {#_a2dcefa0-ba42-4ebb-922a-ca4b5f98e69f .concept}

The following tables will help you to convert the ASPX elements that are related to the upload dialog box to HTML or TypeScript elements.

## PXUploadDialog { .section}

The following table shows the correspondence between the PXUploadDialog element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

|ASPX|HTML or TypeScript|
|----|------------------|
|PXUploadDialog```
<px:PXUploadDialog ID="pnlNewRev" 
Key="NewRevisionPanel" 
runat="server" Height="120px" 
Style="position: static" 
Width="560px" 
Caption="Statement File Upload" 
AutoSaveFile="false" 
RenderCheckIn="false" 
SessionKey="ImportStatementProtoFile" />
```

|To display an upload dialog box, use the qp-upload-dialog tag in the HTML template.```
<qp-upload-dialog id="pnlNewRev"
  key="NewRevisionPanel"
  session-key="ImportStatementProtoFile"
  caption="Statement File Upload"					  
  height="120px"
  width="560px"
  autoSaveFile="false"
  renderCheckIn="false">
</qp-upload-dialog>
```

|
|ID```
<px:PXUploadDialog 
ID="pnlNewRev" ... />
```

|Use the id property, which is available in the config attribute of the qp-upload-dialog control.```
<qp-upload-dialog 
id="pnlNewRev" ...>
```

|
|Key```
<px:PXUploadDialog ... 
Key="NewRevisionPanel" ... />
```

|Use the key property, which is available in the config attribute of the qp-upload-dialog control.```
<qp-upload-dialog ...
key="NewRevisionPanel" ...>
```

|
|SessionKey```
<px:PXUploadDialog ...
SessionKey="ImportStatementProtoFile" />
```

|Use the sessionKey property, which is available in the config attribute of the qp-upload-dialog control.```
<qp-upload-dialog ...
session-key="ImportStatementProtoFile">
```

|
|Caption```
<px:PXUploadDialog ...
Caption="Statement File Upload" />
```

|Use the caption property, which is available in the config attribute of the qp-upload-dialog control.```
<qp-upload-dialog ...
caption="Statement File Upload">
```

|
|Width```
<px:PXUploadDialog ...
Width="560px" />
```

|Use the width property, which is available in the config attribute of the qp-upload-dialog control.```
<qp-upload-dialog ...
width="560px">
```

|
|AllowedFileTypes```
<px:PXUploadDialog ...
AllowedFileTypes=".als" />
```

|Use the allowedTypes property, which is available in the config attribute of the qp-upload-dialog control.```
<qp-upload-dialog ...
allowed-types=".als">
```

|
|IgnoreSize```
<px:PXUploadDialog ...
IgnoreSize="true"/>
```

|Use the ignoreSize property, which is available in the config attribute of the qp-upload-dialog control.```
<qp-upload-dialog ...
ignore-size="true">
```

|
|AutoSaveFile```
<px:PXUploadDialog ...
AutoSaveFile="false" />
```

|Use the autoSave property, which is available in the config attribute of the qp-upload-dialog control.```
<qp-upload-dialog ...
auto-save="true">
```

|
|NamePrefix```
<px:PXUploadDialog ...
NamePrefix="ar" />
```

|Use the namePrefix property, which is available in the config attribute of the qp-upload-dialog control.```
<qp-upload-dialog ...
name-prefix="ar">
```

|
|RenderLink```
<px:PXUploadDialog ...
RenderLink="true" />
```

|Use the renderLink property, which is available in the config attribute of the qp-upload-dialog control.```
<qp-upload-dialog ...
render-link="true">
```

|
|RenderComment```
<px:PXUploadDialog ...
RenderComment="true" />
```

|Use the renderComment property, which is available in the config attribute of the qp-upload-dialog control.```
<qp-upload-dialog ...
render-comment="true">
```

|
|RenderImportOptions```
<px:PXUploadDialog ...
RenderImportOptions="true" />
```

|Use the renderImportOptions property, which is available in the config attribute of the qp-upload-dialog control.```
<qp-upload-dialog ...
render-import-options="true">
```

|
|RenderCheckIn```
<px:PXUploadDialog ...
RenderCheckIn="true" />
```

|Use the renderCheckIn property, which is available in the config attribute of the qp-upload-dialog control.```
<qp-upload-dialog ...
render-check-in="true">
```

|

## Obsolete ASPX Controls and Properties { .section}

The following table lists the obsolete ASPX elements that are related to the upload dialog box. You do not need to replace these ASPX elements with any HTML or TypeScript elements.

|ASPX Control|Properties|
|------------|----------|
|PXUploadDialog|-   runat

|

**Parent topic:**[Upload Dialog Box](../DeveloperGuide/UIDevRef_UploadDialog_Mapref.md)

