# &lt;sm:ContainerLink&gt;

The sm:ContainerLink tag has the following attributes.

<table id="_5168d669-1fa8-4e02-9752-7740a4261a27"><thead><tr><th>

Attribute

</th><th>

Description

</th></tr></thead><tbody><tr><td>

Container

</td><td>

The name that is the link to the container. The name is specified in the Name attribute of the sm:Container tag for the container.

</td></tr><tr><td>

Control

</td><td>

The type of control, which is one of the following values:-   *ListItem*: An indicator that the link to the container is displayed among the form fields according to the value defined in the Priority attribute of this tag.
-   *Button*: An indicator that the link to the container is displayed in the action panel according to the value defined in the Priority attribute of this tag.

</td></tr><tr><td>

Icon

</td><td>

The name of the image that is used to display the link when the Control attribute is set to *Button* and the link is displayed in the action panel in the UI. This attribute is optional. If this attribute is not specified for a link, it is displayed in the UI without an icon. See the possible values and the corresponding images for the Icon attribute in [Icons](MOBILE_Ref_Icons.md).

</td></tr><tr><td>

Name

</td><td>

The identifier of the link to the container, as found in the WSDL schema.

</td></tr><tr><td>

Priority

</td><td>

The priority value that defines the position of the link in the enclosing container on the form.

</td></tr><tr><td>

ValueField

</td><td>

The name of the field whose value is used as the link text. The field must be declared in the container.

</td></tr><tr><td>

Weight

</td><td>

The value that is used to set the width of the link within the UI element line defined by the [&lt;sm:Layout&gt;](MOBILE_sm_Layout.md) tag with the Template attribute set to *Inline*. The default value is *1*.

</td></tr></tbody>
</table>

**Parent topic:**[XML Tags](../StudioDeveloperGuide/MOBILE_Ref_Tags.md)

