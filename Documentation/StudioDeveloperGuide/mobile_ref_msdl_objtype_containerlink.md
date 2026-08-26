# containerLink {#_cb5f0124-06e7-4255-9638-f0532399b1d1 .concept}

An object that specifies a link to another container on the screen toolbar or on the screen among the fields.

## Attributes { .section}

|Attribute|Description|
|---------|-----------|
|Container|The name that that will serve as the link to the container.|
|Control|The type of control, which is one of the following values:-   *ListItem*: An indicator that the link to the container is displayed among the fields on the screen according to the value defined in the Priority attribute of this object.
-   *Button*: An indicator that the link to the container is displayed in the screen toolbar according to the value defined in the Priority attribute of this object.

|
|Icon|The name of the image that is used to display the link when the Control attribute is set to *Button* and the link is displayed in the action panel in the UI. If this attribute is not specified for a link, the link is displayed in the UI without an icon. See the possible values and the corresponding images for the Icon attribute in [Icons](MOBILE_Ref_Icons.md).|
|Priority|The priority value that defines the position of the link in the enclosing container on the screen.|
|ValueField|The name of the field whose value is used as the link text. The field must be declared in the container.|
|Weight|The value that is used to set the width of the link within the row of the UI element defined by the [layout](mobile_ref_msdl_objtypes_layout.md) object with the Template attribute set to *Inline*. The default value is *1*.|

## Example { .section}

In the following example, a link to a container is added.

```
add containerLink "Details" {
      control = "ListItem"
      formPriority = 51
}
```

**Parent topic:**[Object Types](../StudioDeveloperGuide/MOBILE_Ref_MSDL_ObjTypes.md)

