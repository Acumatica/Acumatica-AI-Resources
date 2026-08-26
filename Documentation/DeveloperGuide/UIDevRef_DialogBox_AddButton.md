# Dialog Box: Buttons on the Dialog Box {#_144ee500-3522-4302-bfad-b1bd0f9ece0d .concept}

You can add two types of button to a dialog box:

-   A standard button, such as **OK** or **Cancel**
-   A button whose action is defined in the backend

## Processing a Dialog Box Action { .section}

In a dialog box, a button's logic can be determined in one of the following ways:

-   By binding the button to a graph action
-   By specifying the value of the dialog-result attribute
-   By combining the ways listed above

This section describes the differences between these three approaches.

An action in a dialog box is processed as follows: Suppose that a user invokes an action, `OpenDialog`, that opens a dialog box. In the backend, in the `OpenDialog` action body, the dialog box is opened. In the UI, a user sees the dialog box and clicks one of the buttons in it. Then the system acts as follows, based on the action bound to the clicked button and the specified dialog-result value:

-   By default, the frontend invokes the same action that opened the dialog box \(in this case, `OpenDialog`\).
-   If no action is bound and a dialog-result is specified, the frontend invokes the action that opened the dialog \(in this case, `OpenDialog`\) with the specified dialog-result value. You can process the returned dialog-result value in the action body in the graph.
-   If some action is bound to the clicked button and no dialog-result value is specified, the system invokes this action.
-   If both the dialog-result value is specified and an action is bound to the button, both the `OpenDialog` action and the bound action will be executed on the server when this button is clicked. The bound action will be executed first. If no exceptions are thrown, the `OpenDialog` action with the specified `dialog-result` value will also be executed in the same server round trip. The following code shows examples of this type of buttons.

    **Important:** The functionality described in this list item is not widely used in Acumatica ERP. We recommend that you not use this approach to execute both actions simultaneously. But if your legacy code uses this approach, you can migrate the code to the Modern UI without server-side modifications.

    ```
    <qp-panel ...>
      ...
      <footer>
        <qp-button id="CreatePaymentRefundButton" 
           state.bind="CreatePaymentRefund" dialog-result="Abort">
        </qp-button>
        <qp-button id="CreatePaymentCaptureButton" 
           state.bind="CreatePaymentCapture" dialog-result="Yes">
        </qp-button>
        <qp-button id="CreatePaymentAuthorizeButton" 
           state.bind="CreatePaymentAuthorize" dialog-result="No">
        </qp-button>
        <qp-button id="CreatePaymentOKButton" 
           state.bind="CreatePaymentOK" dialog-result="OK">
        </qp-button>
        <qp-button id="CreatePaymentCancelButton" 
           state.bind="CreatePaymentCancel" dialog-result="Cancel">
        </qp-button>
      </footer>
    </qp-panel>
    ```


Thus, we recommend only the following approaches for actions in the dialog box:

-   Specify the dialog-result value, and in the graph, process it in the body of the action that opens the dialog box.
-   Bind the action to the button of the dialog box by specifying the action in the state.bind attribute

**Note:** If the dialog-result attribute is specified for a button, clicking this button will always close the dialog box. If you have not specified the dialog-result attribute for a button, clicking this button will never close the dialog box.

## Adding a Button with dialog-result { .section}

To add a button with the dialog-result value, in the HTML template, add the qp-button tag in the footer tag of the qp-panel tag and specify the following attributes:

-   id
-   dialog-result
-   caption

    If you do not specify the caption attribute, the button's caption will be set to the value of the dialog-result attribute, and the caption will be localizable by general rules. You can override the default caption by specifying the caption attribute. You can omit the caption attribute if its value is the same as the value of the dialog-result attribute.


Suppose that an action that opens a dialog box is defined in a graph as shown in the following code. You process the dialog-result value in the body of the action that invoked the dialog box.

```
public PXAction<ARInvoice> selectARTran;
[PXUIField(DisplayName = "Add Return Line", 
  MapEnableRights = PXCacheRights.Insert, MapViewRights = PXCacheRights.Select)]
[PXLookupButton]
public virtual IEnumerable SelectARTran(PXAdapter adapter)
{
  if (Base.Document.Cache.AllowInsert)
  {
    WebDialogResult result = arTranList.AskExt();
    if (result == WebDialogResult.OK)
      AddARTran(adapter);
  }
  return adapter.Get();
}
```

The following code shows an example of the **Add &amp; Close** and **Cancel** buttons being added to this dialog box.

```
<qp-panel>
  <footer id="footer-AddReturnLine">
    <qp-button id="buttonAddClose-AddReturnLine" dialog-result="OK" 
               caption="Add & Close"></qp-button>
    <qp-button id="buttonCancel-AddReturnLine" dialog-result="Cancel"></qp-button>
  </footer>
</qp-panel>
```

## Adding a Button with a Bound Action { .section}

Suppose that an action that opens a dialog box is defined in a graph as shown in the following code.

```
public PXAction<Document> addARTran;
[PXButton(DisplayOnMainToolbar = false), PXUIField(DisplayName = "Add Return Line")]
protected virtual IEnumerable AddARTran(PXAdapter adapter)
{
    // do some work
}
```

To add a button whose action is defined in backend, do the following:

1.  In TypeScript, in the screen class, add a member of the PXActionState type with the same name as the PXAction property in the graph.

    The following code shows an example of adding the `AddARTran` action.

    ```
    export class SO303000_AddReturnLine {
      AddARTran: PXActionState;
      ...
    }
    ```

2.  In the HTML template, add the qp-button tag in the qp-panel tag. You can place the tag either among the controls of the dialog box or in the footer. In the qp-button tag, specify the following attributes:

    -   id
    -   state

        In this attribute, specify the name of the action added in the screen class.

    The following code shows an example of the `AddARTran` action being added in HTML.

    ```
    <qp-panel>
      <footer>
        <qp-button id="buttonAdd-AddReturnLine" state.bind="AddARTran"></qp-button>
      </footer>
    </qp-panel>
    ```


**Important:** If you define an action in the screen class in TypeScript, the action is hidden from the More menu and the form toolbar. That is, this approach cancels the default display behavior of the button and hands over the ability to manage this behavior to the developer. As a result, you can specify the location of the button anywhere on the form, such as in the Summary area of a dialog box or in the footer. If you do not add the qp-button tag in HTML, the button for the action will not be displayed anywhere on the form.

## Specifying the Response Returned by the Close Button { .section}

For a dialog box, you can specify the response returned by the Close button \(which is located at the top right corner of the dialog box\). To do this, in the qp-panel tag, specify the close-button-dialog-result attribute, as shown in the following code.

```
<qp-panel id="rollsettings" caption="BOM Cost Settings" 
  auto-repaint="true" 
  close-button-dialog-result="Abort">
```

You can process the response the same way as you processed the dialog-result value in the body of the action that opened the dialog box.

**Parent topic:**[Dialog Box](../DeveloperGuide/UIDevRef_DialogBox_Mapref.md)

