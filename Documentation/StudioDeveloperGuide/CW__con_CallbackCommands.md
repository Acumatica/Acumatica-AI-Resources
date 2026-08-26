# Configuration of Callback Commands {#_2a23cb2e-82a8-4354-8679-c87dd48b5c6e .concept}

A datasource control contains the collection of callback commands that are executed on the server. A callback command is a component of the PXDSCallbackCommand type.

**Important:** We recommend that you do not add callback commands in ASPX. Instead use the properties of the PXButton \(or derived\) attribute specified for the action. For details, see [Properties of Callback Commands](#_fb7959b8-2e05-46f8-b3c9-f876365b2fd3) below.

## Addition of Callback Commands { .section}

The callback command may be statically defined in the ASPX page markup or dynamically added by the framework. When the server initializes the page object, it dynamically adds additional callback commands to the datasource control. Along with system callback commands, the server adds callback commands from the actions defined in the graph. The server adds the callback commands for only those actions whose DAC is the same as the main DAC of the data view specified in the PrimaryView property.

**Tip:** If the graph is derived from PXGraph&lt;,&gt; with two type parameters, the graph includes the default actions, which are shown in the following code.

```
public class PXGraph <TGraph, TPrimary> : PXGraph
    where  TGraph : PXGraph
    where  TPrimary :  class ,  new (), IBqlTable
{
    public  PXSave<TPrimary> Save;
    public  PXCancel<TPrimary> Cancel;
    public  PXInsert<TPrimary> Insert;
    public  PXCopyPasteAction<TPrimary> CopyPaste;
    public  PXDelete<TPrimary> Delete;
    public  PXFirst<TPrimary> First;
    public  PXPrevious<TPrimary> Previous;
    public  PXNext<TPrimary> Next;
    public  PXLast<TPrimary> Last;
}
```

The framework creates the callback commands for the default actions if the DAC in the second type parameter of PXGraph&lt;,&gt; is the same as the main DAC of the data view specified in the PrimaryView property.

## Properties of Callback Commands {#_fb7959b8-2e05-46f8-b3c9-f876365b2fd3 .section}

The framework determines the properties of callback commands by merging the properties specified for the callback command on the ASPX page and the properties of the PXButton \(or derived\) attribute specified for the action. The system uses the logical `OR` to the two values: If either of the values is true, the resulting value is true.

The datasource control provides the collection of PXDSCallbackCommand components in the CallbackCommands property of the control. The CallbackCommands property includes the list of callback commands that have been dynamically added to the datasource control from the definitions of actions in the graph. You can edit these callback commands.

If you change a default property of a dynamically added callback command, the definition of the PXDSCallbackCommand component is added to the page, as the following code shows.

```
<px:PXDataSource ID="ds" ...>
    <CallbackCommands>
        <%-- The Visible property is set to False for the standard
             Next callback command --%>
    <px:PXDSCallbackCommand Name="Next" PopupCommand=""
                            PopupCommandTarget="" 
                            PopupPanel="" Text="" Visible="False">
```

The following table lists the equivalents of the ASPX properties in C\# code of the graph or in ASPX.

|Property in ASPX|Equivalent|
|----------------|----------|
|CommitChanges: Enables the posting of modified data when the callback command is invoked.|Use the CommitChanges parameter of the PXButton \(or derived\) attribute specified on the action.

 The PXButton attribute has the CommitChanges property set to `true` by default.

|
|Visible: Makes the button visible \(if the property is set to `true`\) or invisible \(if it is set to `false`\) on the toolbar.|Use the value of the Visible parameter of the PXUIField attribute specified for the action.

 If the Visible parameter of the PXUIField attribute is `true` and the action is used on a toolbar of PXSmartPanel or a tab, it is not displayed on the form toolbar. Other actions that have Visible parameter of the PXUIField attribute set to `true` are displayed on the toolbar by default.

 If the default behavior is not suitable for a customized or custom form, you can specify the value of the DisplayOnMainToolbar parameter of the PXButton attribute.

|
|DependOnGrid: Enables the posting of the current row selected in the grid when the callback command is invoked. The value is the ID of the PXGrid control.|Set `SyncPosition="True"` for the corresponding grid.

 However, if the availability of the action depends on a Boolean column of the grid, the PXDSCallbackCommand element, along with the DependOnGrid property, should be added in ASPX.

|
|PopupCommand: Specifies the action that is executed on closing of an application page that is opened in popup mode.|Use the OnClosingPopup parameter of the PXButton attribute instead.

 For example, instead of `PopupCommand="Cancel"` in ASPX, use `OnClosingPopup=PXSpecialButtonType.Cancel`; instead of `PopupCommand="SyncPaymentTransaction"` in ASPX, where `SyncPaymentTransaction` is a custom action, use OnClosingPopup=nameof\(syncPaymentTransaction\).

|

**Parent topic:**[Configuring the ASPX Page](../StudioDeveloperGuide/CW__mng_Configuring_Page.md)

