# &lt;sm:Screen&gt;

The sm:Screen tag has the following attributes.

<table id="_8abe5366-d17f-4693-bb82-fa1277b19019"><thead><tr><th>

Attribute

</th><th>

Description

</th></tr></thead><tbody><tr><td>

DisplayName

</td><td>

The name of the screen on the UI.

</td></tr><tr><td>

ExpandSelector

</td><td>

The name of a selector field from the primary container. An Acumatica ERP form can contain a selector control that acts like a filter. For example, the **Order Type** selector control on the Sales Orders form \(SO301000\) works as a filter. If the ExpandSelector attribute is specified for a screen, then the mobile application represents the screen as multiple screens, where each screen corresponds to a single value of the referenced selector field.

</td></tr><tr><td>

Icon

</td><td>

The name of an image that is used to display the screen icon on the main menu \(and on the sidebar menu, if specified\) of a mobile application. This attribute is optional. If this attribute is not specified for a screen, the screen is displayed in the UI without an icon. See the possible values and the corresponding images for the Icon attribute in [Icons](MOBILE_Ref_Icons.md).

</td></tr><tr><td>

Id

</td><td>

The screen identifier, such as *IN201000*. You can find the value to specify there in the screen URL of the corresponding Acumatica ERP form.

</td></tr><tr><td>

OpenAs

</td><td>

The display type of the screen. When the screen is opened from a menu, this attribute specifies how to open the primary container. Otherwise, when the screen is opened by a redirection from an action and the RedirectToContainer attribute of this action does not explicitly specify how to open the container, then this attribute specifies how to open the redirected container of the screen. The value can be one of the following:-   *List*: An indicator that the screen opens as a list.
-   *Form*: An indicator that the screen opens as a form.

</td></tr><tr><td>

Type

</td><td>

The type of the screen, which is one of the following values:-   *SimpleScreen*: An indicator that the screen is a common screen.
-   *FilterListScreen*: An indicator that the screen corresponds to the Acumatica ERP form based on the FormDetail form template. Such a screen should include at least two containers. The first container maps the form area of the form \(filter\), and the second one maps the grid.
-   *Report*: An indicator that the screen is an Acumatica Report Designer report.
-   *Dashboard*: An indicator that the screen is a dashboard. A screen of this type can display the following types of dashboard widgets:

    -   Chart
    -   Data Table
    -   Score Card
    -   Trend Card
Other widget types will be hidden.


</td></tr><tr><td>

Visible

</td><td>

An indicator of the visibility of the screen in the Home screen. If the value of this attribute is *true*, the screen is visible on the main menu. By default, the value is *true*.

</td></tr></tbody>
</table>

**Parent topic:**[XML Tags](../StudioDeveloperGuide/MOBILE_Ref_Tags.md)

