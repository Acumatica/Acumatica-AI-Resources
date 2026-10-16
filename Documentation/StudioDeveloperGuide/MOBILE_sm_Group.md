# &lt;sm:Group&gt;

The sm:Group tag is used to group multiple UI elements on a screen of the mobile app. The tag can contain the following types of nested tags:

-   [&lt;sm:Field&gt;](MOBILE_sm_Field.md)
-   [&lt;sm:Layout&gt;](MOBILE_sm_Layout.md)
-   [&lt;sm:Attributes&gt;](MOBILE_sm_Attributes.md)
-   [&lt;sm:RecordActionLink&gt;](MOBILE_sm_RecordActionLink.md)

For details about the relationships between tag types in the mobile site map, see the diagram in [XML Tags](MOBILE_Ref_Tags.md).

## Attributes

The sm:Group tag has the following attributes.

<table id="_7e5df0e6-6898-4d22-b9af-ed63c98d11ae"><thead><tr><th>

Attribute

</th><th>

Description

</th></tr></thead><tbody><tr><td>

Collapsable

</td><td>

An indicator of whether this group may be collapsed or expanded. If its value is *true*, the group can be collapsed or expanded, and you can specify whether the group is collapsed when the screen is opened by using the Collapsed attribute. If the value is *false*, the group is expanded and cannot be collapsed.

 If the Template attribute is set to *ExpansionPanel*, the value of the attribute is ignored. Expansion panels are always collapsible.

</td></tr><tr><td>

Collapsed

</td><td>

An indicator of whether this group is collapsed by default. If its value is *true*, the group is collapsed when the screen is opened. If the value is *false*, the group is expanded when the screen is opened.

 If Template=Group \(or the Template attribute is not set\) and Collapsable=false, the value of the attribute is ignored.

 For expansion panels \(Template=ExpansionPanel\) and collapsible groups \(Template=Group and Collapsable=true\), if the value of the attribute is not specified, the group is collapsed when the screen is opened.

</td></tr><tr><td>

DisplayName

</td><td>

The name of the group in the UI.

 If the Template attribute is set to *ExpansionPanel*, the value of the attribute is ignored. An expansion panel does not have the name of the group in the UI.

</td></tr><tr><td>

Field

</td><td>

Obsolete. The name of the field whose value is displayed when the group is collapsed.

 The value of this field is ignored. Expansion panels \(Template=ExpansionPanel\) always display the first field \(sm:field\) or layout definition \(sm:layout\) in the group. Other groups \(Template=Group\) do not display any fields when the group is collapsed.

</td></tr><tr><td>

FormPriority

</td><td>

The priority value that defines the position of the group on the screen.

</td></tr><tr><td>

Name

</td><td>

The name of the group. The attribute is optional; however, we recommend that you specify its value because the value is used as the identifier of the group and the system tracks changes in the mobile site map by using the value of this attribute.

</td></tr><tr><td>

Template

</td><td>

The template that is used for the group. The following values can be used for this attribute:

 -   *ExpansionPanel*: An expansion panel, which can be collapsed or expanded. The collapsed expansion panel displays only the first field \(sm:field\) or layout definition \(sm:layout\) in the group. Expansion panels does not have the name of the group in the UI. You can configure how the expansion panel is displayed by using the Collapsed and FormPriority attributes of the tag.
-   *Group*: A group of UI elements. You can configure how the group is displayed by using the DisplayName, Collapsable, Collapsed, and FormPriority attributes of the tag.

 If the value of the attribute is not specified, the *Group* template is used.

</td></tr></tbody>
</table>

**Parent topic:**[XML Tags](../StudioDeveloperGuide/MOBILE_Ref_Tags.md)

