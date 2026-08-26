# &lt;sm:ContainerLink&gt; {#_baf57a09-5bc3-424e-ae6b-fd2f9cde2c81 .concept}

The sm:ContainerLink tag has the following attributes.

|Attribute|Description|
|---------|-----------|
|Container|The name that is the link to the container. The name is specified in the Name attribute of the sm:Container tag for the container.|
|Control|The type of control, which is one of the following values:-   *ListItem*: An indicator that the link to the container is displayed among the form fields according to the value defined in the Priority attribute of this tag.
-   *Button*: An indicator that the link to the container is displayed in the action panel according to the value defined in the Priority attribute of this tag.

|
|Icon|The name of the image that is used to display the link when the Control attribute is set to *Button* and the link is displayed in the action panel in the UI. This attribute is optional. If this attribute is not specified for a link, it is displayed in the UI without an icon. See the possible values and the corresponding images for the Icon attribute in [Icons](MOBILE_Ref_Icons.md).|
|Name|The identifier of the link to the container, as found in the WSDL schema.|
|Priority|The priority value that defines the position of the link in the enclosing container on the form.|
|ValueField|The name of the field whose value is used as the link text. The field must be declared in the container.|
|Weight|The value that is used to set the width of the link within the UI element line defined by the [&lt;sm:Layout&gt;](MOBILE_sm_Layout.md) tag with the Template attribute set to *Inline*. The default value is *1*.|

**Parent topic:**[XML Tags](../StudioDeveloperGuide/MOBILE_Ref_Tags.md)

