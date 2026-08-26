# Dialog Box: Conversion from ASPX to HTML and TypeScript {#_ab10429c-4ce2-4ac6-8b63-74118429cc7c .concept}

The following tables will help you to convert the ASPX elements that are related to dialog boxes to HTML or TypeScript elements.

## PXSmartPanel { .section}

The following table shows the correspondence between PXSmartPanel and HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

|ASPX|HTML or TypeScript|
|----|------------------|
|PXSmartPanel|Is replaced by the qp-panel tag.|
|AutoRepaint```
<px:PXSmartPanel
  AutoRepaint="True" ... />
```

|Is replaced by the auto-repaint attribute, which indicates \(if set to *true*\) that the system should initiate a callback to the server with all the updated data. The server then processes the data and shows the processed data in the dialog box.```
<qp-panel
  id="ItemInfo" auto-repaint="true">
...
</qp-panel> 
```

|
|Caption```
<px:PXSmartPanel
  Caption="Inventory Lookup" 
... />
```

|Is replaced by the caption attribute, which sets the caption of the dialog box. The caption is localizable.```
<qp-panel
  id="ItemInfo" caption="Inventory Lookup">
...
</qp-panel> 
```

|
|CloseButtonDialogResult|Is replaced by the close-button-dialog-result attribute, which specifies the dialog result for the Close button of the dialog box. ```
<qp-panel id="ItemInfo" 
  close-button-dialog-result="Abort">
...
</qp-panel> 
```

|
|CommandName```
<px:PXSmartPanel 
  CommandName="preload" ... />
```

|Is replaced by the command attribute, which specifies the action that should be executed on dialog closing. For more details, see [Dialog Box: Executing Action on Dialog Box Closing](UIDevRef_DialogBox_CommandExecution.md).```
<qp-panel id="Details" command="preload">
```

|
|Height|Is replaced by the height attribute, which sets the height of the dialog box.```
<qp-panel
  id="ItemInfo" width="85vw" height="85vh">
...
</qp-panel> 
```

|
|ID```
<px:PXSmartPanel
  ID="ItemInfo" ... />
```

|Is replaced by the id attribute, which sets the ID of the dialog box. Use the key value from ASPX for the id in HTML if the id and key in ASPX do not match. ```
<qp-panel
  id="ItemInfo">
...
</qp-panel> 
```

|
|Key|Is replaced by the id attribute which sets the id of the dialog box. Use the key value from ASPX for the id in HTML if the id and key in ASPX do not match. This is a requirement to maintain the testability of the UI.|
|Width|Is replaced by the width attribute, which sets the width of the dialog box.```
<qp-panel
  id="ItemInfo" width="1632px" 
  height="918px">
...
</qp-panel> 
```

|

## PXPanel { .section}

The following table shows the correspondence between the PXPanel ASPX element and HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

|ASPX|HTML or TypeScript|
|----|------------------|
|PXPanel```
<px:PXPanel runat="server"
  ID="PXPanelAddToProjects"
  SkinID="Buttons">
    <px:PXButton
      runat="server"
      ID="btnCancel"
      Text="Cancel"
      DialogResult="Cancel" >
</px:PXPanel>
```

|Is replaced by the footer tag. The footer tag contains the buttons at the bottom of the dialog box. This tag can contain any number of qp-button tags.```
<footer>
  <qp-button
    id="buttonCancel-addItemLookup"
    dialog-result="Cancel">
  </qp-button>
</footer>
```

|

## Obsolete ASPX Controls and Properties { .section}

The following table lists obsolete ASPX elements that are related to dialog boxes. You do not need to replace these ASPX elements with any HTML or TypeScript elements.

|ASPX Control|Properties|
|------------|----------|
|PXSmartPanel|-   AcceptButtonId
-   AllowMove
-   AllowResize
-   AlreadyLocalized
-   AutoCallBack-Command
-   AutoCallBack-Target
-   AutoReload
-   AutoSize-Container
-   AutoSize-Enabled
-   CallbackArgument
-   CallBackMode-CommitChanges
-   CallBackMode-PostData
-   CancelButtonID
-   CommandSourceID
-   DependsOnView
-   HideAfterAction
-   LoadOnDemand
-   Overflow
-   Position
-   RenderVisible
-   runat
-   SkinID

|
|PXPanel|-   ID

|

**Parent topic:**[Dialog Box](../DeveloperGuide/UIDevRef_DialogBox_Mapref.md)

