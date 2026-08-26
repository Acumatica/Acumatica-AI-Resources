# Upload Dialog Box: Configuration of an Upload Dialog Box {#_e178f13c-eddd-4493-9d76-c9cdbb11ed9d .concept}

You define the upload dialog box in HTML by using the qp-upload-dialog tag.

The configuration properties of the qp-upload-dialog control are stored in the IQpUploadDialogConfig interface.

An example of defining a file upload dialog in HTML is shown in the following code.

```
<qp-upload-dialog 
  id="pnlNewRev"
  key="NewRevisionPanel"
  session-key="sessionKey_fileMaintenance"
  caption="File Upload"
  render-link="true">
</qp-upload-dialog>
```

To display the dialog box, you need to invoke the dialog box in the graph code \(in an action delegate\) by doing the following:

1.  Calling the Ask or AskExt method of the view or the DialogManager class
2.  Specifying the dialog box properties in the method parameters.

The following code shows the invocation of the file upload dialog defined above in the graph code.

```
public IEnumerable uploadNewVersion(PXAdapter a)
{
  var askResult = DialogManager.AskExt(a.View.Graph, 
                                       "NewRevisionPanel", null, null, false);
  if (askResult == WebDialogResult.OK)
 {
    var info = PXContext.SessionTyped<PXSessionStatePXData>()
      .FileInfo["sessionKey_fileMaintenance"];
    if (info != null)
    {
      this.NewRevision(info, info.CheckIn);
    }
  }
  
  return a.Get();
}
```

**Parent topic:**[Upload Dialog Box](../DeveloperGuide/UIDevRef_UploadDialog_Mapref.md)

