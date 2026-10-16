# recordActionLink

An object that you can use to remove an action from the screen toolbar and put the action among the [field](mobile_ref_msdl_objtypes_field.md) objects on an editing screen. The action to which this object refers must be declared with the same name within the same container by using any action object \(for details, see [Object Types](MOBILE_Ref_MSDL_ObjTypes.md)\).

## Attributes

<table id="_a2acc45f-e4d6-4586-9621-d428f8e0376e"><thead><tr><th>

Attribute

</th><th>

Description

</th></tr></thead><tbody><tr><td>

style

</td><td>

The style of the action in the UI. You can specify one or more values separated by spaces.

 When you specify the alignment, the value can be one of the following:

 -   *column-left* \(default\): The action is aligned to the left side of its container.
-   *column-right*: The action is aligned to the right side of its container.

 When you specify how an action should be displayed in the UI, the value can be one of the following:

 -   *text*: Displays the action as text only without an icon
-   *icon*: Displays the action as an icon only without any accompanying text
-   *text-icon*: Displays the action with both an icon and text
-   *as-containerLink*: Displays the action as a container link

 You can also use *background-none*, which removes the background from the button that represents the action. You can use this value in combination with *text*, *icon*, or *text-icon*.

 For recordActionLink objects that are displayed as a container link, you can define the icon color by specifying an icon color style. For details about the values of this style, see [containerLink](mobile_ref_msdl_objtype_containerlink.md).

 You can use these values with recordActionLink objects inside or outside the scope of the *ListView* template.

 **Attention:** The style property can also be used with [field](mobile_ref_msdl_objtypes_field.md) objects, but field objects support a different set of values. For field objects, the supported style values work only within the scope of the *ListView* template. For details, see [Customizing the Design and Layout for a List of Records](Mobile_msdl_screen_customize_ListViewTemplate.md).

</td></tr><tr><td>

weight

</td><td>

The value that is used to set the width of the link within the UI element line defined by the [layout](mobile_ref_msdl_objtypes_layout.md) object with the layout attribute set to *Inline*. The default value is *1*.

</td></tr></tbody>
</table>

## Examples

In the following example, a container with an action and corresponding action link is added.

```
add container "SampleContainer" {
  add recordActionLink "ViewOnMap"
  add recordAction "ViewOnMap" {
    behavior = Void
    redirect = True
  }
}
```

In the following example, the action link is displayed as a container link with a blue icon.

```
add container "SampleContainer" {
  add recordActionLink "ViewOnMap" {
    style = "as-containerLink iconcolor-blue"
  }
  add recordAction "ViewOnMap" {
    behavior = Void
    redirect = True
  }
}
```

**Parent topic:**[Object Types](../StudioDeveloperGuide/MOBILE_Ref_MSDL_ObjTypes.md)

