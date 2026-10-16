# containerLink

An object that specifies a link to another container on the screen toolbar or on the screen among the fields.

## Attributes

<table id="_5168d669-1fa8-4e02-9752-7740a4261a27"><thead><tr><th>

Attribute

</th><th>

Description

</th></tr></thead><tbody><tr><td>

Container

</td><td>

The name that that will serve as the link to the container.

</td></tr><tr><td>

Control

</td><td>

The type of control, which is one of the following values:-   *ListItem*: An indicator that the link to the container is displayed among the fields on the screen according to the value defined in the Priority attribute of this object.
-   *Button*: An indicator that the link to the container is displayed in the screen toolbar according to the value defined in the Priority attribute of this object.

</td></tr><tr><td>

Icon

</td><td>

The name of the image that is used to display the link in the UI. If this attribute is not specified for a link, the link is displayed in the UI without an icon. See the possible values and the corresponding images for the Icon attribute in [Icons](MOBILE_Ref_Icons.md).

 **Attention:** The Icon attribute affects containerLink objects placed directly on a screen. It has no effect on containerLink objects placed inside DataTab layouts, which correspond to tabs.

</td></tr><tr><td>

Style

</td><td>

The style that defines the color of the icon displayed for the link. You can use two sets of named colors to style an icon.

 For the standard color set, use one of the following values:

 -   *iconcolor-blue*
-   *iconcolor-indigo*
-   *iconcolor-purple*
-   *iconcolor-pink*
-   *iconcolor-red*
-   *iconcolor-orange*
-   *iconcolor-yellow*
-   *iconcolor-green*
-   *iconcolor-teal*
-   *iconcolor-gray*
-   *iconcolor-graydark*
-   *iconcolor-info*
-   *iconcolor-warning*

 For the status color set, use one of the following values:

 -   *iconcolor-status-blue*
-   *iconcolor-status-purple*
-   *iconcolor-status-red*
-   *iconcolor-status-orange*
-   *iconcolor-status-green*
-   *iconcolor-status-gray*

 You can also specify a custom color by using a hex color value with the standard *iconcolor-\** style, such as `iconcolor-#CCE5F5`. Custom hex colors are not supported for the *iconcolor-status-\** style.

</td></tr><tr><td>

Priority

</td><td>

The priority value that defines the position of the link in the enclosing container on the screen.

</td></tr><tr><td>

ValueField

</td><td>

The name of the field whose value is used as the link text. The field must be declared in the container.

</td></tr><tr><td>

Weight

</td><td>

The value that is used to set the width of the link within the row of the UI element defined by the [layout](mobile_ref_msdl_objtypes_layout.md) object with the Template attribute set to *Inline*. The default value is *1*.

</td></tr></tbody>
</table>

## Example

In the following example, a link to a container is added with an icon and an icon color.

```
add containerLink "Details" {
  control = "ListItem"
  formPriority = 51
  icon = "system://tools_power_drill"
  style = "iconcolor-blue"
}
```

**Parent topic:**[Object Types](../StudioDeveloperGuide/MOBILE_Ref_MSDL_ObjTypes.md)

