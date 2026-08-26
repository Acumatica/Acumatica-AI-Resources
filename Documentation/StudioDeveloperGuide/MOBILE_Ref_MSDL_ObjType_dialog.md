# dialog {#_e4b968c9-a647-47da-bcee-5bef4789bc29 .concept}

An object that defines the appearance and behavior of a complex dialog box \(smart panel\).

## Attributes { .section}

|Attribute|Description|
|---------|-----------|
|CloseButtonDialogResult|The dialog result for the `Close` action. The possible values of the property correspond to the elements of the [WebDialogResult](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=85082ebd-9eeb-5668-7339-66127e6f41bd) enumeration.For more details, see [Configuring the Close Button of a Smart Panel](mobile_msdl_screen_closeButton.md).

|
|OpenAs|The display type of the dialog box. When the dialog box is opened, this attribute specifies how to open the primary container. The value can be one of the following:-   *List* \(default\): The smart panel opens as a list.
-   *Form*: The smart panel opens as a form.

|
|Type|The type of the smart panel, which is one of the following values:-   *SimpleScreen*: The smart panel is a common screen.
-   *FilterListScreen*: The smart panel corresponds to the Acumatica ERP form based on the FormDetail form template. Such a smart panel must include two containers: The first container maps the form area of the smart panel \(filter\), and the second one maps the grid.

|

## Allowed Parent and Child Objects { .section}

The dialog object can be present inside the [screen](mobile_ref_msdl_objtypes_screen.md) object.

The dialog object can contain the following objects:

-   [container](mobile_ref_msdl_objtype_container.md)
-   [dialogAction](MOBILE_Ref_MSDL_ObjTypes_action.md)

## Example { .section}

In the following example, a smart panel is implemented.

```
add dialog SO301000D1 {
  type = SimpleScreen
  openAs = Form
  add dialogAction "Ok" {
    DisplayName = "Add & Close"
    DialogResult = "Ok"
    CloseDialog = true
  }
  add container "InventoryLookupInventory"
  {
    add field "Inventory"
    add field "BarCode"
    add field "SiteID"
  }
}
```

**Parent topic:**[Object Types](../StudioDeveloperGuide/MOBILE_Ref_MSDL_ObjTypes.md)

