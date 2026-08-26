# Dialog Box: Opening a Dialog Box {#_a037f34a-6b9f-41ae-8d5e-cbad6bc55fb3 .concept}

You can define an action that opens a dialog box by using the following types of actions:

-   A frontend action whose corresponding button is anywhere on the form
-   A frontend action whose corresponding button is on the table toolbar
-   A backend action mapped in the frontend

A *frontend action* is an action that is defined only in the frontend and does not have a corresponding action in a graph or a graph extension.

**Note:** The Classic UI provides only the ability to trigger a backend action in the frontend. By using the Modern UI, you can define frontend actions that open a dialog box.

## Frontend Action Anywhere on a Form { .section}

To define a fronend action with a button located anywhere on a form, do the following:

1.  In TypeScript, define a PXActionState property for this action.

    The following code shows an example of defining an action in the screen class.

    ```
    export class SO301000 extends PXScreen {
      viewInquiryParams: PXAcionState;
    }
    ```

2.  Add the actionConfig decorator.
3.  In the popupPanel property of the actionConfig decorator, specify the dialog box that his action opens, as shown in the following code.

    ```
    @actionConfig({popupPanel: 'InquiryParams'})
    viewInquiryParams: PXAcionState;
    ```

    If you also need to specify an action that should be executed when the dialog box is closed, use the popupCommand property.


By default, this action is displayed on the More menu. To specify its location, add the qp-button tag for this action in HTML template or use the topBarItems property of the gridConfig decorator. The following code shows an example of the qp-button tag being used to define the action parameters.

```
<qp-button id="edInquiryParameters" caption="Inquiry Parameters" 
  if.bind="viewInquiryParams.visible==true"></qp-button>
```

## Frontend Action on the Table Toolbar { .section}

To define an action that opens a dialog box and whose button is located on the table toolbar, you can use one of the following approaches:

-   Define an action in the view class for the grid and specify the `popupPanel` property in the `actionConfig` decorator.
-   Define an action in the screen class and specify it in the `topBarItems` property of the `gridConfig` decorator. For more details, see [Table Toolbar Button That Opens a Dialog Box](UIDevRef_Grid_Toolbar.md#_b58e4acd-ca7b-40a5-a493-ac7a925eebd8).

## Backend Action Mapped in the Frontend { .section}

To define a backend action that is mapped in the frontend and opens a dialog box, do the following:

1.  In the backend, define an action that opens a dialog box.

    To invoke the dialog box, use the AskExt\(\) method of the view, as shown in the following example.

    ```
    public PXAction<SOOrder> addBlanketLine;
    [PXUIField(DisplayName = "Add Blanket SO Line", 
      MapEnableRights = PXCacheRights.Update, 
      MapViewRights = PXCacheRights.Select, Visible = true)]
    [PXLookupButton()]
    public virtual IEnumerable AddBlanketLine(PXAdapter adapter)
    {
      if (Base.Document.Current != null && BlanketSplits.AskExt() == WebDialogResult.OK)
      {
        ...
      }
    }
    ```

2.  In the backend, define an action that closes the dialog box with the WebDialogResult.OK result, as shown in the following example.

    ```
    public PXAction<SOOrder> addBlanketLineOK;
    [PXUIField(DisplayName = "Add", 
      MapEnableRights = PXCacheRights.Select, 
      MapViewRights = PXCacheRights.Select)]
    [PXLookupButton()]
    public virtual IEnumerable AddBlanketLineOK(PXAdapter adapter)
    {
      BlanketSplits.View.Answer = WebDialogResult.OK;
      return AddBlanketLine(adapter);
    }
    ```

3.  In the frontend, in TypeScript, define the PXActionState properties for the action that opens the dialog box. An example is shown in the following code.

    ```
    export class SOLine extends PXView {
      AddBlanketLine: PXActionState;
    }
      
    export class SO301000_AddBlanketOrderLine {
        AddBlanketLineOK: PXActionState;
    }
    ```

4.  If you need to specify the location of the button that opens the dialog box, in the HTML template, add the qp-button tag for the action or use the topBarItems property of the gridConfig decorator.
5.  In the HTML template, specify the location of the button that closes the dialog box. For more details on actions on the dialog box, see [Dialog Box: Buttons on the Dialog Box](UIDevRef_DialogBox_AddButton.md).

    The following code shows an example of a button being placed in the footer of the dialog box.

    ```
    <footer id="footer-AddBlanketOrderLine">
      <qp-button id="buttonAdd-AddBlanketOrderLine" state.bind="AddBlanketLineOK"></qp-button>
    </footer
    ```


**Parent topic:**[Dialog Box](../DeveloperGuide/UIDevRef_DialogBox_Mapref.md)

