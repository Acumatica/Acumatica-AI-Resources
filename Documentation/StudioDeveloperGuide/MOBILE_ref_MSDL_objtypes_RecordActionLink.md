# recordActionLink {#_f7f0993f-e348-4ce3-821a-7a4f950a8ff2 .concept}

An object that you can use to remove an action from the screen toolbar and put the action among the [field](mobile_ref_msdl_objtypes_field.md) objects on an editing screen. The action to which this object refers must be declared with the same name within the same container by using any action object \(for details, see [Object Types](MOBILE_Ref_MSDL_ObjTypes.md)\).

## Attributes { .section}

|Attribute|Description|
|---------|-----------|
|style|The alignment of the action in the UI—as well as how an action is displayed in the UI and whether its button has a background.When you’re specifying the alignment, the value can be one of the following:

-   *column-left* \(default\): The action is aligned to the left side of its container.
-   *column-right*: The action is aligned to the right side of its container.

When you’re specifying how an action should be displayed in the UI, the value can be one of the following:

-   *text*: Displays the action as text only without an icon
-   *icon*: Displays the action as an icon only without any accompanying text
-   *text-icon*: Displays the action with both an icon and text

You can also use *background-none*, which removes the background from the button that represents the action. You can use this value in combination with *text*, *icon*, or *text-icon*.

**Attention:** The options of the style property work only when they’re defined within the scope of the *ListView* template \(that is, the layout property of a [layout](mobile_ref_msdl_objtypes_layout.md) object is set to *ListView\)*; they are ignored outside of this scope. This property can also be used with [field](mobile_ref_msdl_objtypes_field.md) objects in the same scope but with a different set of values. For details, see [Customizing the Design and Layout for a List of Records](Mobile_msdl_screen_customize_ListViewTemplate.md).

|
|weight|The value that is used to set the width of the link within the UI element line defined by the [layout](mobile_ref_msdl_objtypes_layout.md) object with the layout attribute set to *Inline*. The default value is *1*.|

## Example { .section}

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

**Parent topic:**[Object Types](../StudioDeveloperGuide/MOBILE_Ref_MSDL_ObjTypes.md)

