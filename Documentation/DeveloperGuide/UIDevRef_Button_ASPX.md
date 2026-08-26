# Button: Conversion from ASPX to HTML and TypeScript {#_ed1b9ceb-e211-4fc1-a7c6-aee72a92427e .concept}

The following tables will help you to convert ASPX elements that are related to buttons to HTML or TypeScript elements.

## PXButton { .section}

The following table shows the correspondence between PXButton and HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

|ASPX|HTML or TypeScript|
|----|------------------|
|PXButton```
<px:PXButton ... />
```

|Is replaced by the qp-button tag.```
<qp-button id="buttonAdjustDocAmt">
</qp-button>
```

|
|CommandName```
<px:PXButton 
CommandName= "AddOK"  ... />
```

|Is replaced by the state.bind attribute, which binds the button to the specified action defined in a graph.```
<qp-button id="buttonAddOK" 
state.bind="AddOK">
</qp-button>
```

|
|DialogResult```
<px:PXButton 
DialogResult= "Cancel"  ... />
```

|Is replaced by dialog-result attribute, which specifies the response returned by an action. This attribute is required for the standard buttons of a dialog box.```
<qp-button
  id="buttonCancel"
  dialog-result="Cancel">
</qp-button>
```

This attribute can have any of the following values:-   *Abort*
-   *Cancel*
-   *Ignore*
-   *No*
-   *None*
-   *OK*
-   *Retry*
-   *Yes*

|
|Enabled```
<px:PXButton 
Enabled= "True"  ... />
```

|Is replaced by the enabled attribute, which indicates \(if set to *true*\) that the button is enabled on the UI.```
<qp-button id="buttonAdjustDocAmt">
enabled="true" </qp-button>
```

|
|ID```
<px:PXButton 
ID= "button1"  ... />
```

|Is replaced by the id attribute. This is a required attribute.```
<qp-button id="button1">
</qp-button>
```

|
|Text```
<px:PXButton 
Text= "Add More"  ... />
```

|Is replaced by the caption attribute, which defines the text that is displayed on the button. The string specified in this attribute is localizable.```
<qp-button id="button1" 
caption="Add More" dialog-result="Add">
</qp-button>
```

|
|Tooltip```
<px:PXToolBarButton ...>
  <Tooltip="Add Related Tables">
</px:PXToolBarButton>
```

|Use the tooltip attribute of the qpbutton tag.```
<qp-button id="buttonAddTable" 
  config.bind="{tooltip="Add a related table for the selected table"}">
```

For buttons on a table toolbar, use the tooltip parameter while defining an action in the topBarItems property of the gridConfig decorator. For details, see [Table \(Grid\): Configuration of the Table Toolbar](UIDevRef_Grid_Toolbar.md)

```
@gridConfig({
  topBarItems: {
    addRelatedTableRelations: {
      index: 5,
      config: {
        commandName: "addRelatedTableRelations",
        text: ActionCaption.AddRelatedTableRelations,
        toolTip: ActionToolTip.AddRelatedTableRelations
    }
  }
}
})
export class GIRelation extends PXView {  ... }
```

|
|Size|Is replaced by the class attribute, which indicates how many columns of width the button should occupy.|
|Visible```
<px:PXButton 
Visible= "True"  ... />
```

|Is replaced by the hidden attribute, which indicates \(if set to *true*\) that the button is not visible on the UI.```
<qp-button id="buttonAdjustDocAmt">
hidden="false" </qp-button>
```

|

## PXDSCallbackCommand { .section}

The following table shows the correspondence between PXDSCallbackCommand and HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

|ASPX|HTML or TypeScript|
|----|------------------|
|PopupCommand|Use the popupCommand property of the actionConfig decorator.```
@actionConfig({ 
  popupCommand: 'Refresh'
})
CreatePrepayment: PXActionState;
```

|
|PopupCommandTarget|Use the target property of the actionConfig decorator.|
|PopupPanel|Use the popupPanel property in the config attribute of the qp-button tag.|

## Obsolete ASPX Controls and Properties { .section}

The following table lists obsolete ASPX elements that are related to buttons. You do not need to replace these ASPX elements with any HTML or TypeScript elements.

|ASPX Control|Properties|
|------------|----------|
|PXButton|-   CommandSourceID
-   runat
-   SyncVisible

|
|PXDSCallbackCommand|-   CommitChanges
-   DependOnGrid
-   Name
-   PostData
-   StartNewGroup
-   Visible

|

**Parent topic:**[Button](../DeveloperGuide/UIDevRef_Button_Mapref.md)

