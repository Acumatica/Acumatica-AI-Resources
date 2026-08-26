# Configuring the Close Button of a Smart Panel {#_82af1b26-b033-4e78-9fda-e2bdeea62b0f .concept}

A mobile screen that corresponds to a smart panel in the browser version of Acumatica ERP can have the Close button. This button corresponds to the X button on a screen toolbar on Android devices and to the Back \(**&lt;**\) button on iOS devices. By default, the button opens the previous container and does not have a callback to the server.

You can configure the Close button to have a callback to the server by specifying the dialog result for the button. You can do this in one of the following ways:

-   Specify the dialog result in the CloseButtonDialogResult attribute of the dialog object
-   Define the `Close` action in detail by using the CloseButtonDialogAction property of the dialog object

**Note:** For each button, you can use only one of these approaches.

## Specifying the Dialog Result in the CloseButtonDialogResult Attribute { .section}

You can specify the dialog result for a button in the CloseButtonDialogResult attribute of the [dialog](MOBILE_Ref_MSDL_ObjType_dialog.md) object. The possible values of the attribute correspond to the elements of the [WebDialogResult](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=85082ebd-9eeb-5668-7339-66127e6f41bd) enumeration. The following code shows an example of the dialog result value being specified for the `Close` action.

```
update screen SO301000 {
  add dialog "AddLine" {
    CloseButtonDialogResult = "No"
    ...
  }
}
```

## Defining the Close Action { .section}

You can define the `Close` action by doing the following:

1.  In the [dialog](MOBILE_Ref_MSDL_ObjType_dialog.md) object, define the action by adding the [dialogAction](MOBILE_Ref_MSDL_ObjTypes_action.md) object.
2.  In the [dialogAction](MOBILE_Ref_MSDL_ObjTypes_action.md) object, specify the dialog result in the dialogResult property.

    **Tip:** In the dialogAction object, you don't need to specify the CloseDialog property because the button closes the screen by default.

3.  In the dialog object, specify the name of the action in the CloseButtonDialogAction property.

The following code shows an example of the `Close` action being defined in a dialog box.

```
update screen SO301000 {
  ...
  update dialog "AddLine" {
    CloseButtonDialogAction = "NoAction"
    update dialogAction "NoAction" {
      dialogResult = "No"
    }
  }
}
```

**Parent topic:**[Dialog Boxes and Smart Panels](../StudioDeveloperGuide/MOBILE_MSDL_Screen_DialogBoxes_SmartPanels.md)

