# &lt;sm:Folder&gt;

The sm:Folder tag has the following attributes.

<table id="_7383dcea-cc65-4d7d-9dfa-1fcbcbcbc301"><thead><tr><th>

Attribute

</th><th>

Description

</th></tr></thead><tbody><tr><td>

DisplayName

</td><td>

The name of the folder in the UI.

</td></tr><tr><td>

Icon

</td><td>

The name of an image that is used to display the folder icon on the main menu \(and on the sidebar menu, if specified\) of a mobile application. This attribute is optional; if this attribute is not specified for a folder, the folder is displayed in the UI without an icon. See the possible values and the corresponding images for the Icon attribute in [Icons](MOBILE_Ref_Icons.md).

</td></tr><tr><td>

IsDefaultFavorite

</td><td>

An indicator of whether a link for the folder is added to the sidebar menu as a favorite folder. If the attribute is set to *true*, a link is added to the sidebar menu. By default, this attribute is set to *false*.

</td></tr><tr><td>

Name

</td><td>

The identifier of the folder, as found in the WSDL schema.

</td></tr><tr><td>

Type

</td><td>

The type of the folder \(that is, the way it is displayed and used\), which is one of the following values:-   *ListFolder*: An indicator that the folder contents are displayed as icons.
-   *HubFolder*: An indicator that the folder contents are displayed as pages that the user navigates by swiping.

</td></tr></tbody>
</table>

**Parent topic:**[XML Tags](../StudioDeveloperGuide/MOBILE_Ref_Tags.md)

