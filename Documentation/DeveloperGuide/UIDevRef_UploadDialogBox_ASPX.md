# Upload Dialog Box: Conversion from ASPX to HTML and TypeScript

The following tables will help you to convert the ASPX elements that are related to the upload dialog box to HTML or TypeScript elements.

## PXUploadDialog

The following table shows the correspondence between the PXUploadDialog element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

<table id="_53b158c3-95c7-4d0b-b468-cfb18f27756e"><thead><tr><th>

ASPX

</th><th>

HTML or TypeScript

</th></tr></thead><tbody><tr><td>

PXUploadDialog```
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

</td><td>

To display an upload dialog box, use the qp-upload-dialog tag in the HTML template.```
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

</td></tr><tr><td>

ID```
<px:PXUploadDialog 
ID="pnlNewRev" ... />
```

</td><td>

Use the id property, which is available in the config attribute of the qp-upload-dialog control.```
<qp-upload-dialog 
id="pnlNewRev" ...>
```

</td></tr><tr><td>

Key```
<px:PXUploadDialog ... 
Key="NewRevisionPanel" ... />
```

</td><td>

Use the key property, which is available in the config attribute of the qp-upload-dialog control.```
<qp-upload-dialog ...
key="NewRevisionPanel" ...>
```

</td></tr><tr><td>

SessionKey```
<px:PXUploadDialog ...
SessionKey="ImportStatementProtoFile" />
```

</td><td>

Use the sessionKey property, which is available in the config attribute of the qp-upload-dialog control.```
<qp-upload-dialog ...
session-key="ImportStatementProtoFile">
```

</td></tr><tr><td>

Caption```
<px:PXUploadDialog ...
Caption="Statement File Upload" />
```

</td><td>

Use the caption property, which is available in the config attribute of the qp-upload-dialog control.```
<qp-upload-dialog ...
caption="Statement File Upload">
```

</td></tr><tr><td>

Width```
<px:PXUploadDialog ...
Width="560px" />
```

</td><td>

Use the width property, which is available in the config attribute of the qp-upload-dialog control.```
<qp-upload-dialog ...
width="560px">
```

</td></tr><tr><td>

AllowedFileTypes```
<px:PXUploadDialog ...
AllowedFileTypes=".als" />
```

</td><td>

Use the allowedTypes property, which is available in the config attribute of the qp-upload-dialog control.```
<qp-upload-dialog ...
allowed-types=".als">
```

</td></tr><tr><td>

IgnoreSize```
<px:PXUploadDialog ...
IgnoreSize="true"/>
```

</td><td>

Use the ignoreSize property, which is available in the config attribute of the qp-upload-dialog control.```
<qp-upload-dialog ...
ignore-size="true">
```

</td></tr><tr><td>

AutoSaveFile```
<px:PXUploadDialog ...
AutoSaveFile="false" />
```

</td><td>

Use the autoSave property, which is available in the config attribute of the qp-upload-dialog control.```
<qp-upload-dialog ...
auto-save="true">
```

</td></tr><tr><td>

NamePrefix```
<px:PXUploadDialog ...
NamePrefix="ar" />
```

</td><td>

Use the namePrefix property, which is available in the config attribute of the qp-upload-dialog control.```
<qp-upload-dialog ...
name-prefix="ar">
```

</td></tr><tr><td>

RenderLink```
<px:PXUploadDialog ...
RenderLink="true" />
```

</td><td>

Use the renderLink property, which is available in the config attribute of the qp-upload-dialog control.```
<qp-upload-dialog ...
render-link="true">
```

</td></tr><tr><td>

RenderComment```
<px:PXUploadDialog ...
RenderComment="true" />
```

</td><td>

Use the renderComment property, which is available in the config attribute of the qp-upload-dialog control.```
<qp-upload-dialog ...
render-comment="true">
```

</td></tr><tr><td>

RenderImportOptions```
<px:PXUploadDialog ...
RenderImportOptions="true" />
```

</td><td>

Use the renderImportOptions property, which is available in the config attribute of the qp-upload-dialog control.```
<qp-upload-dialog ...
render-import-options="true">
```

</td></tr><tr><td>

RenderCheckIn```
<px:PXUploadDialog ...
RenderCheckIn="true" />
```

</td><td>

Use the renderCheckIn property, which is available in the config attribute of the qp-upload-dialog control.```
<qp-upload-dialog ...
render-check-in="true">
```

</td></tr></tbody>
</table>

## Obsolete ASPX Controls and Properties

The following table lists the obsolete ASPX elements that are related to the upload dialog box. You do not need to replace these ASPX elements with any HTML or TypeScript elements.

<table id="_41289709-97c0-49e8-889b-0b2cf1319062"><thead><tr><th>

ASPX Control

</th><th>

Properties

</th></tr></thead><tbody><tr><td>

PXUploadDialog

</td><td>

-   runat

</td></tr></tbody>
</table>

**Parent topic:**[Upload Dialog Box](../DeveloperGuide/UIDevRef_UploadDialog_Mapref.md)

