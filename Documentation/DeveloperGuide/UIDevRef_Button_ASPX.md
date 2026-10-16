# Button: Conversion from ASPX to HTML and TypeScript

The following tables will help you to convert ASPX elements that are related to buttons to HTML or TypeScript elements.

## PXButton

The following table shows the correspondence between PXButton and HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

<table id="_53b158c3-95c7-4d0b-b468-cfb18f27756e"><thead><tr><th>

ASPX

</th><th>

HTML or TypeScript

</th></tr></thead><tbody><tr><td>

PXButton```
<px:PXButton ... />
```

</td><td>

Is replaced by the qp-button tag.```
<qp-button id="buttonAdjustDocAmt">
</qp-button>
```

</td></tr><tr><td>

CommandName```
<px:PXButton 
CommandName= "AddOK"  ... />
```

</td><td>

Is replaced by the state.bind attribute, which binds the button to the specified action defined in a graph.```
<qp-button id="buttonAddOK" 
state.bind="AddOK">
</qp-button>
```

</td></tr><tr><td>

DialogResult```
<px:PXButton 
DialogResult= "Cancel"  ... />
```

</td><td>

Is replaced by dialog-result attribute, which specifies the response returned by an action. This attribute is required for the standard buttons of a dialog box.```
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

</td></tr><tr><td>

Enabled```
<px:PXButton 
Enabled= "True"  ... />
```

</td><td>

Is replaced by the enabled attribute, which indicates \(if set to *true*\) that the button is enabled on the UI.```
<qp-button id="buttonAdjustDocAmt">
enabled="true" </qp-button>
```

</td></tr><tr><td>

ID```
<px:PXButton 
ID= "button1"  ... />
```

</td><td>

Is replaced by the id attribute. This is a required attribute.```
<qp-button id="button1">
</qp-button>
```

</td></tr><tr><td>

Text```
<px:PXButton 
Text= "Add More"  ... />
```

</td><td>

Is replaced by the caption attribute, which defines the text that is displayed on the button. The string specified in this attribute is localizable.```
<qp-button id="button1" 
caption="Add More" dialog-result="Add">
</qp-button>
```

</td></tr><tr><td>

Tooltip```
<px:PXToolBarButton ...>
  <Tooltip="Add Related Tables">
</px:PXToolBarButton>
```

</td><td>

Use the tooltip attribute of the qpbutton tag.```
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

</td></tr><tr><td>

Size

</td><td>

Is replaced by the class attribute, which indicates how many columns of width the button should occupy.

</td></tr><tr><td>

Visible```
<px:PXButton 
Visible= "True"  ... />
```

</td><td>

Is replaced by the hidden attribute, which indicates \(if set to *true*\) that the button is not visible on the UI.```
<qp-button id="buttonAdjustDocAmt">
hidden="false" </qp-button>
```

</td></tr></tbody>
</table>

## PXDSCallbackCommand

The following table shows the correspondence between PXDSCallbackCommand and HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

<table id="_47e8f43d-d6a6-4e91-b11c-94e9ddfbbb52"><thead><tr><th>

ASPX

</th><th>

HTML or TypeScript

</th></tr></thead><tbody><tr><td>

PopupCommand

</td><td>

Use the popupCommand property of the actionConfig decorator.```
@actionConfig({ 
  popupCommand: 'Refresh'
})
CreatePrepayment: PXActionState;
```

</td></tr><tr><td>

PopupCommandTarget

</td><td>

Use the target property of the actionConfig decorator.

</td></tr><tr><td>

PopupPanel

</td><td>

Use the popupPanel property in the config attribute of the qp-button tag.

</td></tr></tbody>
</table>

## Obsolete ASPX Controls and Properties

The following table lists obsolete ASPX elements that are related to buttons. You do not need to replace these ASPX elements with any HTML or TypeScript elements.

<table id="_41289709-97c0-49e8-889b-0b2cf1319062"><thead><tr><th>

ASPX Control

</th><th>

Properties

</th></tr></thead><tbody><tr><td>

PXButton

</td><td>

-   CommandSourceID
-   runat
-   SyncVisible

</td></tr><tr><td>

PXDSCallbackCommand

</td><td>

-   CommitChanges
-   DependOnGrid
-   Name
-   PostData
-   StartNewGroup
-   Visible

</td></tr></tbody>
</table>

**Parent topic:**[Button](../DeveloperGuide/UIDevRef_Button_Mapref.md)

