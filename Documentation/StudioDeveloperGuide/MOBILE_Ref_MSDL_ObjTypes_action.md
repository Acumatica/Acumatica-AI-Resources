# dialogAction {#_da2f2eac-f184-4bc1-9277-6daea1d737b4 .concept}

An object that defines the appearance and behavior of an action that is related to a complex dialog box \(smart panel\). This type of action is displayed only inside a smart panel.

**Note:** The action element may not be present in the WSDL schema of a form.

## Attributes { .section}

|Attribute|Description|
|---------|-----------|
|dialogResult|The type of the action. The attribute value should be the same as the type of the action on the smart panel being mapped. For details, see [WebDialogResult Enumeration](https://help-2020r1.acumatica.com/(W(42))/Help?ScreenId=ShowWiki&pageid=d2957df1-42f9-e6ad-4328-442c0cf756eb). The attribute can have one of the following values:-   *OK*
-   *Abort*
-   *Cancel*
-   *Ignore*
-   *No*
-   *None*
-   *Retry*

|
|DisplayName|The name of the action in the UI.|
|CloseDialog|An indicator of whether the app should close the smart panel after the action has been invoked.|

## Allowed Parent and Child Objects { .section}

The dialogAction object can be present inside the [dialog](MOBILE_Ref_MSDL_ObjType_dialog.md) object.

The dialogAction object cannot contain any objects.

## Example { .section}

In the following example, an action is implemented that saves data entered on the screen and closes the smart panel.

```
add dialogAction "DialogOK" { 
    DisplayName = "Save&Close"
    DialogResult = OK
    CloseDialog = true
}
```

**Parent topic:**[Object Types](../StudioDeveloperGuide/MOBILE_Ref_MSDL_ObjTypes.md)

