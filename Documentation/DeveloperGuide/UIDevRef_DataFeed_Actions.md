# Data Feed: Configuration of Toolbar Buttons {#_20b920d9-8691-40b9-83d1-bbde20c66276 .concept}

By default, the toolbar of the data feed control contains standard table buttons that let users filter and sort records. To define a toolbar, you use the toolbar tag inside the qp-data-feed tag.

You can add buttons that correspond to actions implemented in a graph. To add toolbar buttons, you define each button with the action tag inside the toolbar tag.

## Defining a Toolbar Button Without TypeScript {#section_itl_4l3_xgc .section}

To define a button without mapping it in TypeScript, do the following:

1.  In HTML, add the toolbar tag in the qp-data-feed control.

    ``` {#codeblock_rfb_zl3_xgc}
    <qp-data-feed ...>
      <toolbar>
      </toolbar>
    </qp-data-feed>
    ```

2.  In the toolbar tag, add the action tag. In the action tag, specify the action’s name in the name property.

    The value of the name property must be identical to the name of the action in the graph.

    ``` {#codeblock_sfb_zl3_xgc}
    <toolbar>
      <action name="NewTask"></action>
      <action name="NewEvent"></action>
      <action name="NewMailActivity"></action>
      <action name="NewActivity"></action>
    </toolbar>
    
    ```


## Defining a Toolbar Button with TypeScript {#section_cbc_ql3_xgc .section}

To define a button by mapping it in TypeScript, do the following:

1.  In TypeScript, in the view class for the data feed control, map the action implemented in the graph.

    ``` {#codeblock_gfc_jl3_xgc}
    @gridConfig({ ... })
    export class CRActivity extends PXView {
    	NewTask: PXActionState;
    	NewEvent: PXActionState;
    	NewMailActivity: PXActionState;
    	NewActivity: PXActionState;
    	...
    }
    ```

    Here you can also configure the action with the actionConfig decorator.

2.  In HTML, in the qp-data-feed control, add the toolbar tag.

    ``` {#codeblock_hfc_jl3_xgc}
    <qp-data-feed ...>
      <toolbar>
      </toolbar>
    </qp-data-feed>
    ```

3.  In the toolbar tag, add the action tag. Then in the action tag, specify the name of the action in the state property.

    The value of the name property must be identical to the name of the action in TypeScript.

    ``` {#codeblock_ifc_jl3_xgc}
    <toolbar>
      <action state="NewTask"></action>
      <action state="NewEvent"></action>
      <action state="NewMailActivity"></action>
      <action state="NewActivity"></action>
    </toolbar>
    
    ```

    You can specify an icon for an action or configure it in more detail by using the config property of the qp-data-feed control and the properties of the following interfaces:

    -   IToolBarMenuButton: For a regular menu button
    -   IToolBarMenuOptions: For a button that opens a menu
    -   IToolBarMenuPopupButton: For a button that opens a dialog box

## Configuring a Button {#section_cfv_rl3_xgc .section}

You can further configuring a button in the action tag by using the properties in the following table.

|Property|Example|Description|
|--------|-------|-----------|
|index|``` {#codeblock_m41_f43_xgc}
<action state="NewTask" 
  index="-80">
```

|Specifies the button’s position on the toolbar.|
|text|``` {#codeblock_ucf_h43_xgc}
<action state="NewTask" 
  text="New Task">
```

|Specifies the display name of the action.|
|tooltip|``` {#codeblock_qxg_h43_xgc}
<action state="NewTask" 
  tooltip="Creates a new task">
```

|Specifies the button’s tooltip text.|
|icon|``` {#codeblock_s33_h43_xgc}
<action state="NewTask" 
  icon="svg:main@plus">
```

|Specifies the icon.|
|isSystem|``` {#codeblock_ppk_h43_xgc}
<action state="NewTask" 
  isSystem="true">
```

|Overrides the isSystem property of the action.|

**Parent topic:**[Data Feed](../DeveloperGuide/UIDevRef_DataFeed_Mapref.md)

